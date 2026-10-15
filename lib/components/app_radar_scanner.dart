import 'dart:math' as math;

import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Radar quét tìm đối thủ trực tuyến (Matchmaking Radar Scanner)
/// Tự động xoay tia quét 90 độ, khóa mục tiêu khi tìm thấy đối thủ
class AppRadarScanner extends StatefulWidget {
  const AppRadarScanner({
    required this.isMatched,
    super.key,
    this.avatarUrl,
    this.rivalAvatar,
    this.isPaperTheme = false,
    this.size,
    this.rotationDuration = const Duration(milliseconds: 2200),
  });

  final bool isMatched;
  final String? avatarUrl;
  final String? rivalAvatar;
  final bool isPaperTheme;
  final double? size;
  final Duration rotationDuration;

  @override
  State<AppRadarScanner> createState() => _AppRadarScannerState();
}

class _AppRadarScannerState extends State<AppRadarScanner>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.rotationDuration,
    );
    if (!widget.isMatched) {
      _controller.repeat();
    }
  }

  @override
  void didUpdateWidget(covariant AppRadarScanner oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isMatched && !oldWidget.isMatched) {
      _controller.stop();
    } else if (!widget.isMatched && oldWidget.isMatched) {
      _controller.repeat();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final radarSize = widget.size ?? 88.r;

    return SizedBox(
      width: radarSize,
      height: radarSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 1. Radar Background Painter: Vẽ các vòng tròn và tia quét xoay
          AnimatedBuilder(
            animation: _controller,
            builder: (context, _) {
              return CustomPaint(
                size: Size(radarSize, radarSize),
                painter: _RadarPainter(
                  angle: _controller.value * 2 * math.pi,
                  scanColor: widget.isPaperTheme
                      ? AppColors.paperGreen
                      : AppColors.radarGreenLight,
                  circleColor: widget.isPaperTheme
                      ? AppColors.paperBorder
                      : AppColors.radarGreenLight.withValues(alpha: 0.45),
                  isMatched: widget.isMatched,
                ),
              );
            },
          ),

          // 2. Avatar của Người dùng hiện tại ở chính giữa
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color:
                      (widget.isMatched
                              ? AppColors.radarGreen
                              : (widget.isPaperTheme
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
              avatarUrl: widget.avatarUrl,
              borderWidth: 2.w,
              borderColor: widget.isPaperTheme
                  ? AppColors.paperBorder
                  : AppColors.white,
            ),
          ),

          // 3. Nếu tìm thấy đối thủ, hiển thị blip đối thủ trên radar
          if (widget.isMatched)
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
                  avatarUrl: widget.rivalAvatar,
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
