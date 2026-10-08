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
    this.height,
    this.isScrollable = true,
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
  final double? height;
  final bool isScrollable;
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
    double? height,
    bool isScrollable = true,
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
        height: height,
        isScrollable: isScrollable,
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
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final screenHeight = MediaQuery.of(context).size.height;

    final resolvedMaxWidth = maxWidth ?? (isLandscape ? 440.0 : 340.w);
    final resolvedMaxHeight =
        maxHeight ??
        (isLandscape ? (screenHeight * 0.9).clamp(280.0, 360.0) : 560.h);
    final insetPad = isLandscape
        ? const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
        : EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);
    final bodyPad =
        padding ??
        (isLandscape
            ? const EdgeInsets.fromLTRB(14, 8, 14, 6)
            : EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 6.h));

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: insetPad,
      child: Container(
        height: height ?? (!isScrollable ? resolvedMaxHeight : null),
        constraints: BoxConstraints(
          maxWidth: resolvedMaxWidth,
          maxHeight: resolvedMaxHeight,
        ),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.white,
          borderRadius: BorderRadius.circular(isLandscape ? 18 : 20.w),
          border: Border.all(
            color: borderColor ?? AppColors.blueLight,
            width: isLandscape ? 1.5 : 2.w,
          ),
          boxShadow:
              boxShadow ??
              [
                BoxShadow(
                  color: AppColors.blue.withValues(alpha: 0.25),
                  blurRadius: isLandscape ? 16 : 18.w,
                  offset: Offset(0, isLandscape ? 6 : 8.h),
                ),
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.16),
                  blurRadius: isLandscape ? 20 : 24.w,
                  offset: Offset(0, isLandscape ? 8 : 12.h),
                ),
              ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(isLandscape ? 16 : 18.w),
          child: Column(
            mainAxisSize: isScrollable ? MainAxisSize.min : MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ── 1. Header Bar ──────────────────────────────────────────
              _buildHeader(context),

              // ── 2. Body ────────────────────────────────────────────────
              if (isScrollable)
                Flexible(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: bodyPad,
                    child: child,
                  ),
                )
              else
                Expanded(
                  child: Padding(
                    padding: bodyPad,
                    child: child,
                  ),
                ),

              // ── 3. Footer Bar ──────────────────────────────────────────
              _buildFooter(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final gradientColors =
        headerGradientColors ??
        const [
          AppColors.blueLight,
          AppColors.blueDark,
        ];

    return Container(
      height: isLandscape ? 38 : 36.h,
      padding: EdgeInsets.symmetric(horizontal: isLandscape ? 12 : 14.w),
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
              size: isLandscape ? 18 : 20.w,
            ),
            SizedBox(width: isLandscape ? 6 : 8.w),
          ],
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: AppText.t3(
                title,
                fontWeight: FontWeight.w700,
                fontSize: isLandscape ? 14 : 16.sp,
                maxLines: 1,
                color: headerTitleColor ?? AppColors.white,
                shadows: [
                  Shadow(
                    color: AppColors.black.withValues(alpha: 0.25),
                    offset: const Offset(0, 1.5),
                    blurRadius: 3,
                  ),
                ],
              ),
            ),
          ),
          if (headerTrailing != null) ...[
            SizedBox(width: isLandscape ? 6 : 6.w),
            headerTrailing!,
          ],
          SizedBox(width: isLandscape ? 8 : 8.w),
          // Nút Đóng (X) tròn 3D
          AppButton.close(
            size: isLandscape ? 26 : null,
            iconSize: isLandscape ? 14 : null,
            onPressed: onClose ?? () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    if (footerChild != null) {
      return footerChild!;
    }
    if (footerText == null || footerText!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Container(
      height: isLandscape ? 24 : 24.h,
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
          fontWeight: FontWeight.w700,
          fontSize: isLandscape ? 10 : 10.sp,
        ),
      ),
    );
  }
}
