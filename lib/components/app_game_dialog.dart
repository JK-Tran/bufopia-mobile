import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Khung Dialog chuẩn phong cách 3D Game cho màn hình Landscape
class AppGameDialog extends StatelessWidget {
  const AppGameDialog({
    required this.title,
    required this.child,
    super.key,
    this.icon,
    this.headerTrailing,
    this.footerText = '⭐ Học vui mỗi ngày - Rèn luyện từ vựng tiếng Anh ⭐',
    this.footerChild,
    this.onClose,
    this.maxWidth,
    this.maxHeight,
    this.padding,
    this.backgroundColor,
    this.borderColor,
    this.headerGradientColors,
    this.boxShadow,
    this.footerBackgroundColor,
    this.footerBorderColor,
    this.footerTextColor,
    this.headerTitleColor,
  });

  final String title;
  final Widget child;
  final IconData? icon;
  final Widget? headerTrailing;
  final String? footerText;
  final Widget? footerChild;
  final VoidCallback? onClose;
  final double? maxWidth;
  final double? maxHeight;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? borderColor;
  final List<Color>? headerGradientColors;
  final List<BoxShadow>? boxShadow;
  final Color? footerBackgroundColor;
  final Color? footerBorderColor;
  final Color? footerTextColor;
  final Color? headerTitleColor;

  static Future<T?> show<T>({
    required BuildContext context,
    required Widget child,
    required String title,
    IconData? icon,
    Widget? headerTrailing,
    String? footerText,
    Widget? footerChild,
    VoidCallback? onClose,
    double? maxWidth,
    double? maxHeight,
    EdgeInsetsGeometry? padding,
    Color? backgroundColor,
    Color? borderColor,
    List<Color>? headerGradientColors,
    List<BoxShadow>? boxShadow,
    Color? footerBackgroundColor,
    Color? footerBorderColor,
    Color? footerTextColor,
    Color? headerTitleColor,
  }) {
    return showDialog<T>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (ctx) => AppGameDialog(
        title: title,
        icon: icon,
        headerTrailing: headerTrailing,
        footerText: footerText,
        footerChild: footerChild,
        onClose: onClose,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        padding: padding,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        headerGradientColors: headerGradientColors,
        boxShadow: boxShadow,
        footerBackgroundColor: footerBackgroundColor,
        footerBorderColor: footerBorderColor,
        footerTextColor: footerTextColor,
        headerTitleColor: headerTitleColor,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: maxWidth ?? 520.w,
          maxHeight: maxHeight ?? 330.h,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.white,
          borderRadius: BorderRadius.circular(20.w),
          border: Border.all(
            color: borderColor ?? AppColors.blueLight,
            width: 2.w,
          ),
          boxShadow:
              boxShadow ??
              [
                BoxShadow(
                  color: AppColors.blue.withValues(alpha: 0.25),
                  blurRadius: 18.w,
                  offset: Offset(0, 8.h),
                ),
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.16),
                  blurRadius: 24.w,
                  offset: Offset(0, 12.h),
                ),
              ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ── 1. Header Bar ──────────────────────────────────────────
              _buildHeader(context),

              // ── 2. Scrollable Body (Tự động co theo nội dung) ──────────
              Flexible(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: padding ?? EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 6.h),
                  child: child,
                ),
              ),

              // ── 3. Footer Bar ──────────────────────────────────────────
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final gradientColors =
        headerGradientColors ??
        const [
          AppColors.blueLight,
          AppColors.blueDark,
        ];

    return Container(
      height: 30.h,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
      ),
      child: Row(
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              color: headerTitleColor ?? AppColors.white,
              size: 20.w,
            ),
            SizedBox(width: 8.w),
          ],
          AppText.t3(
            title,
            fontWeight: FontWeight.w900,
            fontSize: 20.sp,
            color: headerTitleColor ?? AppColors.white,
            shadows: [
              Shadow(
                color: AppColors.black.withValues(alpha: 0.25),
                offset: const Offset(0, 1.5),
                blurRadius: 3,
              ),
            ],
          ),
          const Spacer(),
          if (headerTrailing != null) ...[
            headerTrailing!,
            SizedBox(width: 8.w),
          ],
          // Nút Đóng (X) tròn 3D
          AppButton.close(
            onPressed: onClose ?? () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    if (footerChild != null) {
      return footerChild!;
    }
    if (footerText == null || footerText!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Container(
      height: 24.h,
      decoration: BoxDecoration(
        color: footerBackgroundColor ?? AppColors.skySurface,
        border: Border(
          top: BorderSide(
            color: footerBorderColor ?? AppColors.skyBorder,
          ),
        ),
      ),
      child: Center(
        child: AppText.c1(
          footerText!,
          color: footerTextColor ?? AppColors.skyDark,
          fontWeight: FontWeight.w800,
          fontSize: 10.sp,
        ),
      ),
    );
  }
}
