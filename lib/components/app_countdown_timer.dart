import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

/// Đồng hồ đếm ngược 3D hình chuông báo thức với hiệu ứng nhịp tim đập
/// (Heartbeat Pulse animation)
class AppCountdownTimer extends StatefulWidget {
  const AppCountdownTimer({
    required this.seconds,
    this.size = 48.0,
    this.fontSize,
    this.isUrgentThreshold = 3,
    this.isPaper = false,
    this.showUnit = true,
    super.key,
  });

  final int seconds;
  final double size;
  final double? fontSize;
  final int isUrgentThreshold;
  final bool isPaper;
  final bool showUnit;

  static const String clockAsset = 'assets/images/quick_battle/clock.png';

  @override
  State<AppCountdownTimer> createState() => _AppCountdownTimerState();
}

class _AppCountdownTimerState extends State<AppCountdownTimer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _heartbeatAnimation;

  @override
  void initState() {
    super.initState();
    final isUrgent = widget.seconds <= widget.isUrgentThreshold;
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: isUrgent ? 550 : 1000),
    );

    _initAnimation();
    _controller.repeat();
  }

  void _initAnimation() {
    // Hiệu ứng nhịp tim đập kép (Lub-dub bounce):
    // Nhịp 1: 1 -> 1.12 -> 1.02
    // Nhịp 2 (đỉnh nhịp): 1.02 -> 1.18 -> 1
    // Nghỉ: 1
    _heartbeatAnimation = TweenSequence<double>([
      // Nhịp 1
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1,
          end: 1.12,
        ).chain(CurveTween(curve: Curves.easeOutQuad)),
        weight: 15,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1.12,
          end: 1.02,
        ).chain(CurveTween(curve: Curves.easeInQuad)),
        weight: 15,
      ),
      // Nhịp 2 (nhịp đập mạnh hơn)
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1.02,
          end: 1.18,
        ).chain(CurveTween(curve: Curves.easeOutCubic)),
        weight: 22,
      ),
      TweenSequenceItem(
        tween: Tween<double>(
          begin: 1.18,
          end: 1,
        ).chain(CurveTween(curve: Curves.easeInOutCubic)),
        weight: 23,
      ),
      // Pha nghỉ trước nhịp tiếp theo
      TweenSequenceItem(
        tween: ConstantTween<double>(1),
        weight: 25,
      ),
    ]).animate(_controller);
  }

  @override
  void didUpdateWidget(covariant AppCountdownTimer oldWidget) {
    super.didUpdateWidget(oldWidget);
    final isUrgent = widget.seconds <= widget.isUrgentThreshold;
    final wasUrgent = oldWidget.seconds <= oldWidget.isUrgentThreshold;

    // Khi thời gian chuyển sang khẩn cấp hoặc ngược lại, thay đổi tốc độ đập
    if (isUrgent != wasUrgent) {
      _controller.duration = Duration(milliseconds: isUrgent ? 550 : 1000);
      if (_controller.isAnimating) {
        _controller.repeat();
      }
    }

    // Mỗi khi số giây giảm (mỗi giây), kích hoạt nhịp nảy lập tức
    if (oldWidget.seconds != widget.seconds) {
      _controller
        ..forward(from: 0)
        ..repeat();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isUrgent = widget.seconds <= widget.isUrgentThreshold;

    // Màu chữ hiển thị bên trong mặt đồng hồ
    final textColor = isUrgent
        ? AppColors.red
        : (widget.isPaper ? AppColors.paperTextDark : AppColors.grayDark);

    // Cỡ chữ tự động scale chẵn theo kích thước đồng hồ
    final autoFontSize = widget.fontSize ?? (widget.size >= 48 ? 14.0 : 12.0);

    final displayLabel = widget.showUnit
        ? '${widget.seconds}s'
        : '${widget.seconds}';

    return ScaleTransition(
      scale: _heartbeatAnimation,
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Hiệu ứng phát sáng đỏ phía sau khi thời gian khẩn cấp
            if (isUrgent)
              Container(
                width: widget.size * 0.82,
                height: widget.size * 0.82,
                margin: EdgeInsets.only(top: widget.size * 0.12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.red.withValues(alpha: 0.4),
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ],
                ),
              ),

            // Ảnh 3D Đồng hồ chuông báo thức
            Image.asset(
              AppCountdownTimer.clockAsset,
              width: widget.size,
              height: widget.size,
              fit: BoxFit.contain,
            ),

            // Số giây hiển thị chuẩn tâm mặt đồng hồ tròn màu trắng
            Align(
              alignment: const Alignment(0, 0.12),
              child: AppText.t2(
                displayLabel,
                fontSize: autoFontSize,
                fontWeight: FontWeight.w700,
                color: textColor,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
