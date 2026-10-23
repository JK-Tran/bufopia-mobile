import 'dart:async';
import 'dart:math' as math;

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_dotted.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/usecases/get_cached_user_use_case.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/word_chain/data/datasources/word_chain_data_source.dart';
import 'package:bufopia/features/word_chain/data/models/word_chain_social_models.dart';
import 'package:bufopia/features/word_guess/data/models/game_state_data.dart';
import 'package:bufopia/features/word_guess/data/models/room_player_data.dart';
import 'package:bufopia/features/word_guess/domain/usecases/get_guess_room_lookup_use_case.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/room/word_guess_room_create.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/room/word_guess_room_join.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/room/word_guess_room_rivals.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/room/word_guess_room_tabs.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/word_guess_socket_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WordGuessRoomDialog extends StatefulWidget {
  const WordGuessRoomDialog({
    required this.onEnterRoom,
    required this.topicId,
    this.topicTitle = 'Luyện ngẫu nhiên',
    super.key,
  });

  final String topicId;
  final String topicTitle;
  final void Function(String roomCode, int durationSeconds) onEnterRoom;

  static Future<void> show(
    BuildContext context, {
    required String topicId,
    required void Function(String roomCode, int durationSeconds) onEnterRoom,
    String topicTitle = 'Luyện ngẫu nhiên',
  }) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.55),
      builder: (_) => WordGuessRoomDialog(
        topicId: topicId,
        topicTitle: topicTitle,
        onEnterRoom: onEnterRoom,
      ),
    );
  }

  @override
  State<WordGuessRoomDialog> createState() => _WordGuessRoomDialogState();
}

class _WordGuessRoomDialogState extends State<WordGuessRoomDialog> {
  int _currentTabIndex = 0; // 0 = Tạo phòng, 1 = Vào phòng

  // Trạng thái phòng Host
  bool _isRoomCreated = false;
  bool _isConnectingRoom = false;
  late String _generatedRoomCode;
  List<RoomPlayerData> _roomPlayers = [];
  int _selectedDuration = 180; // 180s, 300s, 600s

  final TextEditingController _joinCodeController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isCheckingRoom = false;
  bool _isEnteringRoom = false;

  // Socket & API Social
  late final WordGuessSocketService _socketService;
  StreamSubscription<SocketEvent>? _socketSubscription;

  List<WordChainRival> _rivals = [];
  bool _isLoadingSocial = true;
  Timer? _socialPollingTimer;

  @override
  void initState() {
    super.initState();
    _socketService = sl<WordGuessSocketService>();
    _generatedRoomCode = _generateRandomRoomCode();
    _startSocialPolling();
  }

  @override
  void dispose() {
    _socialPollingTimer?.cancel();
    _socketSubscription?.cancel();
    if (_isRoomCreated && !_isEnteringRoom) {
      _socketService
        ..sendLeave()
        ..disconnect();
    }
    _joinCodeController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  String _generateRandomRoomCode() {
    final random = math.Random();
    return (100000 + random.nextInt(900000)).toString();
  }

  String _getMyUid() {
    final currentUser = context.read<AuthBloc>().state.currentUser;
    final cachedUid = sl<GetCachedUserUseCase>().execute()?.uid;
    final fbUid = sl<FirebaseAuthService>().currentUser?.uid;
    return (currentUser?.uid.isNotEmpty == true)
        ? currentUser!.uid
        : (cachedUid?.isNotEmpty == true)
        ? cachedUid!
        : fbUid ?? 'guest';
  }

  String _getMyName() {
    final currentUser = context.read<AuthBloc>().state.currentUser;
    final cachedUser = sl<GetCachedUserUseCase>().execute();
    final displayName = currentUser?.displayName ?? cachedUser?.displayName;
    return (displayName != null && displayName.isNotEmpty)
        ? displayName
        : context.l10n.you;
  }

  String? _getMyAvatar() {
    return context.read<AuthBloc>().state.currentUser?.avatarUrl;
  }

  // ── 1. API: Danh sách đối thủ gần nhất (/api/social/state) ─────────
  void _startSocialPolling() {
    _socialPollingTimer?.cancel();
    _fetchSocialState();
    _socialPollingTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      _fetchSocialState();
    });
  }

  Future<void> _fetchSocialState() async {
    try {
      final uid = _getMyUid();
      final data = await sl<WordChainDataSource>().getSocialState(
        uid: uid,
        activity: 'guess',
      );
      if (data != null && mounted) {
        final social = WordChainSocialState.fromJson(data);
        setState(() {
          _rivals = social.recent;
          _isLoadingSocial = false;
        });
      } else if (mounted) {
        setState(() => _isLoadingSocial = false);
      }
    } on Object catch (_) {
      if (mounted) {
        setState(() => _isLoadingSocial = false);
      }
    }
  }

  // ── 2. WebSocket: Tạo phòng và đồng bộ thành viên ───────────────────
  Future<void> _handleCreateRoom() async {
    if (_isConnectingRoom || _isRoomCreated) return;

    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    setState(() => _isConnectingRoom = true);

    final uid = _getMyUid();
    final name = _getMyName();
    final avatar = _getMyAvatar();
    final token = await sl<FirebaseAuthService>().getIdToken();

    _subscribeSocketEvents();

    try {
      await _socketService.connectRoom(
        roomCode: _generatedRoomCode,
        uid: uid,
        name: name,
        token: token,
        avatar: avatar,
      );

      _socketService.sendUpdateConfig(
        topicId: widget.topicId,
        durationSeconds: _selectedDuration,
      );

      if (mounted && !_isRoomCreated) {
        setState(() {
          _isConnectingRoom = false;
          _isRoomCreated = true;
          if (_roomPlayers.isEmpty) {
            _roomPlayers = [
              RoomPlayerData(
                uid: uid,
                name: name,
                avatar: avatar,
                isHost: true,
                isReady: true,
              ),
            ];
          }
        });
      }
    } on Object catch (e) {
      if (mounted) {
        setState(() => _isConnectingRoom = false);
        AppToast.showError(
          context,
          context.l10n.connectRoomFailed(e.toString()),
        );
      }
    }
  }

  void _subscribeSocketEvents() {
    _socketSubscription?.cancel();
    _socketSubscription = _socketService.eventStream.listen((event) {
      if (!mounted) return;

      if (event is GuessRoomConnectedEvent) {
        final stateData = GameStateData.fromJson(event.rawState);
        setState(() {
          _isConnectingRoom = false;
          _isRoomCreated = true;
          if (stateData.durationSeconds != null &&
              stateData.durationSeconds! > 0) {
            _selectedDuration = stateData.durationSeconds!;
          }
          if (stateData.players != null && stateData.players!.isNotEmpty) {
            _roomPlayers = stateData.players!;
          }
        });
      } else if (event is GuessRoomStateEvent) {
        final stateData = GameStateData.fromJson(event.rawState);
        setState(() {
          if (stateData.durationSeconds != null &&
              stateData.durationSeconds! > 0) {
            _selectedDuration = stateData.durationSeconds!;
          }
          if (stateData.players != null && stateData.players!.isNotEmpty) {
            _roomPlayers = stateData.players!;
          }
        });

        // Khi Host bấm bắt đầu -> status chuyển sang 'playing'
        // Cả Host và Guest đều nhận được event này và tự động vào trận!
        if (stateData.status == 'starting' ||
            stateData.status == 'playing' ||
            stateData.status == 'active') {
          _isEnteringRoom = true;
          _socketSubscription?.cancel();
          Navigator.of(context).pop();
          widget.onEnterRoom(_generatedRoomCode, _selectedDuration);
        }
      } else if (event is SocketErrorEvent) {
        setState(() => _isConnectingRoom = false);
        AppToast.showError(context, event.message);
      }
    });
  }

  void _handleLeaveRoom() {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    _socketSubscription?.cancel();
    _socketService
      ..sendLeave()
      ..disconnect();

    setState(() {
      _isRoomCreated = false;
      _isConnectingRoom = false;
      _roomPlayers = [];
      _generatedRoomCode = _generateRandomRoomCode();
    });

    AppToast.showWarning(context, context.l10n.leftRoom);
  }

  void _handleStartGame() {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    _isEnteringRoom = true;
    _socketService.sendStartGame();
    _socketSubscription?.cancel();
    Navigator.of(context).pop();
    widget.onEnterRoom(_generatedRoomCode, _selectedDuration);
  }

  void _handleToggleReady() {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    _socketService.sendToggleReady();
  }

  void _onCopyCode() {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    Clipboard.setData(ClipboardData(text: _generatedRoomCode));
    AppToast.showSuccess(
      context,
      context.l10n.copiedRoomCode(_generatedRoomCode),
    );
  }

  void _onCopyLink() {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    final link = 'https://bufopia.pages.dev/?guess_room=$_generatedRoomCode';
    Clipboard.setData(ClipboardData(text: link));
    AppToast.showSuccess(context, context.l10n.copiedInviteLink);
  }

  // ── 3. API: Vào phòng qua Lookup API (/api/guess-room/lookup) ───────
  Future<void> _onJoinRoom() async {
    final raw = _joinCodeController.text.trim();
    if (raw.isEmpty) {
      AppToast.showWarning(
        context,
        context.l10n.pleaseEnterRoomCode,
      );
      return;
    }

    final match = RegExp(r'\d{6}').firstMatch(raw);
    final code = match?.group(0) ?? raw;

    if (code.length < 4) {
      AppToast.showWarning(context, context.l10n.roomCodeMinLength);
      return;
    }

    if (_isCheckingRoom || _isConnectingRoom) return;
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    setState(() => _isCheckingRoom = true);

    try {
      final uid = _getMyUid();
      final name = _getMyName();
      final avatar = _getMyAvatar();
      final token = await sl<FirebaseAuthService>().getIdToken();

      // 1. Kiểm tra phòng tồn tại qua Lookup API
      final lookupOutput = await sl<GetGuessRoomLookupUseCase>().execute(
        GetGuessRoomLookupInput(
          roomCode: code,
          uid: uid,
          token: token,
        ),
      );

      if (!lookupOutput.isJoinable) {
        if (mounted) {
          SoundManager.playWrong();
          setState(() => _isCheckingRoom = false);
          AppToast.showWarning(
            context,
            lookupOutput.reason ?? context.l10n.roomUnavailable,
          );
        }
        return;
      }

      // 2. Kết nối WebSocket vào phòng và hiển thị sảnh phòng chờ (Lobby)
      setState(() {
        _isCheckingRoom = false;
        _isConnectingRoom = true;
        _generatedRoomCode = code;
      });

      _subscribeSocketEvents();

      await _socketService.connectRoom(
        roomCode: code,
        uid: uid,
        name: name,
        token: token,
        avatar: avatar,
      );

      if (mounted) {
        setState(() {
          _isConnectingRoom = false;
          _isRoomCreated = true;
        });
        AppToast.showSuccess(
          context,
          context.l10n.joinRoomSuccess(code),
        );
      }
    } on Object catch (e) {
      if (mounted) {
        SoundManager.playWrong();
        setState(() {
          _isCheckingRoom = false;
          _isConnectingRoom = false;
        });
        AppToast.showError(
          context,
          context.l10n.joinRoomFailed(e.toString()),
        );
      }
    }
  }

  // ── 4. API: Gửi lời mời thi đấu (/api/social/invite) ───────────────
  Future<void> _onInviteRival(WordChainRival rival) async {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());

    if (!_isRoomCreated) {
      await _handleCreateRoom();
    }

    final uid = _getMyUid();
    try {
      final success = await sl<WordChainDataSource>().sendSocialInvite(
        uid: uid,
        targetUid: rival.uid,
        roomCode: _generatedRoomCode,
        activity: 'guess',
      );
      if (mounted) {
        if (success) {
          AppToast.showSuccess(
            context,
            context.l10n.invitedPartner(rival.name),
          );
        } else {
          AppToast.showWarning(
            context,
            context.l10n.inviteCooldownWait,
          );
        }
      }
    } on Object catch (_) {
      if (mounted) {
        AppToast.showSuccess(
          context,
          context.l10n.invitedPartner(rival.name),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final dialogBg = isPaper ? const Color(0xFFFAF6EF) : AppColors.white;
    final dialogBorder = isPaper
        ? const Color(0xFFE2D8C7)
        : AppColors.classicBorder;
    final textColorDark = isPaper
        ? const Color(0xFF3B352B)
        : AppColors.grayDark;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 400.w,
          maxHeight: 580.h,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: dialogBg,
            borderRadius: BorderRadius.circular(22.r),
            border: Border.all(
              color: dialogBorder,
              width: 2.w,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.18),
                blurRadius: 20.r,
                offset: Offset(0, 10.h),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 1. Header Bar: Icon, Tiêu đề, Nút Close tròn đỏ 3D
                Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 14.h, 14.w, 10.h),
                  child: Row(
                    children: [
                      Container(
                        width: 28.r,
                        height: 28.r,
                        decoration: BoxDecoration(
                          color: isPaper
                              ? AppColors.paperGreen.withValues(alpha: 0.12)
                              : AppColors.green.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.mail_outline_rounded,
                            size: 18.r,
                            color: isPaper
                                ? AppColors.paperGreenDark
                                : AppColors.green,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      AppText.t2(
                        context.l10n.wordGuessRoomTitle,
                        fontWeight: FontWeight.w700,
                        color: textColorDark,
                      ),
                      const Spacer(),
                      AppButton.close(
                        size: 30.r,
                        iconSize: 18.r,
                        backgroundColor: const Color(0xFFF9EAE1),
                        borderColor: const Color(0xFFB54D4D),
                        iconColor: const Color(0xFFB54D4D),
                        extrusionColor: const Color(0xFF8E3B3B),
                        onPressed: () {
                          context.read<AppBloc>().add(
                            const AppEvent.clickSoundPlayed(),
                          );
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ),

                // 2. Nội dung tự động co giãn vừa vặn (shrink-wrap)
                Flexible(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 16.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // A. Segmented Tabs trượt 3D (Tạo phòng / Vào phòng)
                        if (!_isRoomCreated) ...[
                          WordGuessRoomTabs(
                            currentTabIndex: _currentTabIndex,
                            onTabChanged: (index) {
                              setState(() => _currentTabIndex = index);
                            },
                          ),
                          SizedBox(height: 12.h),
                        ],

                        // B. Nội dung theo trạng thái
                        if (!_isRoomCreated && _currentTabIndex == 1) ...[
                          WordGuessRoomJoin(
                            controller: _joinCodeController,
                            isChecking: _isCheckingRoom,
                            onJoin: _onJoinRoom,
                          ),
                        ] else ...[
                          WordGuessRoomCreate(
                            topicTitle: widget.topicTitle,
                            selectedDuration: _selectedDuration,
                            onDurationChanged: (duration) {
                              setState(() => _selectedDuration = duration);
                            },
                            isRoomCreated: _isRoomCreated,
                            isConnecting: _isConnectingRoom,
                            roomCode: _generatedRoomCode,
                            roomPlayers: _roomPlayers,
                            myUid: _getMyUid(),
                            onCreateRoom: _handleCreateRoom,
                            onStartGame: _handleStartGame,
                            onToggleReady: _handleToggleReady,
                            onLeaveRoom: _handleLeaveRoom,
                            onCopyCode: _onCopyCode,
                            onCopyLink: _onCopyLink,
                          ),
                        ],

                        SizedBox(height: 16.h),
                        AppDotted(
                          color: isPaper
                              ? const Color(0xFFD6CABA)
                              : AppColors.grayLight,
                          height: 1.h,
                        ),
                        SizedBox(height: 14.h),

                        // C. 5 bạn cùng luyện gần nhất từ API
                        WordGuessRoomRivals(
                          rivals: _rivals,
                          isLoading: _isLoadingSocial,
                          onInvite: _onInviteRival,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
