import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

/// Kẹp ghim giấy kim loại 3D chuẩn Web (Steel Paperclip Component)
class AppPaperClip extends StatelessWidget {
  const AppPaperClip({
    super.key,
    this.width = 12,
    this.height = 26,
    this.isGold = false,
  });

  final double width;
  final double height;
  final bool isGold;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: _PaperClipPainter(isGold: isGold),
    );
  }
}

class _PaperClipPainter extends CustomPainter {
  const _PaperClipPainter({this.isGold = false});

  final bool isGold;

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;
    final strokeW = (w * 0.16).clamp(1.6, 2.2);

    // 1. Vẽ đường dẫn kẹp giấy chữ U kép chuẩn tỷ lệ Web
    final clipPath = Path()
      // Nhánh ngoài bên trái đi từ đáy lên đỉnh
      ..moveTo(w * 0.2, h * 0.95)
      ..lineTo(w * 0.2, w * 0.35)
      // Vòng cung đỉnh trên cùng (bên ngoài)
      ..arcToPoint(
        Offset(w * 0.8, w * 0.35),
        radius: Radius.circular(w * 0.3),
      )
      // Nhánh ngoài bên phải đi xuống gần đáy
      ..lineTo(w * 0.8, h * 0.88)
      // Vòng cung đáy bên dưới
      ..arcToPoint(
        Offset(w * 0.44, h * 0.88),
        radius: Radius.circular(w * 0.18),
      )
      // Nhánh trong đi lên
      ..lineTo(w * 0.44, h * 0.45)
      // Vòng cung đỉnh bên trong (ngắn hơn đỉnh ngoài)
      ..arcToPoint(
        Offset(w * 0.62, h * 0.45),
        radius: Radius.circular(w * 0.09),
      )
      // Nhánh trong cùng cắm xuống
      ..lineTo(w * 0.62, h * 0.78);

    // 2. Đổ bóng mờ tự nhiên phía sau kẹp kim loại
    final shadowPaint = Paint()
      ..color = AppColors.black.withValues(alpha: 0.22)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeW
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 1.2);

    canvas
      ..save()
      ..translate(0.8, 1.2)
      ..drawPath(clipPath, shadowPaint)
      ..restore();

    // 3. Thân kẹp kim loại màu thép than chì (Graphite/Steel) hoặc Vàng
    final clipPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeW
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: isGold
            ? const [
                AppColors.woodParchmentLight, // Ánh sáng vàng bóng
                AppColors.gold, // Màu vàng đồng
                AppColors.orangeDark, // Vàng đậm tạo khối
                AppColors.brownDark, // Bóng đổ sâu
              ]
            : const [
                Color(0xFF6E6862), // Kim loại xám thép sáng góc trên trái
                Color(0xFF48423D), // Thân kẹp than chì đậm thực tế
                Color(0xFF2E2926), // Góc khuất tối tạo độ nổi 3D
                Color(0xFF554E48), // Ánh phản xạ kim loại
              ],
      ).createShader(Rect.fromLTWH(0, 0, w, h));

    canvas.drawPath(clipPath, clipPaint);

    // 4. Ánh sáng bóng kim loại (Specular Highlight) góc trên bên trái
    final highlightPath = Path()
      ..moveTo(w * 0.2, h * 0.65)
      ..lineTo(w * 0.2, w * 0.35)
      ..arcToPoint(
        Offset(w * 0.55, w * 0.16),
        radius: Radius.circular(w * 0.3),
      );

    final highlightPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeW * 0.45
      ..strokeCap = StrokeCap.round
      ..color = isGold
          ? AppColors.white.withValues(alpha: 0.45)
          : const Color(0xFFD8D2CB).withValues(alpha: 0.6);

    canvas.drawPath(highlightPath, highlightPaint);
  }

  @override
  bool shouldRepaint(covariant _PaperClipPainter oldDelegate) =>
      oldDelegate.isGold != isGold;
}

/// Alias tương thích ngược
typedef PaperClipWidget = AppPaperClip;
