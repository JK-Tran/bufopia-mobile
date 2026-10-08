import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/home/data/models/home_menu_item_data.dart';
import 'package:bufopia/features/home/presentation/widgets/home_menu/home_menu_spiral_rings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

export 'package:bufopia/features/home/data/models/home_menu_item_data.dart';

/// Thẻ Menu dạng sổ tay / lịch treo lò xo 3D Arcade.
/// Tất cả kích thước nội dung được tính theo widget.height để
/// scale đồng đều trên mọi kích thước màn hình (phone, tablet, iPad).
class HomeMenuItem extends StatefulWidget {
  const HomeMenuItem({
    required this.data,
    required this.onTap,
    this.width,
    this.height,
    this.isPaperTheme = true,
    super.key,
  });

  final HomeMenuItemData data;
  final double? width;
  final double? height;
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final w = widget.width ?? constraints.maxWidth;
        final h = widget.height ?? constraints.maxHeight;
        final isLocked = widget.data.isLocked;

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
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: widget.isPaperTheme
                          ? (isLocked
                                ? AppColors.paperBorder.withValues(alpha: 0.6)
                                : AppColors.paperBorder)
                          : AppColors.white,
                      width: 1.5.w,
                    ),
                    boxShadow: [
                      // Gờ đáy nổi 3D cố định
                      BoxShadow(
                        color: widget.isPaperTheme
                            ? (isLocked
                                  ? AppColors.paperExtrusion.withValues(
                                      alpha: 0.6,
                                    )
                                  : AppColors.paperExtrusion)
                            : AppColors.white.withValues(alpha: 0.85),
                        offset: Offset(0, 3.h),
                      ),
                      // Bóng đổ sàn cố định
                      BoxShadow(
                        color: AppColors.black.withValues(
                          alpha: widget.isPaperTheme ? 0.08 : 0.12,
                        ),
                        offset: Offset(0, 4.h),
                        blurRadius: 4.r,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.r),
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
                            top: (h * 0.08).clamp(14.0, 20.0),
                            left: w * 0.06,
                            right: w * 0.06,
                            height: 1.5.h,
                            child: const HomeMenuDashedLine(),
                          ),

                        // Cột nội dung thẻ
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 20.h,
                          ),
                          child: Column(
                            children: [
                              // 1. Hình minh hoạ 3D ở giữa
                              Expanded(
                                flex: 6,
                                child: Center(
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset(
                                        widget.data.imagePath,
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.contain,
                                        color: isLocked
                                            ? AppColors.black.withValues(
                                                alpha: 0.25,
                                              )
                                            : null,
                                        colorBlendMode: isLocked
                                            ? BlendMode.srcATop
                                            : null,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                Icon(
                                                  Icons.sports_esports_rounded,
                                                  color: isLocked
                                                      ? AppColors.grayMedium
                                                      : AppColors.orangeDark,
                                                  size: 38.r,
                                                ),
                                      ),
                                      if (isLocked)
                                        Container(
                                          padding: EdgeInsets.all(6.r),
                                          decoration: BoxDecoration(
                                            color: AppColors.black.withValues(
                                              alpha: 0.45,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.lock_rounded,
                                            color: AppColors.white,
                                            size: 16.r,
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),

                              AppText.t2(
                                widget.data.title,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: isLocked
                                    ? AppColors.grayMedium
                                    : (widget.isPaperTheme
                                          ? AppColors.paperTextDark
                                          : widget.data.titleColor),
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),

                              SizedBox(height: 4.h),

                              AppText.c1(
                                widget.data.subtitle,
                                fontSize: 10.sp,
                                color: widget.isPaperTheme
                                    ? AppColors.paperTextMedium
                                    : AppColors.grayDark,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),

                              SizedBox(height: 8.h),

                              IgnorePointer(
                                child: AppButton(
                                  width: double.infinity,
                                  isPressed: _isPressed,
                                  text: widget.data.buttonText,
                                  backgroundColor: isLocked
                                      ? AppColors.grayMedium
                                      : (widget.isPaperTheme
                                            ? AppColors.paperGreen
                                            : widget.data.buttonColor),
                                  extrusionColor: isLocked
                                      ? AppColors.grayDark
                                      : (widget.isPaperTheme
                                            ? AppColors.paperGreenExtrusion
                                            : widget.data.buttonExtrusionColor),
                                  borderRadius: BorderRadius.circular(10.r),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14.w,
                                    vertical: 6.h,
                                  ),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  extrusionHeight: 2,
                                  icon: Icon(
                                    isLocked
                                        ? Icons.lock_outline_rounded
                                        : Icons.chevron_right_rounded,
                                    size: 14.r,
                                    color: AppColors.white,
                                  ),
                                  iconAfter: !isLocked,
                                  spacing: 2,
                                ),
                              ),
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
                    top: -5.h,
                    left: w * 0.1,
                    right: w * 0.1,
                    child: const HomeMenuSpiralRings(),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
