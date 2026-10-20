import 'dart:async';
import 'dart:math' as math;

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thanh nhập từ và hành động đoán/bỏ qua (Input Bar)
/// Thiết kế 3D nguyên khối, tối ưu mobile (chiều cao 42.h):
/// [Nút BỎ QUA] --- [Ô nhập từ tiếng Anh (Shake)] --- [Nút ĐOÁN]
class WordGuessInputBar extends StatefulWidget {
  const WordGuessInputBar({
    required this.controller,
    required this.focusNode,
    required this.onChanged,
    required this.onSubmit,
    required this.onSkip,
    required this.isPaperTheme,
    this.lastWrongGuess,
    this.isSubmitting = false,
    this.isEnabled = true,
    super.key,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;
  final VoidCallback onSubmit;
  final VoidCallback onSkip;
  final bool isPaperTheme;
  final String? lastWrongGuess;
  final bool isSubmitting;
  final bool isEnabled;

  @override
  State<WordGuessInputBar> createState() => _WordGuessInputBarState();
}

class _WordGuessInputBarState extends State<WordGuessInputBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _shakeController;
  late final Animation<double> _shakeAnimation;
  bool _isError = false;
  Timer? _errorResetTimer;

  @override
  void initState() {
    super.initState();
    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _shakeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _shakeController, curve: Curves.easeInOut),
    );
  }

  @override
  void didUpdateWidget(covariant WordGuessInputBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.lastWrongGuess != null &&
        widget.lastWrongGuess!.isNotEmpty &&
        widget.lastWrongGuess != oldWidget.lastWrongGuess) {
      _triggerWrongGuessShake();
    }
  }

  void _triggerWrongGuessShake() {
    _errorResetTimer?.cancel();
    _shakeController.forward(from: 0);
    setState(() => _isError = true);
    _errorResetTimer = Timer(const Duration(milliseconds: 700), () {
      if (mounted) {
        setState(() => _isError = false);
      }
    });
  }

  @override
  void dispose() {
    _errorResetTimer?.cancel();
    _shakeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dividerColor = widget.isPaperTheme
        ? AppColors.paperBorder
        : AppColors.classicBorder;

    final defaultBorderColor = widget.isPaperTheme
        ? AppColors.paperGreen
        : AppColors.green;

    final borderColor = _isError ? const Color(0xFFEF4444) : defaultBorderColor;

    return Container(
      padding: EdgeInsets.fromLTRB(10.w, 6.h, 10.w, 8.h),
      decoration: BoxDecoration(
        color: widget.isPaperTheme
            ? AppColors.paperSurface.withValues(alpha: 0.7)
            : AppColors.white.withValues(alpha: 0.95),
        border: Border(
          top: BorderSide(
            color: dividerColor,
            width: 1.w,
          ),
        ),
      ),
      child: Row(
        children: [
          // 1. Nút BỎ QUA 3D (Đồng bộ Paper & Classic)
          if (widget.isPaperTheme)
            AppButton(
              text: 'BỎ QUA',
              height: 42.h,
              fontSize: 10.sp,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              backgroundColor: AppColors.paperCardBg,
              borderColor: AppColors.paperBorder,
              extrusionColor: AppColors.paperExtrusion,
              textColor: AppColors.paperTextDark,
              icon: Icon(
                Icons.skip_next_rounded,
                size: 16.r,
                color: AppColors.paperTextDark,
              ),
              onPressed: widget.isEnabled && !widget.isSubmitting
                  ? () {
                      SoundManager.playClick();
                      widget.onSkip();
                    }
                  : null,
            )
          else
            AppButton.secondary(
              text: 'BỎ QUA',
              height: 42.h,
              fontSize: 10.sp,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              icon: Icon(
                Icons.skip_next_rounded,
                size: 16.r,
                color: AppColors.grayDark,
              ),
              onPressed: widget.isEnabled && !widget.isSubmitting
                  ? () {
                      SoundManager.playClick();
                      widget.onSkip();
                    }
                  : null,
            ),

          SizedBox(width: 8.w),

          // 2. Ô nhập từ tiếng Anh (Có Shake animation & viền đỏ khi đoán sai)
          Expanded(
            child: AnimatedBuilder(
              animation: _shakeAnimation,
              builder: (context, child) {
                final offset = _shakeController.isAnimating
                    ? math.sin(_shakeAnimation.value * math.pi * 4) * 6.0
                    : 0.0;
                return Transform.translate(
                  offset: Offset(offset, 0),
                  child: child,
                );
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 42.h,
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: BoxDecoration(
                  color: _isError
                      ? const Color(0xFFFEE2E2).withValues(alpha: 0.7)
                      : (widget.isPaperTheme
                            ? AppColors.paperCardBg
                            : AppColors.white),
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: borderColor,
                    width: _isError ? 1.8.w : 1.5.w,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: _isError
                          ? const Color(0xFFEF4444).withValues(alpha: 0.2)
                          : (widget.isPaperTheme
                                ? AppColors.paperExtrusion.withValues(
                                    alpha: 0.25,
                                  )
                                : AppColors.black.withValues(alpha: 0.04)),
                      offset: Offset(0, 2.h),
                      blurRadius: 3.r,
                    ),
                  ],
                ),
                child: Center(
                  child: TextField(
                    controller: widget.controller,
                    focusNode: widget.focusNode,
                    enabled: widget.isEnabled && !widget.isSubmitting,
                    onChanged: (val) {
                      SoundManager.playClick();
                      widget.onChanged(val);
                    },
                    onSubmitted: (_) {
                      if (widget.isEnabled && !widget.isSubmitting) {
                        SoundManager.playClick();
                        widget.onSubmit();
                      }
                    },
                    textInputAction: TextInputAction.send,
                    autocorrect: false,
                    enableSuggestions: false,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                    ],
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: widget.isPaperTheme
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Nhập từ tiếng Anh...',
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        color: widget.isPaperTheme
                            ? AppColors.paperTextMuted
                            : AppColors.grayMedium,
                      ),
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ),
          ),

          SizedBox(width: 8.w),

          // 3. Nút ĐOÁN 3D (Đồng bộ Paper & Classic)
          if (widget.isPaperTheme)
            AppButton(
              text: 'ĐOÁN',
              height: 42.h,
              fontSize: 12.sp,
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              backgroundColor: AppColors.paperGreen,
              borderColor: AppColors.paperGreenBorder,
              extrusionColor: AppColors.paperGreenExtrusion,
              isLoading: widget.isSubmitting,
              icon: widget.isSubmitting
                  ? null
                  : Icon(
                      Icons.send_rounded,
                      size: 14.r,
                      color: AppColors.white,
                    ),
              onPressed: widget.isEnabled && !widget.isSubmitting
                  ? () {
                      SoundManager.playClick();
                      widget.onSubmit();
                    }
                  : null,
            )
          else
            AppButton.success(
              text: 'ĐOÁN',
              height: 42.h,
              fontSize: 12.sp,
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              isLoading: widget.isSubmitting,
              icon: widget.isSubmitting
                  ? null
                  : Icon(
                      Icons.send_rounded,
                      size: 14.r,
                      color: AppColors.white,
                    ),
              onPressed: widget.isEnabled && !widget.isSubmitting
                  ? () {
                      SoundManager.playClick();
                      widget.onSubmit();
                    }
                  : null,
            ),
        ],
      ),
    );
  }
}
