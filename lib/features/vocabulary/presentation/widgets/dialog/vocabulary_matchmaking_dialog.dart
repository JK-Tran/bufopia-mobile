import 'dart:async';
import 'dart:math' as math;

import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/components/app_snack_bar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/socket_service.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

/// Dialog Tìm Trận Online thuộc Home Menu phong cách Radar Scanner
class VocabularyMatchmakingDialog extends StatefulWidget {
  const VocabularyMatchmakingDialog({
    required this.onMatched,
    super.key,
    this.topic = 'auto',
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
    required void Function(
      String roomCode,
      String rivalName,
      String rivalAvatar,
    )
    onMatched,
    String topic = 'auto',
  }) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.55),
      builder: (_) => VocabularyMatchmakingDialog(
        onMatched: onMatched,
        topic: topic,
      ),
    );
  }

  @override
  State<VocabularyMatchmakingDialog> createState() =>
      _VocabularyMatchmakingDialogState();
}

class _VocabularyMatchmakingDialogState
    extends State<VocabularyMatchmakingDialog>
    with TickerProviderStateMixin {
  late final SocketService _socketService;
  StreamSubscription<SocketEvent>? _subscription;
  Timer? _timer;
  int _secondsElapsed = 0;

  // Hiệu ứng nhịp đập cho chấm xanh trạng thái
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnimation;

  // Hiệu ứng quay 360 độ của tia quét radar
  late final AnimationController _radarController;

  bool _isMatched = false;
  MatchmakeMatchedEvent? _matchedEvent;
  String? _errorMessage;

  /// Topic ID nhận từ server sau khi vào hàng đợi (ví dụ: 'animals', 'auto')
  String? _queuedTopicId;

  @override
  void initState() {
    super.initState();
    _socketService = GetIt.instance.get<SocketService>();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _radarController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    )..repeat();

    _startTimer();
    _connectMatchmake();
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
    final currentUid = currentUser?.uid;
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
      topic: widget.topic,
    );

    // Kiểm tra nếu người dùng đã đóng dialog trong quá trình kết nối
    if (!mounted) {
      _socketService.disconnect();
      return;
    }

    // KHÔNG gửi ready ở đây — Matchmaker không cần ready.
    // ready chỉ được gửi sau khi nhận match_start từ GameRoom.

    _subscription = _socketService.eventStream.listen((event) {
      if (!mounted) return;
      if (event is MatchmakeQueuedEvent) {
        // Đã vào hàng đợi — cập nhật topic
        if (mounted) {
          setState(() {
            _queuedTopicId = event.topicId;
          });
        }
      } else if (event is MatchmakeMatchedEvent) {
        setState(() {
          _isMatched = true;
          _matchedEvent = event;
        });

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
      } else if (event is SocketReconnectingEvent) {
        setState(() {
          _errorMessage =
              'Mất kết nối! Đang thử kết nối lại '
              '(${event.attempt}/${event.maxAttempts})...';
        });
      } else if (event is SocketReconnectedEvent) {
        setState(() {
          _errorMessage = null;
        });
        // Không gửi ready — matchmaker không cần
      } else if (event is SocketErrorEvent) {
        setState(() {
          _errorMessage = event.message;
        });
      }
    });
  }

  void _onCancel() {
    if (!mounted) return;
    // Gửi cancel trước khi đóng để server biết
    _socketService.sendCancel();
    Navigator.of(context).pop();
    _socketService.disconnect();
    AppSnackBar.showWarning(context, 'Đã hủy tìm trận đấu.');
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pulseController.dispose();
    _radarController.dispose();
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

          // Thông báo lỗi (nếu có lỗi kết nối)
          if (_errorMessage != null) ...[
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
          AnimatedBuilder(
            animation: _radarController,
            builder: (context, _) {
              return _RadarScannerWidget(
                rotationAngle: _radarController.value * 2 * math.pi,
                avatarUrl: currentUser?.avatarUrl,
                isMatched: _isMatched,
                isPaperTheme: isPaper,
                rivalName: _matchedEvent?.rivalName,
                rivalAvatar: _matchedEvent?.rivalAvatar,
              );
            },
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
                  : (_queuedTopicId != null && _queuedTopicId != 'auto'
                        ? 'ĐANG TÌM: ${_queuedTopicId!.toUpperCase()}...'
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

  /// Nút hành động phía dưới: HỦY TÌM TRẬN (AppButton.danger)
  /// hoặc VÀO TRẬN (AppButton.success)
  Widget _buildActionButton(bool isPaper) {
    if (!_isMatched) {
      if (isPaper) {
        return AppButton(
          height: 28.h,
          width: 136.w,
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
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
          fontWeight: FontWeight.w700,
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

/// Widget Radar Scanner với các vòng tròn đồng tâm và tia quét xoay
class _RadarScannerWidget extends StatelessWidget {
  const _RadarScannerWidget({
    required this.rotationAngle,
    required this.avatarUrl,
    required this.isMatched,
    this.isPaperTheme = false,
    this.rivalName,
    this.rivalAvatar,
  });

  final double rotationAngle;
  final String? avatarUrl;
  final bool isMatched;
  final bool isPaperTheme;
  final String? rivalName;
  final String? rivalAvatar;

  @override
  Widget build(BuildContext context) {
    final radarSize = 88.r;

    return SizedBox(
      width: radarSize,
      height: radarSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 1. Radar Background Painter: Vẽ các vòng tròn và tia quét xoay
          CustomPaint(
            size: Size(radarSize, radarSize),
            painter: _RadarPainter(
              angle: rotationAngle,
              scanColor: isPaperTheme
                  ? AppColors.paperGreen
                  : AppColors.radarGreenLight,
              circleColor: isPaperTheme
                  ? AppColors.paperBorder
                  : AppColors.radarGreenLight.withValues(alpha: 0.45),
              isMatched: isMatched,
            ),
          ),

          // 2. Avatar của Người dùng hiện tại ở chính giữa
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color:
                      (isMatched
                              ? AppColors.radarGreen
                              : (isPaperTheme
                                    ? AppColors.paperGreen
                                    : AppColors.radarGreenLight))
                          .withValues(alpha: 0.35),
                  blurRadius: 8.r,
                  spreadRadius: 1.r,
                ),
              ],
            ),
            child: AppAvatar(
              size: 34.r,
              avatarUrl: avatarUrl,
              borderWidth: 2.w,
              borderColor: isPaperTheme
                  ? AppColors.paperBorder
                  : AppColors.white,
            ),
          ),

          // 3. Nếu tìm thấy đối thủ, hiển thị blip đối thủ trên radar
          if (isMatched && rivalAvatar != null)
            Positioned(
              right: 4.w,
              top: 4.h,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.radarGreen.withValues(alpha: 0.5),
                      blurRadius: 6.r,
                      spreadRadius: 1.r,
                    ),
                  ],
                ),
                child: AppAvatar(
                  size: 24.r,
                  avatarUrl: rivalAvatar,
                  borderWidth: 1.6.w,
                  borderColor: AppColors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

/// CustomPainter vẽ các vòng tròn đồng tâm và chùm quét radar góc 90 độ
class _RadarPainter extends CustomPainter {
  _RadarPainter({
    required this.angle,
    required this.scanColor,
    required this.circleColor,
    required this.isMatched,
  });

  final double angle;
  final Color scanColor;
  final Color circleColor;
  final bool isMatched;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // A. 3 Vòng tròn đồng tâm
    final ringPaint = Paint()
      ..color = circleColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    canvas
      ..drawCircle(center, radius - 1.0, ringPaint)
      ..drawCircle(center, radius * 0.68, ringPaint)
      ..drawCircle(center, radius * 0.40, ringPaint);

    // B. Chữ thập định vị mờ
    final crossPaint = Paint()
      ..color = circleColor.withValues(alpha: 0.22)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8;
    canvas
      ..drawLine(
        Offset(center.dx - radius, center.dy),
        Offset(center.dx + radius, center.dy),
        crossPaint,
      )
      ..drawLine(
        Offset(center.dx, center.dy - radius),
        Offset(center.dx, center.dy + radius),
        crossPaint,
      );

    // C. Tia quét hình nan quạt (90 độ) xoay vòng
    if (!isMatched) {
      canvas
        ..save()
        ..translate(center.dx, center.dy)
        ..rotate(angle);

      final sweepRect = Rect.fromCircle(
        center: Offset.zero,
        radius: radius - 1.0,
      );
      final sweepPaint = Paint()
        ..shader = SweepGradient(
          endAngle: math.pi / 2,
          colors: [
            scanColor.withValues(alpha: 0),
            scanColor.withValues(alpha: 0.30),
          ],
        ).createShader(sweepRect)
        ..style = PaintingStyle.fill;

      canvas.drawArc(
        sweepRect,
        0,
        math.pi / 2,
        true,
        sweepPaint,
      );

      // Đường viền dẫn sáng của tia quét
      final beamPaint = Paint()
        ..color = scanColor
        ..strokeWidth = 1.6
        ..style = PaintingStyle.stroke;
      canvas
        ..drawLine(
          Offset.zero,
          Offset(
            (radius - 1.0) * math.cos(math.pi / 2),
            (radius - 1.0) * math.sin(math.pi / 2),
          ),
          beamPaint,
        )
        ..restore();
    } else {
      // Khi đã tìm thấy, vòng tròn radar sáng rực ánh xanh thành công
      final lockPaint = Paint()
        ..color = AppColors.radarGreen.withValues(alpha: 0.22)
        ..style = PaintingStyle.fill;
      canvas.drawCircle(center, radius - 1.0, lockPaint);
    }
  }

  @override
  bool shouldRepaint(covariant _RadarPainter oldDelegate) =>
      oldDelegate.angle != angle ||
      oldDelegate.isMatched != isMatched ||
      oldDelegate.scanColor != scanColor ||
      oldDelegate.circleColor != circleColor;
}
