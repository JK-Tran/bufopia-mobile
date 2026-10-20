import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thẻ chế độ chơi Word Guess có hiệu ứng nhấn 3D đồng bộ
class WordGuessModeItem extends StatefulWidget {
  const WordGuessModeItem({
    required this.isPaper,
    required this.isLocked,
    required this.badgeText,
    required this.badgeIcon,
    required this.badgeColor,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.buttonIcon,
    required this.classicButtonGradient,
    required this.classicButtonExtrusion,
    required this.classicBorderColor,
    required this.classicShadowColor,
    required this.onTap,
    super.key,
  });

  final bool isPaper;
  final bool isLocked;
  final String badgeText;
  final IconData badgeIcon;
  final Color badgeColor;
  final String imagePath;
  final String title;
  final String subtitle;
  final String buttonText;
  final IconData buttonIcon;
  final Gradient classicButtonGradient;
  final Color classicButtonExtrusion;
  final Color classicBorderColor;
  final Color classicShadowColor;
  final VoidCallback onTap;

  @override
  State<WordGuessModeItem> createState() => WordGuessModeItemState();
}

class WordGuessModeItemState extends State<WordGuessModeItem> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final effectiveBadgeColor = widget.isLocked
        ? (widget.isPaper ? AppColors.paperAmberBadgeText : AppColors.orange)
        : widget.badgeColor;
    final effectiveBadgeIcon = widget.isLocked
        ? Icons.lock_rounded
        : widget.badgeIcon;
    final effectiveBadgeText = widget.isLocked
        ? 'CẦN ĐĂNG NHẬP'
        : widget.badgeText;
    final effectiveButtonText = widget.isLocked ? 'MỞ KHÓA' : widget.buttonText;
    final effectiveButtonIcon = widget.isLocked
        ? Icons.lock_rounded
        : widget.buttonIcon;

    final borderColor = widget.isLocked
        ? (widget.isPaper
              ? AppColors.paperAmberBadgeBorder
              : AppColors.orange.withValues(alpha: 0.5))
        : (widget.isPaper ? AppColors.paperBorder : widget.classicBorderColor);

    final extrusionColor = widget.isPaper
        ? AppColors.paperExtrusion
        : widget.classicShadowColor;

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        SoundManager.playClick();
        widget.onTap();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 60),
        curve: Curves.easeInOut,
        margin: EdgeInsets.only(
          top: _isPressed ? 2.h : 0,
          bottom: _isPressed ? 0 : 2.h,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
        decoration: BoxDecoration(
          color: widget.isPaper ? AppColors.paperCardBg : AppColors.white,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: borderColor, width: 1.5.w),
          boxShadow: [
            if (!_isPressed)
              BoxShadow(
                color: extrusionColor,
                offset: Offset(0, 2.h),
              ),
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              offset: Offset(0, _isPressed ? 1.h : 2.5.h),
              blurRadius: 4.r,
            ),
          ],
        ),
        child: Row(
          children: [
            // 1. Linh vật Mascot
            Image.asset(
              widget.imagePath,
              height: 50.h,
              width: 52.w,
              fit: BoxFit.contain,
              errorBuilder: (_, _, _) => Icon(
                Icons.sports_esports_rounded,
                size: 36.r,
                color: effectiveBadgeColor,
              ),
            ),
            SizedBox(width: 10.w),

            // 2. Nội dung: Badge, Tiêu đề, Phụ đề
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.w,
                      vertical: 2.h,
                    ),
                    decoration: BoxDecoration(
                      color: widget.isPaper
                          ? effectiveBadgeColor.withValues(alpha: 0.12)
                          : effectiveBadgeColor,
                      borderRadius: BorderRadius.circular(4.r),
                      border: widget.isPaper
                          ? Border.all(color: effectiveBadgeColor, width: 1.w)
                          : null,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          effectiveBadgeIcon,
                          size: 9.r,
                          color: widget.isPaper
                              ? effectiveBadgeColor
                              : AppColors.white,
                        ),
                        SizedBox(width: 3.w),
                        AppText.c1(
                          effectiveBadgeText,
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w700,
                          color: widget.isPaper
                              ? effectiveBadgeColor
                              : AppColors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.h),
                  AppText.t3(
                    widget.title,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: widget.isPaper
                        ? AppColors.paperTextDark
                        : AppColors.grayDark,
                    maxLines: 1,
                  ),
                  AppText.c1(
                    widget.subtitle,
                    fontSize: 10.sp,
                    color: widget.isPaper
                        ? AppColors.paperTextMuted
                        : AppColors.grayMedium,
                    maxLines: 1,
                  ),
                ],
              ),
            ),

            SizedBox(width: 6.w),

            // 3. Nút bấm 3D - Kích thước rộng rãi không bị cắt chữ
            IgnorePointer(
              child: widget.isLocked
                  ? AppButton(
                      text: effectiveButtonText,
                      icon: Icon(
                        effectiveButtonIcon,
                        size: 12.r,
                        color: AppColors.white,
                      ),
                      height: 32.h,
                      width: 94.w,
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      spacing: 3,
                      fontSize: 11.sp,
                      isPressed: _isPressed,
                      backgroundColor: widget.isPaper
                          ? const Color(0xFF8C98A4)
                          : AppColors.neutralDisabled,
                      extrusionColor: widget.isPaper
                          ? const Color(0xFF63707D)
                          : AppColors.neutralDisabledExtrusion,
                      borderColor: widget.isPaper
                          ? const Color(0xFFB0BAC3)
                          : AppColors.neutralDisabled,
                      extrusionHeight: 2.h,
                      borderRadius: BorderRadius.circular(10.r),
                      onPressed: () {},
                    )
                  : (widget.isPaper
                        // Paper Theme: Đồng bộ màu paperGreen giống Vocabulary
                        ? AppButton(
                            text: widget.buttonText,
                            icon: Icon(
                              widget.buttonIcon,
                              size: 12.r,
                              color: AppColors.white,
                            ),
                            height: 32.h,
                            width: 94.w,
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            spacing: 2,
                            fontSize: 11.sp,
                            isPressed: _isPressed,
                            backgroundColor: AppColors.paperGreen,
                            borderColor: AppColors.paperGreenBorder,
                            extrusionColor: AppColors.paperGreenExtrusion,
                            extrusionHeight: 2.h,
                            borderRadius: BorderRadius.circular(10.r),
                            onPressed: () {},
                          )
                        : AppButton(
                            text: widget.buttonText,
                            icon: Icon(
                              widget.buttonIcon,
                              size: 12.r,
                              color: AppColors.white,
                            ),
                            height: 32.h,
                            width: 94.w,
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            spacing: 3,
                            fontSize: 11.sp,
                            isPressed: _isPressed,
                            gradient: widget.classicButtonGradient,
                            borderColor: AppColors.white.withValues(
                              alpha: 0.35,
                            ),
                            extrusionColor: widget.classicButtonExtrusion,
                            extrusionHeight: 2.h,
                            borderRadius: BorderRadius.circular(10.r),
                            onPressed: () {},
                          )),
            ),
          ],
        ),
      ),
    );
  }
}
