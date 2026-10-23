import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewPlayerCard extends StatelessWidget {
  const ReviewPlayerCard({
    required this.displayName,
    required this.level,
    required this.weakCount,
    required this.isPaperTheme,
    this.avatarUrl,
    super.key,
  });

  final String displayName;
  final int level;
  final int weakCount;
  final bool isPaperTheme;
  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isPaperTheme
            ? AppColors.paperSurfaceWarm
            : AppColors.lightBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isPaperTheme ? AppColors.paperBorder : AppColors.grayLight,
          width: 1.5.w,
        ),
      ),
      child: Row(
        children: [
          AppAvatar(
            avatarUrl: avatarUrl,
            size: 55.r,
            borderWidth: 2.w,
            borderColor: isPaperTheme
                ? AppColors.paperBorder
                : AppColors.skyBorder,
            backgroundColor: isPaperTheme
                ? AppColors.paperCardBg
                : AppColors.white,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: AppText.t1(
                        fontSize: 16.sp,
                        displayName.isNotEmpty
                            ? displayName
                            : context.l10n.defaultPlayerName,
                        color: isPaperTheme
                            ? AppColors.paperTextDark
                            : AppColors.grayDark,
                        fontWeight: FontWeight.w700,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: isPaperTheme
                            ? AppColors.levelBadgeBg
                            : AppColors.woodParchmentDark,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: isPaperTheme
                              ? AppColors.levelBadgeBorder
                              : AppColors.gold,
                          width: 1.w,
                        ),
                      ),
                      child: AppText.c1(
                        'Lv. $level',
                        color: AppColors.levelBadgeText,
                        fontWeight: FontWeight.w700,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Container(
                      width: 6.r,
                      height: 6.r,
                      decoration: BoxDecoration(
                        color: isPaperTheme
                            ? AppColors.paperExpGreen
                            : AppColors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    AppText.c1(
                      context.l10n.connectedStatus,
                      color: isPaperTheme
                          ? AppColors.paperTextMuted
                          : AppColors.grayMedium,
                      fontSize: 10.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          // Weak count badge
          Builder(
            builder: (context) {
              final isZero = weakCount == 0;
              final Color pillBg;
              final Color pillBorder;
              final Color pillText;

              if (isZero) {
                pillBg = isPaperTheme
                    ? AppColors.feedbackSuccessBg
                    : AppColors.topicEasyBg;
                pillBorder = isPaperTheme
                    ? AppColors.feedbackSuccessBorder
                    : AppColors.greenLight;
                pillText = isPaperTheme
                    ? AppColors.feedbackSuccessIcon
                    : AppColors.greenDark;
              } else {
                pillBg = isPaperTheme
                    ? AppColors.paperAmberBadgeBg
                    : AppColors.redLight;
                pillBorder = isPaperTheme
                    ? AppColors.paperAmberBadgeBorder
                    : AppColors.red.withValues(alpha: 0.3);
                pillText = isPaperTheme
                    ? AppColors.paperAmberBadgeText
                    : AppColors.redDark;
              }

              return Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: pillBg,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: pillBorder,
                    width: 1.2.w,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText.t2(
                      '$weakCount',
                      color: pillText,
                      fontWeight: FontWeight.w700,
                    ),
                    AppText.c1(
                      context.l10n.wordsNeedReview,
                      color: pillText,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
