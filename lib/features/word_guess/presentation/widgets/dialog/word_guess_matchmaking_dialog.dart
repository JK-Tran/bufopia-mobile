import 'dart:async';

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/components/app_radar_scanner.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/domain/usecases/get_cached_user_use_case.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/word_guess_socket_service.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại Tìm Trận Online cho trò chơi Đoán Từ Khuyết (Word Guess).
/// Đồng bộ hoàn toàn UI/UX Radar Scanner với Vocabulary và Word Chain.
class WordGuessMatchmakingDialog extends StatefulWidget {
  const WordGuessMatchmakingDialog({
    required this.onMatched,
    required this.topic,
    super.key,
  });

  final String topic;
  final void Function(
    String roomCode,
    String rivalName,
    String rivalAvatar,
  )
  onMatched;

  static Future<void> show(
    BuildContext context, {
    required String topic,
    required void Function(
      String roomCode,
      String rivalName,
      String rivalAvatar,
    )
    onMatched,
  }) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.55),
      builder: (_) => WordGuessMatchmakingDialog(
        topic: topic,
        onMatched: onMatched,
      ),
    );
  }

  @override
  State<WordGuessMatchmakingDialog> createState() =>
      _WordGuessMatchmakingDialogState();
}

class _WordGuessMatchmakingDialogState extends State<WordGuessMatchmakingDialog>
    with TickerProviderStateMixin {
  late final WordGuessSocketService _socketService;
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
    _socketService = sl<WordGuessSocketService>();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _startTimer();
    _connectMatchmake();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted && !_isMatched) {
        setState(() => _secondsElapsed++);
      }
    });
  }

  Future<void> _connectMatchmake() async {
    final authState = context.read<AuthBloc>().state;
    final cachedUser = sl<GetCachedUserUseCase>().execute();
    final user = authState.currentUser ?? cachedUser;

    final token = await sl<FirebaseAuthService>().getIdToken();
    final uid = user?.uid.isNotEmpty == true ? user!.uid : 'guest';
    final name = (user?.displayName.isNotEmpty == true)
        ? user!.displayName
        : 'Người chơi';
    final avatar = user?.avatarUrl;

    _subscription = _socketService.eventStream.listen(
      _handleSocketEvent,
      onError: (Object error) {
        if (!mounted) return;
        setState(() => _errorMessage = 'Lỗi kết nối: $error');
      },
    );

    await _socketService.connectMatchmake(
      uid: uid,
      name: name,
      topic: widget.topic,
      token: token,
      avatar: avatar,
    );
  }

  void _handleSocketEvent(SocketEvent event) {
    if (!mounted) return;

    if (event is MatchmakeMatchedEvent) {
      _timer?.cancel();
      setState(() {
        _isMatched = true;
        _matchedEvent = event;
      });
      SoundManager.playWin();

      Future<void>.delayed(const Duration(milliseconds: 1200), () {
        if (!mounted) return;
        Navigator.of(context).pop();
        widget.onMatched(
          event.roomCode,
          event.rivalName,
          event.rivalAvatar,
        );
      });
    } else if (event is SocketErrorEvent) {
      setState(() => _errorMessage = event.message);
      AppToast.showError(context, event.message);
    }
  }

  void _onCancel() {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    _socketService
      ..sendCancel()
      ..disconnect();
    Navigator.of(context).pop();
    AppToast.showWarning(context, 'Đã hủy tìm trận đấu.');
  }

  @override
  void dispose() {
    _timer?.cancel();
    _subscription?.cancel();
    _pulseController.dispose();
    if (!_isMatched) {
      _socketService
        ..sendCancel()
        ..disconnect();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final user = context.select<AuthBloc, User?>((b) => b.state.currentUser);

    return AppGameDialog(
      title: 'TÌM TRẬN ONLINE',
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
          '1 VS 1 NGẪU NHIÊN',
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

          // Thông báo lỗi nếu có
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
            avatarUrl: user?.avatarUrl,
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
                          (isPaper
                                  ? AppColors.paperGreen
                                  : AppColors.radarGreenLight)
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
                        ? '🎉 ĐÃ TÌM THẤY: '
                              '${_matchedEvent!.rivalName.toUpperCase()}!'
                        : '🎉 ĐÃ TÌM THẤY ĐỐI THỦ!')
                  : (widget.topic != 'auto'
                        ? 'ĐANG TÌM: ${widget.topic.toUpperCase()}...'
                        : 'ĐANG TÌM ĐỐI THỦ...'),
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

  /// Nút hành động: HỦY TÌM TRẬN hoặc VÀO TRẬN NGAY
  Widget _buildActionButton(bool isPaper) {
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
          text: 'HỦY TÌM TRẬN',
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
        text: 'HỦY TÌM TRẬN',
      );
    } else {
      if (isPaper) {
        return AppButton(
          text: 'VÀO TRẬN NGAY...',
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
        text: 'VÀO TRẬN NGAY...',
        isLoading: true,
        height: 28.h,
        width: 140.w,
        fontSize: 10.sp,
      );
    }
  }
}
