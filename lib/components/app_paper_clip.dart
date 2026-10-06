import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

/// Kẹp ghim giấy bằng vàng 3D Arcade (Golden Paperclip Component)
class AppPaperClip extends StatelessWidget {
  const AppPaperClip({
    super.key,
    this.width = 10,
    this.height = 20,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: _PaperClipPainter(),
    );
  }
}

class _PaperClipPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    // 1. Đổ bóng mờ nhẹ bên dưới kẹp giấy
    final shadowPaint = Paint()
      ..color = AppColors.black.withValues(alpha: 0.2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 1.5);

    final shadowPath = Path()
      ..moveTo(w * 0.25 + 0.5, h * 0.9 + 1.0)
      ..lineTo(w * 0.25 + 0.5, h * 0.25 + 1.0)
      ..arcToPoint(
        Offset(w * 0.75 + 0.5, h * 0.25 + 1.0),
        radius: Radius.circular(w * 0.25),
      )
      ..lineTo(w * 0.75 + 0.5, h * 0.8 + 1.0);

    canvas.drawPath(shadowPath, shadowPaint);

    // 2. Thân kẹp kim loại vàng (Gradient vàng đồng 3D)
    final clipPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..shader = const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          AppColors.woodParchmentLight, // Ánh sáng bóng vàng
          AppColors.gold, // Màu vàng đồng
          AppColors.orangeDark, // Vàng đậm tạo khối
          AppColors.brownDark, // Bóng đổ sâu
        ],
      ).createShader(Rect.fromLTWH(0, 0, w, h));

    // Vẽ hình dạng kẹp giấy chuẩn (vòng cung ngoài và vòng bên trong)
    final clipPath = Path()
      // Nhánh trái ngoài
      ..moveTo(w * 0.2, h * 0.9)
      ..lineTo(w * 0.2, h * 0.25)
      // Vòm cong đỉnh trên cùng
      ..arcToPoint(
        Offset(w * 0.8, h * 0.25),
        radius: Radius.circular(w * 0.3),
      )
      // Nhánh phải ngoài
      ..lineTo(w * 0.8, h * 0.85)
      // Vòm cong đáy ngoài
      ..arcToPoint(
        Offset(w * 0.45, h * 0.85),
        radius: Radius.circular(w * 0.175),
      )
      // Nhánh giữa đi lên
      ..lineTo(w * 0.45, h * 0.45)
      // Vòm cong bên trong
      ..arcToPoint(
        Offset(w * 0.65, h * 0.45),
        radius: Radius.circular(w * 0.1),
      )
      // Nhánh trong cùng cắm xuống
      ..lineTo(w * 0.65, h * 0.75);

    canvas.drawPath(clipPath, clipPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Alias tương thích ngược
typedef PaperClipWidget = AppPaperClip;
