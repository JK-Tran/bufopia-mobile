import 'dart:async';

import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum AppSnackBarType {
  success,
  error,
  warning,
  info,
}

class AppSnackBar {
  const AppSnackBar._();

  static OverlayEntry? _currentEntry;

  /// Hiển thị thông báo Toast 3D Game nổi ở tầng cao nhất (Root Overlay)
  /// Đảm bảo không bao giờ bị che khuất bởi Dialog hay BottomSheet.
  static void show(
    BuildContext context, {
    required String message,
    AppSnackBarType type = AppSnackBarType.info,
    String? title,
    Duration duration = const Duration(seconds: 2),
    String? actionLabel,
    VoidCallback? onAction,
    double? width,
  }) {
    final overlayState =
        Overlay.maybeOf(context, rootOverlay: true) ?? Overlay.maybeOf(context);
    if (overlayState == null) return;

    // Hủy thông báo đang hiển thị trước đó nếu có
    _currentEntry?.remove();
    _currentEntry = null;

    late OverlayEntry entry;
    entry = OverlayEntry(
      builder: (ctx) => _AppToastNotification(
        message: message,
        type: type,
        title: title,
        duration: duration,
        actionLabel: actionLabel,
        onAction: onAction,
        width: width,
        onDismiss: () {
          if (_currentEntry == entry) {
            entry.remove();
            _currentEntry = null;
          }
        },
      ),
    );

    _currentEntry = entry;
    overlayState.insert(entry);
  }

  /// Hiển thị thông báo Thành công (Màu xanh lá)
  static void showSuccess(
    BuildContext context,
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 2),
    String? actionLabel,
    VoidCallback? onAction,
    double? width,
  }) {
    show(
      context,
      message: message,
      type: AppSnackBarType.success,
      title: title,
      duration: duration,
      actionLabel: actionLabel,
      onAction: onAction,
      width: width,
    );
  }

  /// Hiển thị thông báo Lỗi (Màu đỏ)
  static void showError(
    BuildContext context,
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 3),
    String? actionLabel,
    VoidCallback? onAction,
    double? width,
  }) {
    show(
      context,
      message: message,
      type: AppSnackBarType.error,
      title: title,
      duration: duration,
      actionLabel: actionLabel,
      onAction: onAction,
      width: width,
    );
  }

  /// Hiển thị thông báo Cảnh báo (Màu cam)
  static void showWarning(
    BuildContext context,
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 2),
    String? actionLabel,
    VoidCallback? onAction,
    double? width,
  }) {
    show(
      context,
      message: message,
      type: AppSnackBarType.warning,
      title: title,
      duration: duration,
      actionLabel: actionLabel,
      onAction: onAction,
      width: width,
    );
  }

  /// Hiển thị thông báo Tin nhắn / Thông tin (Màu xanh dương)
  static void showInfo(
    BuildContext context,
    String message, {
    String? title,
    Duration duration = const Duration(seconds: 2),
    String? actionLabel,
    VoidCallback? onAction,
    double? width,
  }) {
    show(
      context,
      message: message,
      title: title,
      duration: duration,
      actionLabel: actionLabel,
      onAction: onAction,
      width: width,
    );
  }

  /// Tạo instance của SnackBar tiêu chuẩn nếu cần dùng cho Scaffold
  static SnackBar create({
    required String message,
    AppSnackBarType type = AppSnackBarType.info,
    String? title,
    Duration duration = const Duration(seconds: 2),
    String? actionLabel,
    VoidCallback? onAction,
    double? width,
  }) {
    final style = _getStyle(type);

    return SnackBar(
      duration: duration,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
      width: width ?? 380.w,
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: style.backgroundColor,
          borderRadius: BorderRadius.circular(14.w),
          border: Border.all(
            color: AppColors.white.withValues(alpha: 0.35),
            width: 1.5.w,
          ),
          boxShadow: [
            BoxShadow(
              color: style.extrusionColor,
              offset: Offset(0, 3.h),
            ),
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.18),
              blurRadius: 10.w,
              offset: Offset(0, 5.h),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                color: AppColors.white.withValues(alpha: 0.22),
                shape: BoxShape.circle,
              ),
              child: Icon(
                style.icon,
                color: AppColors.white,
                size: 18.w,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null) ...[
                    AppText.t3(
                      title,
                      color: AppColors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 12.sp,
                    ),
                    SizedBox(height: 2.h),
                  ],
                  AppText.b2(
                    message,
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 12.sp,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            if (actionLabel != null && onAction != null) ...[
              SizedBox(width: 8.w),
              GestureDetector(
                onTap: onAction,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                  child: AppText.c1(
                    actionLabel,
                    color: style.backgroundColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 10.sp,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  static _SnackBarConfig _getStyle(AppSnackBarType type) {
    switch (type) {
      case AppSnackBarType.success:
        return const _SnackBarConfig(
          backgroundColor: AppColors.green,
          extrusionColor: AppColors.greenDark,
          icon: Icons.check_circle_rounded,
        );
      case AppSnackBarType.error:
        return const _SnackBarConfig(
          backgroundColor: AppColors.redDark,
          extrusionColor: AppColors.redDeep,
          icon: Icons.error_rounded,
        );
      case AppSnackBarType.warning:
        return const _SnackBarConfig(
          backgroundColor: AppColors.orangeDark,
          extrusionColor: AppColors.orangeDeep,
          icon: Icons.warning_rounded,
        );
      case AppSnackBarType.info:
        return const _SnackBarConfig(
          backgroundColor: AppColors.blueDark,
          extrusionColor: AppColors.blueDeep,
          icon: Icons.info_rounded,
        );
    }
  }
}

class _SnackBarConfig {
  const _SnackBarConfig({
    required this.backgroundColor,
    required this.extrusionColor,
    required this.icon,
  });

  final Color backgroundColor;
  final Color extrusionColor;
  final IconData icon;
}

/// Widget hiển thị thông báo Toast nổi trên tầng Root Overlay
class _AppToastNotification extends StatefulWidget {
  const _AppToastNotification({
    required this.message,
    required this.type,
    required this.duration,
    required this.onDismiss,
    this.title,
    this.actionLabel,
    this.onAction,
    this.width,
  });

  final String message;
  final AppSnackBarType type;
  final Duration duration;
  final VoidCallback onDismiss;
  final String? title;
  final String? actionLabel;
  final VoidCallback? onAction;
  final double? width;

  @override
  State<_AppToastNotification> createState() => _AppToastNotificationState();
}

class _AppToastNotificationState extends State<_AppToastNotification>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;
  late final Animation<double> _fadeAnimation;
  Timer? _dismissTimer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 250),
    );

    _offsetAnimation =
        Tween<Offset>(
          begin: const Offset(0, -0.6),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
        );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );

    _controller.forward();
    _dismissTimer = Timer(widget.duration, _startDismiss);
  }

  Future<void> _startDismiss() async {
    if (!mounted) return;
    await _controller.reverse();
    if (mounted) {
      widget.onDismiss();
    }
  }

  @override
  void dispose() {
    _dismissTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final style = AppSnackBar._getStyle(widget.type);

    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: SlideTransition(
            position: _offsetAnimation,
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: GestureDetector(
                onTap: _startDismiss,
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: widget.width ?? 360.w,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.w,
                      vertical: 6.h,
                    ),
                    decoration: BoxDecoration(
                      color: style.backgroundColor,
                      borderRadius: BorderRadius.circular(24.w),
                      border: Border.all(
                        color: AppColors.white.withValues(alpha: 0.4),
                        width: 1.5.w,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: style.extrusionColor,
                          offset: Offset(0, 2.5.h),
                        ),
                        BoxShadow(
                          color: AppColors.black.withValues(alpha: 0.18),
                          blurRadius: 10.w,
                          offset: Offset(0, 4.h),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                            color: AppColors.white.withValues(alpha: 0.22),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            style.icon,
                            color: AppColors.white,
                            size: 15.w,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (widget.title != null) ...[
                                AppText.t3(
                                  widget.title!,
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12.sp,
                                ),
                                SizedBox(height: 1.h),
                              ],
                              AppText.b2(
                                widget.message,
                                color: AppColors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 12.sp,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        if (widget.actionLabel != null &&
                            widget.onAction != null) ...[
                          SizedBox(width: 8.w),
                          GestureDetector(
                            onTap: () {
                              widget.onAction!();
                              _startDismiss();
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 3.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(12.w),
                              ),
                              child: AppText.c1(
                                widget.actionLabel!,
                                color: style.backgroundColor,
                                fontWeight: FontWeight.w800,
                                fontSize: 10.sp,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
