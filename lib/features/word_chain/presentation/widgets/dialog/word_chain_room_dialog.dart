import 'dart:async';
import 'dart:math' as math;

import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/usecases/get_cached_user_use_case.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/word_chain/data/datasources/word_chain_data_source.dart';
import 'package:bufopia/features/word_chain/data/models/word_chain_social_models.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/word_chain_socket_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

/// Tab lựa chọn trong hộp thoại phòng thi đấu
enum WordChainRoomTab { join, create }

/// Hộp thoại Phòng Đấu Riêng (ID Duel / Private Room) cho Word Chain.
/// Hỗ trợ: Nhập mã phòng, Tạo phòng riêng với Handshake,
/// Polling lời mời & đối thủ gần đây, Mời bạn bè kèm 10s cooldown.
class WordChainRoomDialog extends StatefulWidget {
  const WordChainRoomDialog({
    required this.onEnterRoom,
    super.key,
    this.relaxed = false,
    this.language = 'vi',
  });

  final ValueChanged<String> onEnterRoom;
  final bool relaxed;
  final String language;

  static Future<void> show(
    BuildContext context, {
    required ValueChanged<String> onEnterRoom,
    bool relaxed = false,
    String language = 'vi',
  }) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.55),
      builder: (_) => WordChainRoomDialog(
        onEnterRoom: onEnterRoom,
        relaxed: relaxed,
        language: language,
      ),
    );
  }

  @override
  State<WordChainRoomDialog> createState() => _WordChainRoomDialogState();
}

class _WordChainRoomDialogState extends State<WordChainRoomDialog>
    with TickerProviderStateMixin, WidgetsBindingObserver {
  late final WordChainSocketService _socketService;
  late final WordChainDataSource _dataSource;

  final TextEditingController _codeController = TextEditingController();

  WordChainRoomTab _currentTab = WordChainRoomTab.join;

  // Trạng thái tạo phòng (Host)
  String? _createdRoomCode;
  bool _isCreatingRoom = false;
  bool _isRoomCreated = false;
  Timer? _roomHandshakeTimer;
  StreamSubscription<SocketEvent>? _socketSubscription;

  // Hiệu ứng nhịp đập cho chấm xanh radar "CHỜ ĐỐI THỦ VÀO..."
  late final AnimationController _radarPulseController;
  late final Animation<double> _radarPulseAnimation;

  // Social Polling
  Timer? _socialPollingTimer;
  Timer? _cooldownTicker;
  List<WordChainRival> _rivals = [];
  List<WordChainInvitation> _invitations = [];
  final Set<String> _knownInvitationIds = {};
  final Map<String, int> _inviteCooldowns = {};

  bool _isDisposed = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _socketService = GetIt.instance.get<WordChainSocketService>();
    _dataSource = GetIt.instance.get<WordChainDataSource>();

    _radarPulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);

    _radarPulseAnimation = Tween<double>(begin: 0.75, end: 1.25).animate(
      CurvedAnimation(
        parent: _radarPulseController,
        curve: Curves.easeInOut,
      ),
    );

    _startSocialPolling();
    _startCooldownTicker();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      _stopSocialPolling();
    } else if (state == AppLifecycleState.resumed) {
      _startSocialPolling();
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    WidgetsBinding.instance.removeObserver(this);
    _codeController.dispose();
    _radarPulseController.dispose();
    _stopSocialPolling();
    _cooldownTicker?.cancel();
    _roomHandshakeTimer?.cancel();
    _socketSubscription?.cancel();

    // Nếu người chơi là Host nhưng thoát dialog khi chưa vào trận -> Hủy phòng
    if (_isRoomCreated && _createdRoomCode != null) {
      _socketService.disconnect();
    }
    super.dispose();
  }

  String _getMyUid() {
    final currentUser = context.read<AuthBloc>().state.currentUser;
    final cachedUid = sl<GetCachedUserUseCase>().execute()?.uid;
    final fbUid = sl<FirebaseAuthService>().currentUid;
    return (currentUser?.uid.isNotEmpty == true)
        ? currentUser!.uid
        : (cachedUid?.isNotEmpty == true)
        ? cachedUid!
        : fbUid ?? 'guest_${DateTime.now().millisecondsSinceEpoch % 10000}';
  }

  String _getMyName() {
    final currentUser = context.read<AuthBloc>().state.currentUser;
    final displayName = currentUser?.displayName;
    return (displayName != null && displayName.isNotEmpty)
        ? displayName
        : 'Bạn';
  }

  // ── 1. Quản lý Polling Social & Lời mời ─────────────────────────
  void _startSocialPolling() {
    _socialPollingTimer?.cancel();
    _fetchSocialState();
    _socialPollingTimer = Timer.periodic(const Duration(seconds: 5), (_) {
      _fetchSocialState();
    });
  }

  void _stopSocialPolling() {
    _socialPollingTimer?.cancel();
    _socialPollingTimer = null;
  }

  void _startCooldownTicker() {
    _cooldownTicker = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!mounted) return;
      if (_inviteCooldowns.isEmpty) return;
      var hasChange = false;
      final keysToRemove = <String>[];
      for (final entry in _inviteCooldowns.entries) {
        if (entry.value <= 1) {
          keysToRemove.add(entry.key);
          hasChange = true;
        } else {
          _inviteCooldowns[entry.key] = entry.value - 1;
          hasChange = true;
        }
      }
      keysToRemove.forEach(_inviteCooldowns.remove);
      if (hasChange) {
        setState(() {});
      }
    });
  }

  Future<void> _fetchSocialState() async {
    if (_isDisposed) return;
    try {
      final uid = _getMyUid();
      final data = await _dataSource.getSocialState(
        uid: uid,
        language: widget.language,
      );
      if (data == null || !mounted) return;

      final socialState = WordChainSocialState.fromJson(data);
      final now = DateTime.now().millisecondsSinceEpoch;

      final validInvitations = socialState.invitations.where((inv) {
        return inv.expiresAt > now && inv.activity == 'chain';
      }).toList();

      // Kiểm tra lời mời mới chưa từng thấy -> Phát âm thanh thông báo
      var hasNewInvitation = false;
      for (final inv in validInvitations) {
        if (!_knownInvitationIds.contains(inv.id)) {
          _knownInvitationIds.add(inv.id);
          hasNewInvitation = true;
        }
      }

      if (hasNewInvitation && mounted) {
        context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
      }

      if (mounted) {
        setState(() {
          _rivals = socialState.recent;
          _invitations = validInvitations;
        });
      }
    } on Object catch (_) {}
  }

  // ── 2. Xử lý Tạo phòng (Host) với Handshake waitForWordChainRoom ───
  Future<void> _handleCreateRoom() async {
    if (_isCreatingRoom || _isRoomCreated) return;

    final randomCode = (100000 + math.Random().nextInt(900000)).toString();

    setState(() {
      _isCreatingRoom = true;
      _createdRoomCode = randomCode;
    });

    _roomHandshakeTimer?.cancel();
    _socketSubscription?.cancel();

    // Timeout 12 giây: nếu không nhận được xác nhận thì huỷ
    _roomHandshakeTimer = Timer(const Duration(seconds: 12), () {
      if (mounted && !_isRoomCreated) {
        _socketService.disconnect();
        setState(() {
          _isCreatingRoom = false;
          _createdRoomCode = null;
        });
        AppToast.showError(
          context,
          'Chưa nhận được xác nhận tạo phòng. Hãy thử lại.',
        );
      }
    });

    final uid = _getMyUid();
    final name = _getMyName();
    final avatar = context.read<AuthBloc>().state.currentUser?.avatarUrl;

    // Lắng nghe Socket để đợi xác nhận tạo phòng (playerIndex 0, waiting true)
    _socketSubscription = _socketService.eventStream.listen((event) {
      if (!mounted) return;

      if (event is ChainStateEvent) {
        final isMyRoom = event.roomCode.isEmpty || event.roomCode == randomCode;

        if (isMyRoom) {
          // A. BE xác nhận Host seat sẵn sàng (status == 'waiting')
          if (event.state.status == 'waiting' && event.playerIndex == 0) {
            _roomHandshakeTimer?.cancel();
            setState(() {
              _isCreatingRoom = false;
              _isRoomCreated = true;
            });
          }
          // B. Khách kết nối thành công & Vào trận (match_start / status == 'active')
          else if (event.state.status == 'active') {
            _roomHandshakeTimer?.cancel();
            _socketSubscription?.cancel();
            Navigator.of(context).pop();
            widget.onEnterRoom(randomCode);
          }
        }
      } else if (event is SocketErrorEvent) {
        _roomHandshakeTimer?.cancel();
        setState(() {
          _isCreatingRoom = false;
          _createdRoomCode = null;
          _isRoomCreated = false;
        });
        AppToast.showError(context, event.message);
      }
    });

    // Kết nối WebSocket đến phòng
    await _socketService.connectRoom(
      roomCode: randomCode,
      uid: uid,
      name: name,
      avatar: avatar,
      relaxed: widget.relaxed,
      lang: widget.language,
    );
  }

  void _handleCancelRoom() {
    _roomHandshakeTimer?.cancel();
    _socketSubscription?.cancel();
    _socketService.disconnect();

    setState(() {
      _isCreatingRoom = false;
      _isRoomCreated = false;
      _createdRoomCode = null;
    });

    AppToast.showWarning(context, 'Đã hủy phòng thi đấu.');
  }

  // ── 3. Xử lý Vào phòng (Guest - Nhập mã hoặc link) ───────────────
  void _handleJoinRoom() {
    final rawText = _codeController.text.trim();
    if (rawText.isEmpty) return;

    // Tự động bóc tách mã 6 số nếu dán link
    // Ví dụ: https://bufopia.pages.dev/?chain_room=839201 hoặc 839201
    final match = RegExp(r'\d{6}').firstMatch(rawText);
    final validCode = match?.group(0);

    if (validCode == null || validCode.length < 6) {
      AppToast.showWarning(
        context,
        'Vui lòng nhập đúng mã phòng gồm 6 chữ số!',
      );
      return;
    }

    // Nếu đang host phòng cũ thì hủy trước khi vào phòng mới
    if (_isRoomCreated) {
      _socketService.disconnect();
    }

    Navigator.of(context).pop();
    widget.onEnterRoom(validCode);
  }

  // ── 4. Xử lý Mời bạn bè (Cooldown 10s) ───────────────────────────
  Future<void> _handleInviteRival(WordChainRival rival) async {
    final code = _createdRoomCode;
    if (code == null || !_isRoomCreated) return;

    if ((_inviteCooldowns[rival.uid] ?? 0) > 0) return;

    setState(() {
      _inviteCooldowns[rival.uid] = 10;
    });

    final uid = _getMyUid();
    final ok = await _dataSource.sendSocialInvite(
      uid: uid,
      targetUid: rival.uid,
      roomCode: code,
      language: widget.language,
    );

    if (!mounted) return;
    if (ok) {
      AppToast.showSuccess(
        context,
        'Đã mời ${rival.name}. Lời mời có hiệu lực trong 2 phút.',
      );
    } else {
      AppToast.showWarning(
        context,
        'Chờ 10 giây trước khi gửi tiếp lời mời.',
      );
    }
  }

  // ── 5. Xử lý Chấp nhận lời mời ──────────────────────────────────
  Future<void> _handleAcceptInvitation(WordChainInvitation inv) async {
    final uid = _getMyUid();

    // Hủy phòng host cũ nếu đang mở
    if (_isRoomCreated) {
      _socketService.disconnect();
    }

    final acceptedRoomCode = await _dataSource.acceptSocialInvite(
      uid: uid,
      invitationId: inv.id,
      language: widget.language,
    );

    if (!mounted) return;

    final roomToEnter =
        (acceptedRoomCode != null && acceptedRoomCode.isNotEmpty)
        ? acceptedRoomCode
        : inv.roomCode;

    setState(() {
      _invitations.removeWhere((i) => i.id == inv.id);
    });

    Navigator.of(context).pop();
    widget.onEnterRoom(roomToEnter);
  }

  // ── 6. Xử lý Bỏ qua lời mời ─────────────────────────────────────
  Future<void> _handleDismissInvitation(WordChainInvitation inv) async {
    final uid = _getMyUid();
    setState(() {
      _invitations.removeWhere((i) => i.id == inv.id);
    });

    await _dataSource.dismissSocialInvite(
      uid: uid,
      invitationId: inv.id,
    );
  }

  // ── 7. Build UI ──────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final dialogBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final dialogBorder = isPaper ? AppColors.paperBorder : AppColors.blueLight;

    return AppGameDialog(
      title: 'PHÒNG ĐẤU NỐI TỪ',
      icon: Icons.sports_kabaddi_rounded,
      maxWidth: isLandscape ? 490.0 : 360.w,
      maxHeight: isLandscape ? 335.0 : 540.h,
      backgroundColor: dialogBg,
      borderColor: dialogBorder,
      headerGradientColors: isPaper
          ? const [AppColors.paperGreen, AppColors.paperGreenDark]
          : const [AppColors.blueLight, AppColors.blueDark],
      boxShadow: isPaper
          ? [
              BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 4.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.12),
                blurRadius: 16.r,
                offset: Offset(0, 8.h),
              ),
            ]
          : null,
      footerText: '⭐ Thách đấu nối từ cùng bạn bè trực tuyến ⭐',
      footerBackgroundColor: isPaper ? AppColors.paperSurface : null,
      footerBorderColor: isPaper ? AppColors.paperBorder : null,
      footerTextColor: isPaper ? AppColors.paperTextMedium : null,
      padding: isLandscape
          ? const EdgeInsets.fromLTRB(16, 10, 16, 8)
          : EdgeInsets.fromLTRB(14.w, 8.h, 14.w, 6.h),
      onClose: () {
        if (_isRoomCreated) {
          _socketService.disconnect();
        }
        Navigator.of(context).pop();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ── 1. Thanh chuyển tab (NHẬP MÃ / TẠO PHÒNG) ──────────────
          _buildTabs(isPaper, isLandscape),

          SizedBox(height: isLandscape ? 10 : 8.h),

          // ── 2. Nội dung Tab ───────────────────────────────────────
          if (_currentTab == WordChainRoomTab.join)
            _buildJoinTab(isPaper, isLandscape)
          else
            _buildCreateTab(isPaper, isLandscape),

          SizedBox(height: isLandscape ? 8 : 6.h),
          Divider(
            height: isLandscape ? 14 : 12.h,
            color: isPaper ? AppColors.paperBorder : AppColors.skyBorder,
          ),
          SizedBox(height: isLandscape ? 4 : 4.h),

          // ── 3. Mục Lời mời đến ────────────────────────────────────
          _buildInvitationsSection(isPaper, isLandscape),

          SizedBox(height: isLandscape ? 8 : 6.h),
          Divider(
            height: isLandscape ? 14 : 12.h,
            color: isPaper ? AppColors.paperBorder : AppColors.skyBorder,
          ),
          SizedBox(height: isLandscape ? 4 : 4.h),

          // ── 4. Mục 5 đối thủ gần nhất ─────────────────────────────
          _buildRivalsSection(isPaper, isLandscape),
        ],
      ),
    );
  }

  // ── Widgets con ──────────────────────────────────────────────────

  Widget _buildTabs(bool isPaper, bool isLandscape) {
    final isJoin = _currentTab == WordChainRoomTab.join;
    final activeColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final inactiveColor = isPaper
        ? AppColors.paperTextMuted
        : AppColors.grayMedium;
    final tabHeight = isLandscape ? 36.0 : 36.h;
    final fontSize = isLandscape ? 12.0 : 12.sp;
    final iconSize = isLandscape ? 14.0 : 14.r;

    return Container(
      height: tabHeight,
      padding: EdgeInsets.all(isLandscape ? 3.0 : 3.r),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : AppColors.lightBackground,
        borderRadius: BorderRadius.circular(isLandscape ? 10.0 : 10.r),
        border: isPaper ? Border.all(color: AppColors.paperBorder) : null,
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            alignment: isJoin ? Alignment.centerLeft : Alignment.centerRight,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOutCubic,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: isPaper ? AppColors.paperCardBg : AppColors.white,
                  borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                  border: Border.all(
                    color: isPaper
                        ? AppColors.paperBorder
                        : AppColors.blueLight,
                  ),
                  boxShadow: isPaper
                      ? const [
                          BoxShadow(
                            color: AppColors.paperExtrusion,
                            offset: Offset(0, 1.5),
                          ),
                        ]
                      : [
                          BoxShadow(
                            color: AppColors.blue.withValues(alpha: 0.12),
                            blurRadius: 3,
                            offset: const Offset(0, 1.5),
                          ),
                        ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    context.read<AppBloc>().add(
                      const AppEvent.clickSoundPlayed(),
                    );
                    setState(() {
                      _currentTab = WordChainRoomTab.join;
                    });
                  },
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.rotate(
                          angle: 0.25,
                          child: Icon(
                            Icons.colorize_rounded,
                            size: iconSize,
                            color: isJoin ? activeColor : inactiveColor,
                          ),
                        ),
                        SizedBox(width: isLandscape ? 6.0 : 6.w),
                        AppText.t3(
                          'NHẬP MÃ',
                          fontSize: fontSize,
                          fontWeight: FontWeight.w700,
                          color: isJoin ? activeColor : inactiveColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    context.read<AppBloc>().add(
                      const AppEvent.clickSoundPlayed(),
                    );
                    setState(() {
                      _currentTab = WordChainRoomTab.create;
                    });
                  },
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.sensors_rounded,
                          size: iconSize,
                          color: !isJoin ? activeColor : inactiveColor,
                        ),
                        SizedBox(width: isLandscape ? 6.0 : 6.w),
                        AppText.t3(
                          'TẠO PHÒNG',
                          fontSize: fontSize,
                          fontWeight: FontWeight.w700,
                          color: !isJoin ? activeColor : inactiveColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildJoinTab(bool isPaper, bool isLandscape) {
    final inputHeight = isLandscape ? 38.0 : 38.h;
    final fontSize = isLandscape ? 12.5 : 12.sp;
    final iconSize = isLandscape ? 13.0 : 13.r;

    return Row(
      children: [
        Expanded(
          child: Container(
            height: inputHeight,
            padding: EdgeInsets.symmetric(
              horizontal: isLandscape ? 12.0 : 12.w,
            ),
            decoration: BoxDecoration(
              color: isPaper
                  ? AppColors.paperSurface
                  : AppColors.lightBackground,
              borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
              border: Border.all(
                color: isPaper ? AppColors.paperBorder : AppColors.blueLight,
                width: 1.2,
              ),
            ),
            alignment: Alignment.centerLeft,
            child: TextField(
              controller: _codeController,
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
                color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              ),
              decoration: InputDecoration(
                hintText: 'NHẬP 6 SỐ HOẶC LINK...',
                hintStyle: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w700,
                  color: isPaper
                      ? AppColors.paperTextMuted
                      : AppColors.grayMedium,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              onSubmitted: (_) => _handleJoinRoom(),
            ),
          ),
        ),
        SizedBox(width: isLandscape ? 8.0 : 8.w),
        if (isPaper)
          AppButton(
            text: 'VÀO',
            icon: Icon(
              Icons.arrow_forward_rounded,
              size: iconSize,
              color: AppColors.white,
            ),
            iconAfter: true,
            height: inputHeight,
            fontSize: fontSize,
            padding: EdgeInsets.symmetric(
              horizontal: isLandscape ? 16.0 : 14.w,
            ),
            borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
            backgroundColor: AppColors.paperGreen,
            borderColor: AppColors.paperGreenBorder,
            extrusionColor: AppColors.paperGreenExtrusion,
            extrusionHeight: 2,
            onPressed: _handleJoinRoom,
          )
        else
          AppButton(
            text: 'VÀO',
            icon: Icon(
              Icons.arrow_forward_rounded,
              size: iconSize,
              color: AppColors.white,
            ),
            iconAfter: true,
            height: inputHeight,
            fontSize: fontSize,
            padding: EdgeInsets.symmetric(
              horizontal: isLandscape ? 16.0 : 14.w,
            ),
            borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
            backgroundColor: AppColors.modeBotButton,
            borderColor: AppColors.white.withValues(alpha: 0.35),
            extrusionColor: AppColors.modeBotButtonExtrusion,
            extrusionHeight: 2,
            onPressed: _handleJoinRoom,
          ),
      ],
    );
  }

  Widget _buildCreateTab(bool isPaper, bool isLandscape) {
    if (!_isRoomCreated) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: isLandscape ? 4.0 : 4.h),
        child: AppButton(
          text: _isCreatingRoom ? 'ĐANG TẠO PHÒNG...' : 'TẠO PHÒNG NGAY',
          icon: Icon(
            Icons.sensors_rounded,
            size: isLandscape ? 16.0 : 14.r,
            color: AppColors.white,
          ),
          width: double.infinity,
          height: isLandscape ? 40.0 : 40.h,
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          spacing: 8,
          backgroundColor: isPaper
              ? AppColors.paperGreen
              : AppColors.modeBotButton,
          borderColor: isPaper
              ? AppColors.paperGreenBorder
              : AppColors.white.withValues(alpha: 0.35),
          extrusionColor: isPaper
              ? AppColors.paperGreenExtrusion
              : AppColors.modeBotButtonExtrusion,
          extrusionHeight: 2,
          borderRadius: BorderRadius.circular(isLandscape ? 10.0 : 10.r),
          fontSize: isLandscape ? 12.0 : 12.sp,
          onPressed: _isCreatingRoom ? null : _handleCreateRoom,
        ),
      );
    }

    final code = _createdRoomCode ?? '000000';
    final digits = code.split('');
    final statusColor = isPaper
        ? AppColors.paperGreenDark
        : AppColors.modeBotButtonDark;

    final btnHeight = isLandscape ? 30.0 : 30.h;
    final btnFontSize = isLandscape ? 12.0 : 12.sp;
    final iconSize = isLandscape ? 13.0 : 13.r;
    final btnPad = EdgeInsets.symmetric(
      horizontal: isLandscape ? 12.0 : 10.w,
    );
    final btnSpacing = isLandscape ? 8.0 : 6.w;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isLandscape ? 12.0 : 10.w,
        vertical: isLandscape ? 10.0 : 8.h,
      ),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : AppColors.topicEasyBg,
        borderRadius: BorderRadius.circular(isLandscape ? 12.0 : 12.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.modeBotShadow,
          width: 1.2,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Radar Live Indicator: Chấm xanh nhấp nháy + CHỜ ĐỐI THỦ VÀO...
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: _radarPulseAnimation,
                child: Container(
                  width: isLandscape ? 8.0 : 8.r,
                  height: isLandscape ? 8.0 : 8.r,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: statusColor,
                    boxShadow: [
                      BoxShadow(
                        color: statusColor.withValues(alpha: 0.5),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: isLandscape ? 6.0 : 6.w),
              AppText.c1(
                'CHỜ ĐỐI THỦ VÀO PHÒNG...',
                fontSize: isLandscape ? 12.0 : 12.sp,
                fontWeight: FontWeight.w700,
                color: statusColor,
              ),
            ],
          ),

          SizedBox(height: isLandscape ? 8.0 : 8.h),

          // 2. Hàng 6 thẻ số phòng 3D Arcade (Bấm vào để copy)
          GestureDetector(
            onTap: () {
              Clipboard.setData(ClipboardData(text: code));
              AppToast.showSuccess(
                context,
                'Đã sao chép mã phòng $code',
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: digits
                  .map((d) => _buildDigitBox(d, isPaper, isLandscape))
                  .toList(),
            ),
          ),

          SizedBox(height: isLandscape ? 10.0 : 8.h),

          // 3. Hàng 3 nút: [CHÉP MÃ] [CHÉP LINK] [HỦY]
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Nút Chép mã
              if (isPaper)
                AppButton(
                  text: 'CHÉP MÃ',
                  icon: Icon(
                    Icons.copy_rounded,
                    size: iconSize,
                    color: AppColors.paperTextDark,
                  ),
                  height: btnHeight,
                  fontSize: btnFontSize,
                  padding: btnPad,
                  borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                  backgroundColor: AppColors.paperCardBg,
                  borderColor: AppColors.paperBorder,
                  extrusionColor: AppColors.paperExtrusion,
                  textColor: AppColors.paperTextDark,
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: code));
                    AppToast.showSuccess(
                      context,
                      'Đã sao chép mã phòng $code',
                    );
                  },
                )
              else
                AppButton.secondary(
                  text: 'CHÉP MÃ',
                  icon: Icon(
                    Icons.copy_rounded,
                    size: iconSize,
                    color: AppColors.grayDark,
                  ),
                  height: btnHeight,
                  fontSize: btnFontSize,
                  padding: btnPad,
                  borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: code));
                    AppToast.showSuccess(
                      context,
                      'Đã sao chép mã phòng $code',
                    );
                  },
                ),
              SizedBox(width: btnSpacing),

              // Nút Chép link chuẩn bufopia web
              if (isPaper)
                AppButton(
                  text: 'CHÉP LINK',
                  icon: Icon(
                    Icons.link_rounded,
                    size: iconSize,
                    color: AppColors.paperTextDark,
                  ),
                  height: btnHeight,
                  fontSize: btnFontSize,
                  padding: btnPad,
                  borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                  backgroundColor: AppColors.paperCardBg,
                  borderColor: AppColors.paperBorder,
                  extrusionColor: AppColors.paperExtrusion,
                  textColor: AppColors.paperTextDark,
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(
                      ClipboardData(
                        text: 'https://bufopia.pages.dev/?chain_room=$code',
                      ),
                    );
                    AppToast.showSuccess(
                      context,
                      'Đã sao chép liên kết vào phòng!',
                    );
                  },
                )
              else
                AppButton.secondary(
                  text: 'CHÉP LINK',
                  icon: Icon(
                    Icons.link_rounded,
                    size: iconSize,
                    color: AppColors.grayDark,
                  ),
                  height: btnHeight,
                  fontSize: btnFontSize,
                  padding: btnPad,
                  borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(
                      ClipboardData(
                        text: 'https://bufopia.pages.dev/?chain_room=$code',
                      ),
                    );
                    AppToast.showSuccess(
                      context,
                      'Đã sao chép liên kết vào phòng!',
                    );
                  },
                ),
              SizedBox(width: btnSpacing),

              // Nút Hủy phòng
              AppButton(
                text: 'HỦY',
                icon: Icon(
                  Icons.close_rounded,
                  size: iconSize,
                  color: AppColors.dialogCloseIcon,
                ),
                backgroundColor: AppColors.dialogCloseBg,
                borderColor: AppColors.dialogCloseBorder,
                extrusionColor: AppColors.dialogCloseExtrusion,
                textColor: AppColors.dialogCloseIcon,
                borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                height: btnHeight,
                fontSize: btnFontSize,
                padding: btnPad,
                extrusionHeight: 1.5,
                onPressed: _handleCancelRoom,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDigitBox(String digit, bool isPaper, bool isLandscape) {
    final boxW = isLandscape ? 34.0 : 32.w;
    final boxH = isLandscape ? 40.0 : 38.h;
    final boxRadius = BorderRadius.circular(isLandscape ? 8.0 : 7.r);
    final fontSize = isLandscape ? 20.0 : 20.sp;

    return Container(
      width: boxW,
      height: boxH,
      margin: EdgeInsets.symmetric(horizontal: isLandscape ? 3.0 : 2.5.w),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperCardBg : AppColors.white,
        borderRadius: boxRadius,
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.blueLight,
          width: 1.5,
        ),
        boxShadow: isPaper
            ? [
                BoxShadow(
                  color: AppColors.paperExtrusion,
                  offset: Offset(0, 2.5.h),
                ),
              ]
            : const [
                BoxShadow(
                  color: AppColors.modeBotShadow,
                  offset: Offset(0, 2.5),
                ),
              ],
      ),
      child: Center(
        child: AppText.t1(
          digit,
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          color: isPaper ? AppColors.paperTextDark : AppColors.blueDark,
        ),
      ),
    );
  }

  Widget _buildInvitationsSection(bool isPaper, bool isLandscape) {
    final titleFontSize = isLandscape ? 12.0 : 12.sp;
    final emptyFontSize = isLandscape ? 12.0 : 12.sp;
    final textFontSize = isLandscape ? 12.0 : 12.sp;
    final btnHeight = isLandscape ? 28.0 : 28.h;
    final btnFontSize = isLandscape ? 12.0 : 12.sp;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.t3(
          'Lời mời đến',
          fontSize: titleFontSize,
          fontWeight: FontWeight.w700,
          color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
        ),
        SizedBox(height: isLandscape ? 4.0 : 4.h),
        if (_invitations.isEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: isLandscape ? 2.0 : 2.h),
            child: AppText.b2(
              'Chưa có lời mời mới.',
              fontSize: emptyFontSize,
              color: isPaper ? AppColors.paperTextMuted : AppColors.grayMedium,
            ),
          )
        else
          ..._invitations.map(
            (inv) => Container(
              margin: EdgeInsets.only(bottom: isLandscape ? 6.0 : 5.h),
              padding: EdgeInsets.symmetric(
                horizontal: isLandscape ? 10.0 : 8.w,
                vertical: isLandscape ? 6.0 : 5.h,
              ),
              decoration: BoxDecoration(
                color: isPaper ? AppColors.paperSurface : AppColors.skySurface,
                borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 7.r),
                border: Border.all(
                  color: isPaper ? AppColors.paperBorder : AppColors.skyBorder,
                ),
                boxShadow: isPaper
                    ? const [
                        BoxShadow(
                          color: AppColors.paperExtrusion,
                          offset: Offset(0, 1.5),
                        ),
                      ]
                    : null,
              ),
              child: Row(
                children: [
                  AppAvatar(
                    size: isLandscape ? 30.0 : 28.w,
                    avatarUrl: inv.fromAvatar,
                    borderWidth: 1.2,
                    borderColor: isPaper
                        ? AppColors.paperBorder
                        : AppColors.blueLight,
                  ),
                  SizedBox(width: isLandscape ? 8.0 : 8.w),
                  Expanded(
                    child: AppText.b2(
                      '${inv.fromName} mời vào phòng #${inv.roomCode}',
                      fontSize: textFontSize,
                      fontWeight: FontWeight.w700,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                    ),
                  ),
                  SizedBox(width: 6.w),
                  // Nút Vào
                  AppButton(
                    text: 'VÀO',
                    height: btnHeight,
                    fontSize: btnFontSize,
                    padding: EdgeInsets.symmetric(
                      horizontal: isLandscape ? 12.0 : 10.w,
                    ),
                    borderRadius: BorderRadius.circular(
                      isLandscape ? 7.0 : 6.r,
                    ),
                    backgroundColor: isPaper
                        ? AppColors.paperGreen
                        : AppColors.modeBotButton,
                    borderColor: isPaper
                        ? AppColors.paperGreenBorder
                        : AppColors.white.withValues(alpha: 0.35),
                    extrusionColor: isPaper
                        ? AppColors.paperGreenExtrusion
                        : AppColors.modeBotButtonExtrusion,
                    extrusionHeight: 1.5,
                    onPressed: () => _handleAcceptInvitation(inv),
                  ),
                  SizedBox(width: 4.w),
                  // Nút Bỏ qua
                  AppButton.close(
                    size: btnHeight,
                    iconSize: 12.r,
                    onPressed: () => _handleDismissInvitation(inv),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildRivalsSection(bool isPaper, bool isLandscape) {
    final titleFontSize = isLandscape ? 12.0 : 12.sp;
    final emptyFontSize = isLandscape ? 12.0 : 12.sp;
    final nameFontSize = isLandscape ? 12.0 : 12.sp;
    final subFontSize = isLandscape ? 10.0 : 10.sp;
    final avatarSize = isLandscape ? 34.0 : 32.w;
    final btnHeight = isLandscape ? 28.0 : 28.h;
    final btnFontSize = isLandscape ? 12.0 : 12.sp;
    final btnPad = EdgeInsets.symmetric(
      horizontal: isLandscape ? 14.0 : 12.w,
    );
    final itemPad = EdgeInsets.symmetric(
      vertical: isLandscape ? 4.0 : 3.h,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.t3(
          '5 đối thủ gần nhất',
          fontSize: titleFontSize,
          fontWeight: FontWeight.w700,
          color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
        ),
        SizedBox(height: isLandscape ? 4.0 : 4.h),
        if (_rivals.isEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: isLandscape ? 2.0 : 2.h),
            child: AppText.b2(
              'Chơi một trận online để lưu đối thủ tại đây.',
              fontSize: emptyFontSize,
              color: isPaper ? AppColors.paperTextMuted : AppColors.grayMedium,
            ),
          )
        else
          ..._rivals.take(5).map(
            (rival) {
              final cooldown = _inviteCooldowns[rival.uid] ?? 0;
              final isCooldownActive = cooldown > 0;
              final canInvite = _isRoomCreated && !isCooldownActive;

              return Padding(
                padding: itemPad,
                child: Row(
                  children: [
                    AppAvatar(
                      size: avatarSize,
                      avatarUrl: rival.avatar,
                      borderWidth: 1.2,
                      borderColor: isPaper
                          ? AppColors.paperBorder
                          : AppColors.blueLight,
                    ),
                    SizedBox(width: isLandscape ? 10.0 : 8.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.b2(
                            rival.name,
                            fontSize: nameFontSize,
                            fontWeight: FontWeight.w700,
                            color: isPaper
                                ? AppColors.paperTextDark
                                : AppColors.grayDark,
                          ),
                          AppText.c1(
                            'Đã chơi gần đây',
                            fontSize: subFontSize,
                            fontWeight: FontWeight.w600,
                            color: isPaper
                                ? AppColors.paperTextMuted
                                : AppColors.grayMedium,
                          ),
                        ],
                      ),
                    ),
                    // Nút Mời kèm Cooldown 10s
                    if (canInvite)
                      if (isPaper)
                        AppButton(
                          text: 'Mời',
                          height: btnHeight,
                          fontSize: btnFontSize,
                          padding: btnPad,
                          borderRadius: BorderRadius.circular(
                            isLandscape ? 8.0 : 7.r,
                          ),
                          backgroundColor: AppColors.paperGreen,
                          borderColor: AppColors.paperGreenBorder,
                          extrusionColor: AppColors.paperGreenExtrusion,
                          onPressed: () => _handleInviteRival(rival),
                        )
                      else
                        AppButton.secondary(
                          text: 'Mời',
                          height: btnHeight,
                          fontSize: btnFontSize,
                          padding: btnPad,
                          borderRadius: BorderRadius.circular(
                            isLandscape ? 8.0 : 7.r,
                          ),
                          onPressed: () => _handleInviteRival(rival),
                        )
                    else if (isCooldownActive)
                      AppButton.disabled(
                        text: '${cooldown}s',
                        height: btnHeight,
                        fontSize: btnFontSize,
                        padding: btnPad,
                        borderRadius: BorderRadius.circular(
                          isLandscape ? 8.0 : 7.r,
                        ),
                      )
                    else if (isPaper)
                      AppButton(
                        text: 'Mời',
                        height: btnHeight,
                        fontSize: btnFontSize,
                        padding: btnPad,
                        borderRadius: BorderRadius.circular(
                          isLandscape ? 8.0 : 7.r,
                        ),
                        backgroundColor: AppColors.paperSurface,
                        borderColor: AppColors.paperBorder,
                        extrusionColor: AppColors.paperExtrusion,
                        textColor: AppColors.paperTextMuted,
                      )
                    else
                      AppButton.disabled(
                        text: 'Mời',
                        height: btnHeight,
                        fontSize: btnFontSize,
                        padding: btnPad,
                        borderRadius: BorderRadius.circular(
                          isLandscape ? 8.0 : 7.r,
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
      ],
    );
  }
}
