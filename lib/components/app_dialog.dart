import 'dart:ui';

import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    required this.child,
    super.key,
    this.title,
    this.leading,
    this.showCloseButton = true,
    this.onClose,
    this.width,
    this.padding,
    this.borderRadius,
    this.extrusionHeight = 5.0,
  });

  final Widget child;
  final String? title;
  final Widget? leading;
  final bool showCloseButton;
  final VoidCallback? onClose;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final double extrusionHeight;

  static Future<void> show(
    BuildContext context, {
    required Widget child,
    String? title,
    Widget? leading,
    bool showCloseButton = true,
    VoidCallback? onClose,
    bool barrierDismissible = true,
  }) {
    return showGeneralDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierLabel: 'AppDialog',
      barrierColor: AppColors.black.withValues(alpha: 0.45),
      transitionDuration: const Duration(milliseconds: 250),
      pageBuilder: (context, anim1, anim2) => const SizedBox.shrink(),
      transitionBuilder: (context, anim1, anim2, _) {
        final curved = CurvedAnimation(
          parent: anim1,
          curve: Curves.easeOutBack,
        );
        return ScaleTransition(
          scale: Tween<double>(begin: 0.85, end: 1).animate(curved),
          child: FadeTransition(
            opacity: anim1,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: AppDialog(
                title: title,
                leading: leading,
                showCloseButton: showCloseButton,
                onClose: onClose,
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final effectiveRadius = borderRadius ?? BorderRadius.circular(16.r);

    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: width ?? 345.w,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          padding: padding ?? EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 18.h),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: effectiveRadius,
            border: Border.all(
              color: AppColors.white,
              width: 2.5.w,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.dialogCloseIcon,
                offset: Offset(0, extrusionHeight.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.16),
                offset: Offset(0, (extrusionHeight + 5).h),
                blurRadius: 16,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (title != null || showCloseButton) ...[
                Row(
                  children: [
                    if (leading != null) ...[
                      leading!,
                      SizedBox(width: 8.w),
                    ],
                    if (title != null)
                      Expanded(
                        child: AppText.t2(
                          title!,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w900,
                          color: AppColors.grayDark,
                          letterSpacing: 0.4,
                        ),
                      )
                    else
                      const Spacer(),
                    if (showCloseButton)
                      _AppDialogCloseButton(
                        onTap: () {
                          if (onClose != null) {
                            onClose!();
                          } else {
                            Navigator.of(context).pop();
                          }
                        },
                      ),
                  ],
                ),
                SizedBox(height: 16.h),
              ],
              child,
            ],
          ),
        ),
      ),
    );
  }
}

class _AppDialogCloseButton extends StatefulWidget {
  const _AppDialogCloseButton({required this.onTap});

  final VoidCallback onTap;

  @override
  State<_AppDialogCloseButton> createState() => _AppDialogCloseButtonState();
}

class _AppDialogCloseButtonState extends State<_AppDialogCloseButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pressController;
  late final Animation<double> _translateAnimation;

  static const double _extrusionHeight = 3;

  @override
  void initState() {
    super.initState();
    _pressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 60),
    );
    _translateAnimation =
        Tween<double>(
          begin: 0,
          end: _extrusionHeight - 1,
        ).animate(
          CurvedAnimation(parent: _pressController, curve: Curves.easeInOut),
        );
  }

  @override
  void dispose() {
    _pressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _pressController,
      builder: (context, child) {
        final currentOffset = _translateAnimation.value;
        final currentExtrusion = (_extrusionHeight - currentOffset).clamp(
          0.5,
          _extrusionHeight,
        );

        return Transform.translate(
          offset: Offset(0, currentOffset),
          child: Container(
            width: 34.w,
            height: 34.h,
            decoration: BoxDecoration(
              color: AppColors.dialogCloseBg,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.dialogCloseIcon,
                width: 1.5.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.dialogCloseIcon,
                  offset: Offset(0, currentExtrusion),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              shape: const CircleBorder(),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  context.read<AppBloc>().add(
                    const AppEvent.clickSoundPlayed(),
                  );
                  widget.onTap();
                },
                onTapDown: (_) => _pressController.forward(),
                onTapUp: (_) => _pressController.reverse(),
                onTapCancel: () => _pressController.reverse(),
                child: Center(
                  child: Icon(
                    Icons.close_rounded,
                    color: AppColors.dialogCloseIcon,
                    size: 18.w,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
