import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thẻ hiển thị Cấp độ & Thanh tiến trình EXP theo phong cách 3D Game
class AppLevelProgressBar extends StatelessWidget {
  const AppLevelProgressBar({
    required this.level,
    required this.currentLevelXp,
    required this.neededForNext,
    required this.progressPercent,
    required this.progressFraction,
    required this.totalXp,
    super.key,
    this.title = 'TIẾN TRÌNH CẤP ĐỘ',
    this.backgroundColor,
    this.borderColor,
    this.titleColor,
    this.progressColor,
  });

  final int level;
  final int currentLevelXp;
  final int neededForNext;
  final double progressPercent;
  final double progressFraction;
  final int totalXp;
  final String title;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? titleColor;
  final Color? progressColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.lightBackground,
        borderRadius: BorderRadius.circular(12.w),
        border: Border.all(
          color: borderColor ?? AppColors.grayLight,
          width: 1.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText.c1(
            title,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: titleColor ?? AppColors.grayDark,
          ),
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Badge Level 3D vàng
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.gold,
                  borderRadius: BorderRadius.circular(12.w),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.gold.withValues(alpha: 0.5),
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: AppColors.white,
                      size: 14.w,
                    ),
                    SizedBox(width: 3.w),
                    AppText.c1(
                      'CẤP $level',
                      color: AppColors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 10.sp,
                    ),
                  ],
                ),
              ),
              AppText.b2(
                '$currentLevelXp / $neededForNext XP '
                '(${progressPercent.toInt()}%)',
                fontWeight: FontWeight.w700,
                color: AppColors.grayMedium,
                fontSize: 12.sp,
              ),
            ],
          ),
          SizedBox(height: 6.h),
          // Thanh EXP Bar bo góc
          ClipRRect(
            borderRadius: BorderRadius.circular(6.w),
            child: LinearProgressIndicator(
              value: progressFraction,
              minHeight: 8.h,
              backgroundColor: AppColors.grayLight,
              valueColor: AlwaysStoppedAnimation<Color>(
                progressColor ?? AppColors.gold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
