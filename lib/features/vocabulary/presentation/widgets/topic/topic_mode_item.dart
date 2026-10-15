import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_card.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thẻ lựa chọn chế độ chơi (Bot, PvP, Online, ID Challenge)
/// Hỗ trợ Paper Theme & Classic Theme
class TopicModeItem extends StatelessWidget {
  const TopicModeItem({
    required this.badgeText,
    required this.badgeIcon,
    required this.badgeColor,
    required this.imagePath,
    required this.title,
    required this.buttonText,
    required this.buttonIcon,
    required this.buttonGradient,
    required this.buttonExtrusionColor,
    required this.cardBorderColor,
    required this.cardShadowColor,
    this.isPaperTheme,
    this.isLocked = false,
    this.onTap,
    super.key,
  });

  final String badgeText;
  final IconData badgeIcon;
  final Color badgeColor;
  final String imagePath;
  final String title;
  final String buttonText;
  final IconData buttonIcon;
  final Gradient buttonGradient;
  final Color buttonExtrusionColor;
  final Color cardBorderColor;
  final Color cardShadowColor;
  final bool? isPaperTheme;
  final bool isLocked;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isPaper =
        isPaperTheme ??
        context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final effectiveBadgeColor = isLocked
        ? (isPaper ? AppColors.paperAmberBadgeText : AppColors.orange)
        : badgeColor;
    final effectiveBadgeIcon = isLocked ? Icons.lock_rounded : badgeIcon;
    final effectiveBadgeText = isLocked ? 'CẦN ĐĂNG NHẬP' : badgeText;
    final effectiveButtonText = isLocked ? 'MỞ KHÓA' : buttonText;
    final effectiveButtonIcon = isLocked ? Icons.lock_rounded : buttonIcon;

    return AppCard(
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isLocked
          ? (isPaper
                ? AppColors.paperAmberBadgeBorder
                : AppColors.orange.withValues(alpha: 0.5))
          : (isPaper ? AppColors.paperBorder : cardBorderColor),
      borderWidth: 1.5.w,
      borderRadius: BorderRadius.circular(14.r),
      extrusionColor: isPaper ? AppColors.paperExtrusion : cardShadowColor,
      extrusionHeight: 2.5.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 8.h,
      ),
      onTap: () {
        context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
        onTap?.call();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Top Mode Badge
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 2.5.h,
            ),
            decoration: BoxDecoration(
              color: isPaper
                  ? effectiveBadgeColor.withValues(alpha: 0.12)
                  : effectiveBadgeColor,
              borderRadius: BorderRadius.circular(6.r),
              border: isPaper
                  ? Border.all(color: effectiveBadgeColor, width: 1.w)
                  : null,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  effectiveBadgeIcon,
                  size: 11.r,
                  color: isPaper ? effectiveBadgeColor : AppColors.white,
                ),
                SizedBox(width: 3.w),
                AppText.c1(
                  effectiveBadgeText,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: isPaper ? effectiveBadgeColor : AppColors.white,
                ),
              ],
            ),
          ),

          SizedBox(height: 6.h),

          // 2. Mascot / Mode Illustration
          Image.asset(
            imagePath,
            height: 46.h,
            width: 50.w,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.sports_esports_rounded,
              size: 36.r,
              color: effectiveBadgeColor,
            ),
          ),

          SizedBox(height: 4.h),

          // 3. Title
          FittedBox(
            fit: BoxFit.scaleDown,
            child: AppText.t3(
              title,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),

          SizedBox(height: 6.h),

          // 4. Action Button with 3D Effect
          IgnorePointer(
            child: isLocked
                ? AppButton(
                    text: effectiveButtonText,
                    icon: Icon(
                      effectiveButtonIcon,
                      size: 12.r,
                      color: AppColors.white,
                    ),
                    height: 28.h,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    spacing: 3,
                    fontSize: 12.sp,
                    backgroundColor: isPaper
                        ? const Color(0xFF8C98A4)
                        : AppColors.neutralDisabled,
                    extrusionColor: isPaper
                        ? const Color(0xFF63707D)
                        : AppColors.neutralDisabledExtrusion,
                    borderColor: isPaper
                        ? const Color(0xFFB0BAC3)
                        : AppColors.neutralDisabled,
                    extrusionHeight: 2,
                    borderRadius: BorderRadius.circular(10.r),
                  )
                : (isPaper
                      ? AppButton(
                          text: buttonText,
                          icon: Icon(
                            buttonIcon,
                            size: 12.r,
                            color: AppColors.white,
                          ),
                          height: 28.h,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          spacing: 2,
                          fontSize: 12.sp,
                          backgroundColor: AppColors.paperGreen,
                          borderColor: AppColors.paperGreenBorder,
                          extrusionColor: AppColors.paperGreenExtrusion,
                          extrusionHeight: 2,
                          borderRadius: BorderRadius.circular(10.r),
                        )
                      : AppButton(
                          text: buttonText,
                          icon: Icon(
                            buttonIcon,
                            size: 12.r,
                            color: AppColors.white,
                          ),
                          height: 28.h,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          spacing: 3,
                          fontSize: 12.sp,
                          gradient: buttonGradient,
                          borderColor: AppColors.white.withValues(alpha: 0.35),
                          extrusionColor: buttonExtrusionColor,
                          extrusionHeight: 2,
                          borderRadius: BorderRadius.circular(10.r),
                        )),
          ),
        ],
      ),
    );
  }
}
