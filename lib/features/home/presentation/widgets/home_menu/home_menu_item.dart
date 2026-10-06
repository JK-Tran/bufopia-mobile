import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/home/data/models/home_menu_item_data.dart';
import 'package:bufopia/features/home/presentation/widgets/home_menu/home_menu_spiral_rings.dart';
import 'package:flutter/material.dart';

export 'package:bufopia/features/home/data/models/home_menu_item_data.dart';

/// Thẻ Menu dạng sổ tay / lịch treo lò xo 3D Arcade.
/// Tất cả kích thước nội dung được tính theo widget.height để
/// scale đồng đều trên mọi kích thước màn hình (phone, tablet, iPad).
class HomeMenuItem extends StatefulWidget {
  const HomeMenuItem({
    required this.data,
    required this.width,
    required this.height,
    required this.onTap,
    this.isPaperTheme = true,
    super.key,
  });

  final HomeMenuItemData data;
  final double width;
  final double height;
  final VoidCallback onTap;
  final bool isPaperTheme;

  @override
  State<HomeMenuItem> createState() => _HomeMenuItemState();
}

class _HomeMenuItemState extends State<HomeMenuItem> {
  bool _isPressed = false;

  void _onTapDown(TapDownDetails _) {
    setState(() => _isPressed = true);
  }

  void _onTapUp(TapUpDetails _) {
    setState(() => _isPressed = false);
    widget.onTap();
  }

  void _onTapCancel() {
    setState(() => _isPressed = false);
  }

  @override
  Widget build(BuildContext context) {
    final h = widget.height;
    final w = widget.width;

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: w,
        height: h,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // 1. Khung thẻ menu chính
            Container(
              width: w,
              height: h,
              decoration: BoxDecoration(
                color: widget.isPaperTheme
                    ? AppColors.paperSurface
                    : AppColors.white,
                borderRadius: BorderRadius.circular(
                  (h * 0.09).clamp(10.0, 20.0),
                ),
                border: Border.all(
                  color: widget.isPaperTheme
                      ? AppColors.paperBorder
                      : AppColors.white,
                  width: (w * 0.008).clamp(1.5, 4.0),
                ),
                boxShadow: [
                  // Gờ đáy nổi 3D cố định
                  BoxShadow(
                    color: widget.isPaperTheme
                        ? AppColors.paperExtrusion
                        : AppColors.white.withValues(alpha: 0.85),
                    offset: Offset(0, h * 0.013),
                  ),
                  // Bóng đổ sàn cố định
                  BoxShadow(
                    color: AppColors.black.withValues(
                      alpha: widget.isPaperTheme ? 0.10 : 0.14,
                    ),
                    offset: Offset(0, h * 0.026),
                    blurRadius: h * 0.032,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  (h * 0.09).clamp(10.0, 20.0) - 2,
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // Nền thẻ: Paper theme dùng nền kem giấy
                    if (widget.isPaperTheme)
                      const ColoredBox(color: AppColors.paperSurface)
                    else
                      Image.asset(
                        widget.data.backgroundImagePath,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const ColoredBox(color: AppColors.skyLight),
                      ),

                    // Đường nét đứt gập sổ tay (chỉ hiện ở paper theme)
                    if (widget.isPaperTheme)
                      Positioned(
                        top: h * 0.09,
                        left: w * 0.06,
                        right: w * 0.06,
                        height: (h * 0.01).clamp(1.0, 2.5),
                        child: const HomeMenuDashedLine(),
                      ),

                    // Cột nội dung thẻ
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: w * 0.06,
                        vertical: h * 0.04,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: widget.isPaperTheme ? h * 0.05 : h * 0.02,
                          ),

                          // 1. Hình minh hoạ 3D ở giữa
                          Flexible(
                            flex: 3,
                            child: Center(
                              child: Image.asset(
                                widget.data.imagePath,
                                height:
                                    (h * (widget.isPaperTheme ? 0.35 : 0.38))
                                        .clamp(52.0, 115.0),
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) =>
                                    Icon(
                                      Icons.sports_esports_rounded,
                                      color: AppColors.white,
                                      size:
                                          (h *
                                                  (widget.isPaperTheme
                                                      ? 0.35
                                                      : 0.38))
                                              .clamp(52.0, 115.0),
                                    ),
                              ),
                            ),
                          ),

                          // 2. Nhóm Tiêu đề & Phụ đề
                          Flexible(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                AppText.t2(
                                  widget.data.title,
                                  fontSize: (h * 0.088).clamp(13.5, 23.0),
                                  fontWeight: FontWeight.w700,
                                  color: widget.isPaperTheme
                                      ? AppColors.paperTextDark
                                      : widget.data.titleColor,
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(
                                  height: (h * 0.012).clamp(3.0, 6.0),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: w * 0.02,
                                  ),
                                  child: AppText.c1(
                                    widget.data.subtitle,
                                    fontSize: (h * 0.056).clamp(10.5, 15.5),
                                    color: widget.isPaperTheme
                                        ? AppColors.paperTextMedium
                                        : AppColors.grayDark,
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 3. Nút hành động dùng AppButton
                          Flexible(
                            flex: 3,
                            child: Center(
                              child: IgnorePointer(
                                child: AppButton(
                                  isPressed: _isPressed,
                                  text: widget.data.buttonText,
                                  backgroundColor: widget.isPaperTheme
                                      ? AppColors.paperGreen
                                      : widget.data.buttonColor,
                                  extrusionColor: widget.isPaperTheme
                                      ? AppColors.paperGreenExtrusion
                                      : widget.data.buttonExtrusionColor,
                                  borderRadius: BorderRadius.circular(12),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: (w * 0.085).clamp(14.0, 32.0),
                                    vertical: (h * 0.036).clamp(6.0, 12.0),
                                  ),
                                  fontSize: (h * 0.065).clamp(11.0, 16.5),
                                  fontWeight: FontWeight.w700,
                                  extrusionHeight: 2,
                                  icon: Icon(
                                    Icons.chevron_right_rounded,
                                    size: (h * 0.08).clamp(14.0, 20.0),
                                    color: AppColors.white,
                                  ),
                                  iconAfter: true,
                                  spacing: 2,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: h * 0.008),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // 2. Móc neo lò xo 3D (chỉ hiện ở paper theme)
            if (widget.isPaperTheme)
              Positioned(
                top: -(h * 0.022).clamp(2.0, 6.0),
                left: w * 0.1,
                right: w * 0.1,
                child: const HomeMenuSpiralRings(),
              ),
          ],
        ),
      ),
    );
  }
}
