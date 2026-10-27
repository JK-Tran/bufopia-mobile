import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewActionRow extends StatelessWidget {
  const ReviewActionRow({
    required this.weakWordsCount,
    required this.isPaperTheme,
    required this.onSaveToInventory,
    required this.onStartPractice,
    super.key,
  });

  final int weakWordsCount;
  final bool isPaperTheme;
  final VoidCallback onSaveToInventory;
  final VoidCallback onStartPractice;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 560;

        final saveButton = AppButton(
          text: isCompact
              ? context.l10n.saveAllToVault
              : '${context.l10n.saveAllToVault} ($weakWordsCount)',
          icon: Icon(
            Icons.bookmark_border_rounded,
            size: 15.r,
            color: isPaperTheme ? AppColors.paperTextDark : AppColors.grayDark,
          ),
          height: 36.h,
          fontSize: 12.sp,
          backgroundColor: isPaperTheme
              ? AppColors.paperSurface
              : AppColors.white,
          borderColor: isPaperTheme
              ? AppColors.paperBorder
              : AppColors.grayLight,
          extrusionColor: isPaperTheme
              ? AppColors.paperExtrusion
              : AppColors.grayExtrusion,
          textColor: isPaperTheme
              ? AppColors.paperTextDark
              : AppColors.grayDark,
          extrusionHeight: 2.5,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          onPressed: onSaveToInventory,
        );

        final practiceButton = AppButton(
          text: context.l10n.startPracticing,
          icon: Icon(
            Icons.auto_stories_rounded,
            size: 16.r,
            color: AppColors.white,
          ),
          height: 36.h,
          fontSize: 12.sp,
          extrusionHeight: 2.5,
          backgroundColor: isPaperTheme
              ? AppColors.paperGreen
              : AppColors.greenDark,
          borderColor: isPaperTheme
              ? AppColors.paperGreenBorder
              : AppColors.greenLight,
          extrusionColor: isPaperTheme
              ? AppColors.paperGreenExtrusion
              : AppColors.green,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          onPressed: onStartPractice,
        );

        final isZero = weakWordsCount == 0;
        final Color badgeBg;
        final Color badgeBorder;
        final Color badgeTextColor;

        if (isPaperTheme) {
          badgeBg = isZero
              ? AppColors.feedbackSuccessBg
              : AppColors.paperAmberBadgeBg;
          badgeBorder = isZero
              ? AppColors.feedbackSuccessBorder
              : AppColors.paperAmberBadgeBorder;
          badgeTextColor = isZero
              ? AppColors.feedbackSuccessIcon
              : AppColors.paperAmberBadgeText;
        } else {
          badgeBg = isZero ? AppColors.topicEasyBg : AppColors.topicMediumBg;
          badgeBorder = isZero ? AppColors.greenLight : AppColors.orangeLight;
          badgeTextColor = isZero ? AppColors.greenDark : AppColors.orangeDark;
        }

        final countBadge = Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8.w,
            vertical: 2.h,
          ),
          decoration: BoxDecoration(
            color: badgeBg,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: badgeBorder,
              width: 1.w,
            ),
          ),
          child: AppText.c1(
            '$weakWordsCount',
            color: badgeTextColor,
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
          ),
        );

        if (isCompact) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText.t3(
                        context.l10n.weakWordsList(weakWordsCount),
                        color: isPaperTheme
                            ? AppColors.paperTextDark
                            : AppColors.grayDark,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(width: 8.w),
                      countBadge,
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: saveButton,
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    flex: 5,
                    child: practiceButton,
                  ),
                ],
              ),
            ],
          );
        }

        // Web Landscape / Desktop: Wide single-line layout
        return Row(
          children: [
            Expanded(
              child: AppText.t3(
                context.l10n.weakWordsList(weakWordsCount),
                color: isPaperTheme
                    ? AppColors.paperTextDark
                    : AppColors.grayDark,
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 10.w),
            saveButton,
            SizedBox(width: 10.w),
            practiceButton,
          ],
        );
      },
    );
  }
}
