import 'package:bufopia/components/app_card.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeModeItem extends StatelessWidget {
  const HomeModeItem({
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
    super.key,
    this.onTap,
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
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      backgroundColor: AppColors.white,
      borderColor: cardBorderColor,
      borderWidth: 1.5.w,
      borderRadius: BorderRadius.circular(12.r),
      extrusionColor: cardShadowColor,
      extrusionHeight: 2.5.h,
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 6.h,
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
              horizontal: 5.w,
              vertical: 1.5.h,
            ),
            decoration: BoxDecoration(
              color: badgeColor,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  badgeIcon,
                  size: 10.w,
                  color: AppColors.white,
                ),
                SizedBox(width: 3.w),
                AppText.c1(
                  badgeText,
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.white,
                ),
              ],
            ),
          ),

          // 2. Mascot / Mode Illustration
          Image.asset(
            imagePath,
            height: 40.h,
            width: 44.w,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.sports_esports_rounded,
              size: 32.w,
              color: badgeColor,
            ),
          ),

          // 3. Title
          AppText.t3(
            title,
            fontSize: 11.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.grayDark,
            textAlign: TextAlign.center,
            maxLines: 1,
          ),

          SizedBox(height: 5.h),

          // 4. Action Button with 3D Effect
          Container(
            height: 16.h,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: buttonGradient,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: AppColors.white.withValues(alpha: 0.35),
                width: 1.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: buttonExtrusionColor,
                  offset: Offset(0, 1.5.h),
                ),
              ],
            ),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    buttonIcon,
                    size: 12.w,
                    color: AppColors.white,
                  ),
                  SizedBox(width: 3.w),
                  AppText.c1(
                    buttonText,
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                    letterSpacing: 0.3,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
