import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Nút bấm & thẻ tương tác 3D Game có hiệu ứng gờ đáy và đàn hồi khi nhấn.
///
/// Hỗ trợ các variant phổ biến qua factory constructors:
/// - [AppButton.primary]: Xanh dương gradient (xác nhận, lưu, tiếp tục).
/// - [AppButton.secondary]: Trắng viền xám 3D (Huỷ, Đóng, nút phụ).
/// - [AppButton.danger]: Đỏ 3D (Huỷ bỏ nguy hiểm, Đăng xuất, Xoá).
/// - [AppButton.success]: Xanh lá 3D (Thành công, Hoàn thành, Tiếp tục).
/// - [AppButton.orange]: Cam gradient 3D (Quick Battle, Thư viện).
/// - [AppButton.custom]: Tuỳ chỉnh hoàn toàn cho thẻ/card có hiệu ứng nhấn 3D.
class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    this.text,
    this.child,
    this.onPressed,
    this.icon,
    this.backgroundColor,
    this.gradient,
    this.extrusionColor,
    this.textColor = AppColors.white,
    this.borderColor,
    this.borderRadius,
    this.shape = BoxShape.rectangle,
    this.fontSize,
    this.fontWeight = FontWeight.w900,
    this.padding,
    this.height,
    this.width,
    this.extrusionHeight = 3.0,
    this.iconAfter = false,
    this.spacing = 4.0,
    this.isLoading = false,
    this.isPressed,
  }) : assert(
         text != null || child != null,
         'Either text or child must be provided',
       );

  /// Nút chính (Xanh dương gradient)
  factory AppButton.primary({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    bool iconAfter = false,
    bool isLoading = false,
    double? fontSize,
    EdgeInsetsGeometry? padding,
    double? width,
    double? height,
    double? extrusionHeight,
    BorderRadiusGeometry? borderRadius,
    Key? key,
  }) => AppButton(
    key: key,
    text: text,
    onPressed: onPressed,
    icon: icon,
    iconAfter: iconAfter,
    isLoading: isLoading,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [AppColors.blueLight, AppColors.blue],
    ),
    extrusionColor: AppColors.blueDeep,
    borderColor: AppColors.white.withValues(alpha: 0.35),
    fontSize: fontSize,
    padding: padding,
    width: width,
    height: height,
    extrusionHeight: extrusionHeight ?? 3.0,
    borderRadius: borderRadius,
  );

  /// Nút phụ (Trắng viền xám 3D - dùng cho Huỷ, Đóng, Quay lại)
  factory AppButton.secondary({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    bool iconAfter = false,
    bool isLoading = false,
    double? fontSize,
    EdgeInsetsGeometry? padding,
    double? width,
    double? height,
    double? extrusionHeight,
    BorderRadiusGeometry? borderRadius,
    Key? key,
  }) => AppButton(
    key: key,
    text: text,
    onPressed: onPressed,
    icon: icon,
    iconAfter: iconAfter,
    isLoading: isLoading,
    backgroundColor: AppColors.white,
    borderColor: AppColors.grayLight,
    extrusionColor: AppColors.grayExtrusion,
    textColor: AppColors.grayDark,
    fontSize: fontSize,
    padding: padding,
    width: width,
    height: height,
    extrusionHeight: extrusionHeight ?? 3.0,
    borderRadius: borderRadius,
  );

  /// Nút cảnh báo / xoá / đăng xuất (Đỏ 3D)
  factory AppButton.danger({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    bool iconAfter = false,
    bool isLoading = false,
    double? fontSize,
    EdgeInsetsGeometry? padding,
    double? width,
    double? height,
    double? extrusionHeight,
    BorderRadiusGeometry? borderRadius,
    Key? key,
  }) => AppButton(
    key: key,
    text: text,
    onPressed: onPressed,
    icon: icon,
    iconAfter: iconAfter,
    isLoading: isLoading,
    backgroundColor: AppColors.redDark,
    borderColor: AppColors.white.withValues(alpha: 0.3),
    extrusionColor: AppColors.red,
    fontSize: fontSize,
    padding: padding,
    width: width,
    height: height,
    extrusionHeight: extrusionHeight ?? 3.0,
    borderRadius: borderRadius,
  );

  /// Nút thành công / hoàn thành (Xanh lá 3D)
  factory AppButton.success({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    bool iconAfter = false,
    bool isLoading = false,
    double? fontSize,
    EdgeInsetsGeometry? padding,
    double? width,
    double? height,
    double? extrusionHeight,
    BorderRadiusGeometry? borderRadius,
    Key? key,
  }) => AppButton(
    key: key,
    text: text,
    onPressed: onPressed,
    icon: icon,
    iconAfter: iconAfter,
    isLoading: isLoading,
    backgroundColor: AppColors.green,
    borderColor: AppColors.white.withValues(alpha: 0.3),
    extrusionColor: AppColors.greenDark,
    fontSize: fontSize,
    padding: padding,
    width: width,
    height: height,
    extrusionHeight: extrusionHeight ?? 3.0,
    borderRadius: borderRadius,
  );

  /// Nút màu cam gradient 3D (Quick Battle, Thư viện ảnh)
  factory AppButton.orange({
    required String text,
    VoidCallback? onPressed,
    Widget? icon,
    bool iconAfter = false,
    bool isLoading = false,
    double? fontSize,
    EdgeInsetsGeometry? padding,
    double? width,
    double? height,
    double? extrusionHeight,
    BorderRadiusGeometry? borderRadius,
    Key? key,
  }) => AppButton(
    key: key,
    text: text,
    onPressed: onPressed,
    icon: icon,
    iconAfter: iconAfter,
    isLoading: isLoading,
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [AppColors.orangeLight, AppColors.orangeDark],
    ),
    extrusionColor: AppColors.orangeDeep,
    borderColor: AppColors.white.withValues(alpha: 0.35),
    fontSize: fontSize,
    padding: padding,
    width: width,
    height: height,
    extrusionHeight: extrusionHeight ?? 3.0,
    borderRadius: borderRadius,
  );

  /// Nút bị vô hiệu hoá (Xám mờ 3D)
  factory AppButton.disabled({
    required String text,
    Widget? icon,
    bool iconAfter = false,
    double? fontSize,
    EdgeInsetsGeometry? padding,
    double? width,
    double? height,
    double? extrusionHeight,
    BorderRadiusGeometry? borderRadius,
    Key? key,
  }) => AppButton(
    key: key,
    text: text,
    icon: icon,
    iconAfter: iconAfter,
    backgroundColor: AppColors.grayLight,
    extrusionColor: AppColors.grayMedium.withValues(alpha: 0.3),
    textColor: AppColors.grayMedium,
    fontSize: fontSize,
    padding: padding,
    width: width,
    height: height,
    extrusionHeight: extrusionHeight ?? 3.0,
    borderRadius: borderRadius,
  );

  /// Thẻ hoặc nút tuỳ chỉnh giao diện (Custom 3D Card / Button)
  factory AppButton.custom({
    required Widget child,
    required Color extrusionColor,
    VoidCallback? onPressed,
    Color? backgroundColor,
    Gradient? gradient,
    BorderRadiusGeometry? borderRadius,
    BoxShape shape = BoxShape.rectangle,
    Color? borderColor,
    EdgeInsetsGeometry? padding,
    double? width,
    double? height,
    double extrusionHeight = 3.0,
    Key? key,
  }) => AppButton(
    key: key,
    onPressed: onPressed,
    backgroundColor: backgroundColor,
    gradient: gradient,
    extrusionColor: extrusionColor,
    borderColor: borderColor,
    borderRadius: borderRadius,
    shape: shape,
    padding: padding,
    width: width,
    height: height,
    extrusionHeight: extrusionHeight,
    child: child,
  );

  /// Nút tròn đóng dialog (3D X / icon tròn có độ nảy đàn hồi)
  factory AppButton.close({
    VoidCallback? onPressed,
    Color backgroundColor = AppColors.white,
    Color? iconColor,
    Color? extrusionColor,
    Color? borderColor,
    IconData icon = Icons.close_rounded,
    double? size,
    double? iconSize,
    double extrusionHeight = 2.0,
    Key? key,
  }) => AppButton(
    key: key,
    onPressed: onPressed,
    backgroundColor: backgroundColor,
    extrusionColor: extrusionColor ?? AppColors.grayExtrusion,
    borderColor: borderColor,
    extrusionHeight: extrusionHeight,
    width: size ??
        (ScreenUtil().orientation == Orientation.landscape ? 26 : 26.w),
    height: size ??
        (ScreenUtil().orientation == Orientation.landscape ? 26 : 26.w),
    padding: EdgeInsets.zero,
    shape: BoxShape.circle,
    child: Icon(
      icon,
      color: iconColor ?? AppColors.grayDark,
      size: iconSize ??
          (ScreenUtil().orientation == Orientation.landscape ? 16 : 16.w),
    ),
  );

  final String? text;
  final Widget? child;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Color? backgroundColor;
  final Gradient? gradient;
  final Color? extrusionColor;
  final Color textColor;
  final Color? borderColor;
  final BorderRadiusGeometry? borderRadius;
  final BoxShape shape;
  final double? fontSize;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final double extrusionHeight;
  final bool iconAfter;
  final double spacing;
  final bool isLoading;
  final bool? isPressed;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _internalPressed = false;
  bool get _isPressed => widget.isPressed ?? _internalPressed;

  void _onTapDown(TapDownDetails _) {
    if (widget.onPressed != null && !widget.isLoading) {
      setState(() => _internalPressed = true);
    }
  }

  void _onTapUp(TapUpDetails _) {
    if (widget.onPressed != null && !widget.isLoading) {
      setState(() => _internalPressed = false);
      widget.onPressed!();
    }
  }

  void _onTapCancel() {
    if (_internalPressed) setState(() => _internalPressed = false);
  }

  @override
  Widget build(BuildContext context) {
    final effectiveRadius = widget.shape == BoxShape.circle
        ? null
        : (widget.borderRadius ?? BorderRadius.circular(10.w));
    final effectivePadding =
        widget.padding ??
        (widget.height != null
            ? EdgeInsets.symmetric(horizontal: 8.w)
            : EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h));
    final effectiveExtrusion = widget.extrusionHeight;
    final effectiveExtrusionColor = widget.extrusionColor ?? AppColors.blueDeep;
    final effectiveFontSize = widget.fontSize ?? 12.sp;

    final innerContent = widget.isLoading
        ? SizedBox(
            width: 14.w,
            height: 14.w,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(widget.textColor),
            ),
          )
        : (widget.child ??
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.icon != null && !widget.iconAfter) ...[
                    widget.icon!,
                    SizedBox(width: widget.spacing.w),
                  ],
                  if (widget.text != null)
                    Flexible(
                      child: AppText.b2(
                        widget.text!,
                        fontSize: effectiveFontSize,
                        fontWeight: widget.fontWeight,
                        color: widget.textColor,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  if (widget.icon != null && widget.iconAfter) ...[
                    SizedBox(width: widget.spacing.w),
                    widget.icon!,
                  ],
                ],
              ));

    final content =
        (widget.width != null ||
            widget.height != null ||
            widget.shape == BoxShape.circle)
        ? Center(child: innerContent)
        : innerContent;

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 60),
        curve: Curves.easeInOut,
        width: widget.width,
        height: widget.height,
        margin: EdgeInsets.only(
          top: _isPressed ? effectiveExtrusion.h : 0,
          bottom: _isPressed ? 0 : effectiveExtrusion.h,
        ),
        padding: effectivePadding,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          gradient: widget.gradient,
          shape: widget.shape,
          borderRadius: effectiveRadius,
          border: widget.borderColor != null
              ? Border.all(color: widget.borderColor!, width: 1.2.w)
              : null,
          boxShadow: [
            BoxShadow(
              color: effectiveExtrusionColor,
              offset: Offset(0, _isPressed ? 1.h : effectiveExtrusion.h),
            ),
            if (!_isPressed)
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.12),
                offset: Offset(0, (effectiveExtrusion + 1.5).h),
                blurRadius: 3.w,
              ),
          ],
        ),
        child: content,
      ),
    );
  }
}
