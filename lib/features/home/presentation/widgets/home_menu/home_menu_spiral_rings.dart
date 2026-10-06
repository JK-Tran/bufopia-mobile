import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hàng 6 khuyên lò xo kim loại 3D nhô lên ở đỉnh sổ tay (Paper Theme)
class HomeMenuSpiralRings extends StatelessWidget {
  const HomeMenuSpiralRings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _SpiralRingItem(),
        _SpiralRingItem(),
        _SpiralRingItem(),
        _SpiralRingItem(),
        _SpiralRingItem(),
        _SpiralRingItem(),
      ],
    );
  }
}

/// Móc treo / khuyên lò xo kim loại 3D xuyên qua lỗ đục
class _SpiralRingItem extends StatelessWidget {
  const _SpiralRingItem();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 12.w,
      height: 16.h,
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          // 1. Lỗ đục giấy tròn tối màu tạo chiều sâu
          Positioned(
            bottom: 0,
            child: Container(
              width: 9.r,
              height: 9.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.spiralRingHole,
                border: Border.all(
                  color: AppColors.spiralRingHoleBorder.withValues(alpha: 0.8),
                  width: 0.8.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: 0.25),
                    offset: Offset(0, 1.h),
                    blurRadius: 1.r,
                  ),
                ],
              ),
            ),
          ),

          // 2. Móc treo kim loại 3D cắm xuyên vào tâm lỗ
          Positioned(
            top: 0,
            bottom: 2.h,
            child: Container(
              width: 3.5.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.r),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.spiralRingGrad1,
                    AppColors.spiralRingGrad2,
                    AppColors.spiralRingGrad3,
                    AppColors.spiralRingGrad4,
                  ],
                  stops: [0.0, 0.35, 0.65, 1.0],
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: 0.3),
                    offset: Offset(0.8.w, 1.h),
                    blurRadius: 1.r,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Đường nét đứt trang trí ngang sổ tay
class HomeMenuDashedLine extends StatelessWidget {
  const HomeMenuDashedLine({
    super.key,
    this.color = AppColors.paperDottedLine,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedLinePainter(color: color),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  const _DashedLinePainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.2
      ..style = PaintingStyle.stroke;

    const dashWidth = 4.0;
    const dashSpace = 3.0;
    var startX = 0.0;
    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, size.height / 2),
        Offset(startX + dashWidth, size.height / 2),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
