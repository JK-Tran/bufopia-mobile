import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Khung hiển thị thông tin người chơi (Avatar, Tên, Cấp độ, Streak & EXP).
/// Tự động chuyển đổi phong cách theo theme (Paper vs Classic).
class HomePlayerInfo extends StatelessWidget {
  const HomePlayerInfo({
    required this.name,
    required this.level,
    required this.xp,
    required this.progress,
    required this.streak,
    required this.currentLevelXp,
    required this.neededForNext,
    this.avatarUrl,
    this.onTap,
    this.isPaperTheme = true,
    super.key,
  });

  final String name;
  final int level;
  final int xp;
  final double progress;
  final int streak;
  final int currentLevelXp;
  final int neededForNext;
  final String? avatarUrl;
  final VoidCallback? onTap;
  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    // Màu sắc thích ứng theo theme
    final cardBg = isPaperTheme ? AppColors.paperCardBg : AppColors.white;
    final cardBorder = isPaperTheme ? AppColors.paperBorder : AppColors.white;
    final nameColor = isPaperTheme
        ? AppColors.paperTextDark
        : AppColors.grayDark;
    final streakIconColor = isPaperTheme
        ? AppColors.paperStreakFlame
        : AppColors.red;
    final streakTextColor = isPaperTheme
        ? AppColors.paperStreakText
        : AppColors.redDark;
    final levelBadgeBg = isPaperTheme
        ? AppColors.paperAmberBadgeBg
        : AppColors.levelBadgeBg;
    final levelBadgeBorder = isPaperTheme
        ? AppColors.paperAmberBadgeBorder
        : AppColors.levelBadgeBorder;
    final levelBadgeText = isPaperTheme
        ? AppColors.paperAmberBadgeText
        : AppColors.levelBadgeText;
    final expBarColor = isPaperTheme
        ? AppColors.paperExpGreen
        : AppColors.blueLight;
    final expTextColor = isPaperTheme
        ? AppColors.paperTextMuted
        : AppColors.grayMedium;

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 280.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: cardBg,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: cardBorder,
            width: isPaperTheme ? 1.5.w : 1.w,
          ),
          boxShadow: isPaperTheme
              ? [
                  BoxShadow(
                    color: AppColors.paperExtrusion,
                    offset: Offset(0, 2.h),
                  ),
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: 0.08),
                    offset: Offset(0, 4.h),
                    blurRadius: 4.r,
                  ),
                ]
              : [
                  BoxShadow(
                    color: AppColors.grayLight,
                    offset: Offset(0, 2.h),
                  ),
                ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
          child: InkWell(
            borderRadius: BorderRadius.circular(16.r),
            onTap: onTap,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Avatar người chơi thon gọn thanh mảnh
                AppAvatar(
                  avatarUrl: avatarUrl,
                  size: 30.r,
                ),

                SizedBox(width: 8.w),

                // Cột thông tin: Tên, Streak, Level, EXP
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 1. Hàng trên: Tên người chơi & Huy hiệu Streak
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: AppText.t3(
                                name,
                                fontWeight: FontWeight.w700,
                                color: nameColor,
                                maxLines: 1,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                          SizedBox(width: 6.w),
                          // Streak badge lửa
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.local_fire_department_rounded,
                                color: streakIconColor,
                                size: 12.r,
                              ),
                              SizedBox(width: 2.w),
                              AppText.c1(
                                '$streak',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                                color: streakTextColor,
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 1.5.h),

                      // 2. Hàng dưới: Cấp độ (Lv) & Thanh EXP
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Level Badge [Lv. 1]
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.w,
                              vertical: 1.h,
                            ),
                            decoration: BoxDecoration(
                              color: levelBadgeBg,
                              borderRadius: BorderRadius.circular(6.r),
                              border: Border.all(
                                color: levelBadgeBorder,
                                width: 1.w,
                              ),
                            ),
                            child: AppText.c1(
                              'Lv. $level',
                              fontWeight: FontWeight.w700,
                              color: levelBadgeText,
                              fontSize: 10.sp,
                            ),
                          ),

                          SizedBox(width: 6.w),

                          // Thanh tiến trình EXP
                          SizedBox(
                            width: 58.w,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6.r),
                              child: LinearProgressIndicator(
                                value: progress.clamp(0.0, 1.0),
                                minHeight: 4.5.h,
                                backgroundColor: AppColors.grayLight,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  expBarColor,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 4.w),

                          // Điểm EXP
                          Flexible(
                            child: AppText.c1(
                              '$currentLevelXp/$neededForNext XP',
                              fontSize: 10.sp,
                              color: expTextColor,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
