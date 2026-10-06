import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Huy hiệu hiển thị Chuỗi ngày học tập hoặc Chuỗi thắng
/// theo phong cách 3D Game
class AppStreakBadge extends StatelessWidget {
  const AppStreakBadge({
    required this.value,
    required this.label,
    required this.icon,
    required this.backgroundColor,
    required this.borderColor,
    required this.iconColor,
    required this.textColor,
    super.key,
  });

  /// Chuỗi ngày học liên tục (Màu đỏ lửa)
  factory AppStreakBadge.study({
    required int streak,
    Key? key,
  }) {
    return AppStreakBadge(
      key: key,
      value: '$streak ngày',
      label: 'Chuỗi học',
      icon: Icons.local_fire_department_rounded,
      backgroundColor: AppColors.redLight,
      borderColor: AppColors.red.withValues(alpha: 0.3),
      iconColor: AppColors.red,
      textColor: AppColors.redDark,
    );
  }

  /// Chuỗi trận thắng (Màu vàng cúp)
  factory AppStreakBadge.win({
    required int winStreak,
    Key? key,
  }) {
    return AppStreakBadge(
      key: key,
      value: '$winStreak trận',
      label: 'Chuỗi thắng',
      icon: Icons.emoji_events_rounded,
      backgroundColor: AppColors.levelBadgeBg,
      borderColor: AppColors.levelBadgeBorder,
      iconColor: AppColors.gold,
      textColor: AppColors.levelBadgeText,
    );
  }

  final String value;
  final String label;
  final IconData icon;
  final Color backgroundColor;
  final Color borderColor;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12.w),
        border: Border.all(
          color: borderColor,
          width: 1.w,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 20.w,
          ),
          SizedBox(width: 5.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.t3(
                  value,
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                ),
                AppText.c1(
                  label,
                  color: AppColors.grayMedium,
                  fontSize: 10.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
