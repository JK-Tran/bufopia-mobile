import 'dart:async';

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/components/app_radar_scanner.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/usecases/get_cached_user_use_case.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/word_chain_socket_service.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

/// Hộp thoại Tìm Trận Online cho chế độ Nối từ (Word Chain).
/// Sử dụng UI/UX Radar Scanner 3D Game, đồng bộ phong cách với Vocabulary Matchmaking.
class WordChainMatchmakingDialog extends StatefulWidget {
  const WordChainMatchmakingDialog({
    required this.onMatched,
    super.key,
    this.relaxed = false,
    this.language = 'en',
  });

  final bool relaxed;
  final String language;
  final void Function(
    String roomCode,
    String rivalName,
    String rivalAvatar,
  )
  onMatched;

  static Future<void> show(
    BuildContext context, {
    required void Function(
      String roomCode,
      String rivalName,
      String rivalAvatar,
    )
    onMatched,
    bool relaxed = false,
    String language = 'en',
  }) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.55),
      builder: (_) => WordChainMatchmakingDialog(
        relaxed: relaxed,
        language: language,
        onMatched: onMatched,
      ),
    );
  }

  @override
  State<WordChainMatchmakingDialog> createState() =>
      _WordChainMatchmakingDialogState();
}

class _WordChainMatchmakingDialogState extends State<WordChainMatchmakingDialog>
    with TickerProviderStateMixin {
  late final WordChainSocketService _socketService;
  StreamSubscription<SocketEvent>? _subscription;
  Timer? _timer;
  int _secondsElapsed = 0;

  // Hiệu ứng nhịp đập cho chấm xanh trạng thái
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnimation;

  bool _isMatched = false;
  MatchmakeMatchedEvent? _matchedEvent;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _socketService = GetIt.instance.get<WordChainSocketService>();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _startTimer();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _connectMatchmake();
      }
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted && !_isMatched) {
        setState(() {
          _secondsElapsed++;
        });
      }
    });
  }

  Future<void> _connectMatchmake() async {
    final currentUser = context.read<AuthBloc>().state.currentUser;
    final cachedUid = sl<GetCachedUserUseCase>().execute()?.uid;
    final fbService = sl<FirebaseAuthService>();
    final fbUid = fbService.currentUid;
    final isGoogle = fbService.isGoogleLinked;
    var currentUid = (currentUser?.uid.isNotEmpty == true)
        ? currentUser!.uid
        : (cachedUid?.isNotEmpty == true)
        ? cachedUid!
        : fbUid;
    if (isGoogle && currentUid != null && !currentUid.startsWith('acct_')) {
      currentUid = 'acct_$currentUid';
    }
    final fallbackUid =
        'guest_${DateTime.now().millisecondsSinceEpoch % 10000}';
    final uid = currentUid ?? fallbackUid;
    final displayName = currentUser?.displayName;
    final name = (displayName != null && displayName.isNotEmpty)
        ? displayName
        : 'Bạn';
    final avatar = currentUser?.avatarUrl;

    await _socketService.connectMatchmake(
      uid: uid,
      name: name,
      avatar: avatar,
      relaxed: widget.relaxed,
      lang: widget.language,
    );

    if (!mounted) {
      _socketService.disconnect();
      return;
    }

    _subscription = _socketService.eventStream.listen((event) {
      if (!mounted) return;
      if (_isMatched) return;

      if (event is MatchmakeMatchedEvent) {
        _handleMatched(event);
      } else if (event is ChainStateEvent) {
        // Trường hợp server gửi thẳng state phòng đấu khi ghép cặp thành công
        if (!_isMatched) {
          final matchedEvent = MatchmakeMatchedEvent(
            matchId: '',
            roomCode: event.roomCode,
            playerIndex: event.playerIndex,
            rivalName: event.rivalName ?? 'Đối thủ',
            rivalAvatar: event.rivalAvatar ?? '',
            topicId: widget.relaxed ? 'word-chain-relaxed' : 'word-chain',
          );
          _handleMatched(matchedEvent);
        }
      } else if (event is SocketReconnectingEvent) {
        if (!_isMatched) {
          setState(() {
            _errorMessage =
                'Mất kết nối! Đang thử kết nối lại '
                '(${event.attempt}/${event.maxAttempts})...';
          });
        }
      } else if (event is SocketReconnectedEvent) {
        if (!_isMatched) {
          setState(() {
            _errorMessage = null;
          });
        }
      } else if (event is SocketErrorEvent) {
        if (!_isMatched) {
          setState(() {
            _errorMessage = event.message;
          });
        }
      }
    });
  }

  void _handleMatched(MatchmakeMatchedEvent event) {
    SoundManager.playWin();
    _subscription?.cancel();
    _subscription = null;
    if (mounted) {
      setState(() {
        _isMatched = true;
        _matchedEvent = event;
        _errorMessage = null;
      });
    }

    Future.delayed(const Duration(milliseconds: 1200), () {
      if (mounted) {
        Navigator.of(context).pop();
        widget.onMatched(
          event.roomCode,
          event.rivalName,
          event.rivalAvatar,
        );
      }
    });
  }

  void _onCancel() {
    if (!mounted) return;
    _socketService.sendCancel();
    Navigator.of(context).pop();
    _socketService.disconnect();
    AppToast.showWarning(context, 'Đã hủy tìm trận đấu.');
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pulseController.dispose();
    _subscription?.cancel();
    if (!_isMatched) {
      _socketService.disconnect();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentUser = context.read<AuthBloc>().state.currentUser;
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return AppGameDialog(
      title: context.l10n.findMatchOnline,
      icon: Icons.sensors_rounded,
      maxWidth: 390.w,
      maxHeight: 246.h,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [
              AppColors.paperGreen,
              AppColors.paperGreenDark,
            ]
          : const [
              AppColors.blueLight,
              AppColors.blueDark,
            ],
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
      headerTrailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
        decoration: BoxDecoration(
          color: isPaper
              ? AppColors.paperCardBg.withValues(alpha: 0.25)
              : AppColors.white.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(
            color: isPaper
                ? AppColors.paperCardBg.withValues(alpha: 0.4)
                : AppColors.white.withValues(alpha: 0.35),
          ),
        ),
        child: AppText.c1(
          context.l10n.oneVsOneRandom,
          fontWeight: FontWeight.w700,
          fontSize: 10.sp,
          color: AppColors.white,
        ),
      ),
      footerText: null,
      onClose: _onCancel,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── 1. Status Row: Đang tìm đối thủ + Bộ đếm giờ ─────────────
          _buildStatusRow(isPaper),

          // Thông báo lỗi nếu có (chỉ hiện khi chưa tìm thấy trận)
          if (_errorMessage != null && !_isMatched) ...[
            SizedBox(height: 4.h),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 2.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.dialogCloseBg,
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(color: AppColors.dialogCloseBorder),
              ),
              child: AppText.c1(
                _errorMessage!,
                color: AppColors.redDark,
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],

          SizedBox(height: 8.h),

          // ── 2. Radar Scanner Box ────────────────────────────────────
          AppRadarScanner(
            avatarUrl: currentUser?.avatarUrl,
            isMatched: _isMatched,
            isPaperTheme: isPaper,
            rivalAvatar: _matchedEvent?.rivalAvatar,
          ),

          SizedBox(height: 10.h),

          // ── 3. Nút hành động: HỦY TÌM TRẬN hoặc VÀO TRẬN ─────────────
          _buildActionButton(isPaper),
        ],
      ),
    );
  }

  /// Chấm xanh nhấp nháy + "ĐANG TÌM ĐỐI THỦ..." + Capsule đếm giờ
  Widget _buildStatusRow(bool isPaper) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ScaleTransition(
              scale: _pulseAnimation,
              child: Container(
                width: 8.r,
                height: 8.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _isMatched
                      ? AppColors.radarGreen
                      : (isPaper
                            ? AppColors.paperGreen
                            : AppColors.radarGreenLight),
                  boxShadow: [
                    BoxShadow(
                      color:
                          (_isMatched
                                  ? AppColors.radarGreen
                                  : (isPaper
                                        ? AppColors.paperGreen
                                        : AppColors.radarGreenLight))
                              .withValues(alpha: 0.6),
                      blurRadius: 6.r,
                      spreadRadius: 1.r,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8.w),
            AppText.t3(
              _isMatched
                  ? (_matchedEvent != null
                        ? context.l10n.opponentFoundRival(
                            _matchedEvent!.rivalName.toUpperCase(),
                          )
                        : context.l10n.opponentFound)
                  : context.l10n.findingOpponent,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
              color: _isMatched
                  ? AppColors.radarGreen
                  : (isPaper ? AppColors.paperGreenDark : AppColors.radarGreen),
            ),
          ],
        ),

        // Capsule hiển thị đồng hồ bấm giờ 00:00
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: isPaper ? AppColors.paperSurface : AppColors.skySurface,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: isPaper ? AppColors.paperBorder : AppColors.skyBorder,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.timer_outlined,
                size: 12.r,
                color: isPaper ? AppColors.paperTextDark : AppColors.skyDark,
              ),
              SizedBox(width: 4.w),
              AppText.c1(
                StringUtils.formatDuration(_secondsElapsed),
                fontWeight: FontWeight.w700,
                fontSize: 10.sp,
                color: isPaper ? AppColors.paperTextDark : AppColors.skyDark,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Nút hành động phía dưới: HỦY TÌM TRẬN hoặc VÀO TRẬN NGAY...
  Widget _buildActionButton(bool isPaper) {
    final l10n = context.l10n;
    if (!_isMatched) {
      if (isPaper) {
        return AppButton(
          height: 28.h,
          width: 136.w,
          fontSize: 10.sp,
          onPressed: _onCancel,
          backgroundColor: AppColors.dialogCloseBg,
          borderColor: AppColors.dialogCloseBorder,
          extrusionColor: AppColors.dialogCloseExtrusion,
          textColor: AppColors.dialogCloseIcon,
          icon: Icon(
            Icons.close_rounded,
            size: 14.r,
            color: AppColors.dialogCloseIcon,
          ),
          text: l10n.cancelMatchmaking,
        );
      }
      return AppButton.danger(
        height: 28.h,
        width: 136.w,
        fontSize: 10.sp,
        onPressed: _onCancel,
        icon: Icon(
          Icons.close_rounded,
          size: 14.r,
          color: AppColors.white,
        ),
        text: l10n.cancelMatchmaking,
      );
    } else {
      if (isPaper) {
        return AppButton(
          text: l10n.enteringMatch,
          isLoading: true,
          height: 28.h,
          width: 140.w,
          fontSize: 10.sp,
          backgroundColor: AppColors.paperGreen,
          borderColor: AppColors.paperGreenBorder,
          extrusionColor: AppColors.paperGreenExtrusion,
        );
      }
      return AppButton.success(
        text: l10n.enteringMatch,
        isLoading: true,
        height: 28.h,
        width: 140.w,
        fontSize: 10.sp,
      );
    }
  }
}
