import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum _StreakBadgeType { custom, study, win }

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
  }) : _type = _StreakBadgeType.custom,
       _count = 0;

  /// Chuỗi ngày học liên tục (Màu đỏ lửa)
  factory AppStreakBadge.study({
    required int streak,
    String? value,
    String? label,
    Key? key,
  }) {
    return AppStreakBadge._internal(
      key: key,
      value: value,
      label: label,
      count: streak,
      type: _StreakBadgeType.study,
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
    String? value,
    String? label,
    Key? key,
  }) {
    return AppStreakBadge._internal(
      key: key,
      value: value,
      label: label,
      count: winStreak,
      type: _StreakBadgeType.win,
      icon: Icons.emoji_events_rounded,
      backgroundColor: AppColors.levelBadgeBg,
      borderColor: AppColors.levelBadgeBorder,
      iconColor: AppColors.gold,
      textColor: AppColors.levelBadgeText,
    );
  }

  const AppStreakBadge._internal({
    required this.icon,
    required this.backgroundColor,
    required this.borderColor,
    required this.iconColor,
    required this.textColor,
    required this._type,
    required this._count,
    this.value,
    this.label,
    super.key,
  });

  final String? value;
  final String? label;
  final IconData icon;
  final Color backgroundColor;
  final Color borderColor;
  final Color iconColor;
  final Color textColor;
  final _StreakBadgeType _type;
  final int _count;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final displayValue =
        value ??
        switch (_type) {
          _StreakBadgeType.study => l10n.streakDaysCount(_count),
          _StreakBadgeType.win => l10n.streakMatchesCount(_count),
          _StreakBadgeType.custom => '',
        };

    final displayLabel =
        label ??
        switch (_type) {
          _StreakBadgeType.study => l10n.studyStreak,
          _StreakBadgeType.win => l10n.winStreak,
          _StreakBadgeType.custom => '',
        };

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
                  displayValue,
                  color: textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                ),
                AppText.c1(
                  displayLabel,
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
