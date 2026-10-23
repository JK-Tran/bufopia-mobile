import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/word_guess/domain/entities/skip_proposal.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Dải banner biểu quyết bỏ qua câu hỏi (Skip Banner)
/// Xuất hiện trong chế độ chơi phòng đối kháng khi có người chơi đề xuất bỏ qua
class WordGuessSkipBanner extends StatelessWidget {
  const WordGuessSkipBanner({
    required this.proposal,
    required this.onVoteAgree,
    required this.onVoteDisagree,
    required this.isPaperTheme,
    super.key,
  });

  final SkipProposal proposal;
  final VoidCallback onVoteAgree;
  final VoidCallback onVoteDisagree;
  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isPaperTheme
            ? AppColors.paperAmberBadgeBg
            : AppColors.orangeLight.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isPaperTheme
              ? AppColors.paperAmberBadgeBorder
              : AppColors.orange,
          width: 1.5.w,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.help_outline_rounded,
            color: isPaperTheme
                ? AppColors.paperAmberBadgeText
                : AppColors.orangeDark,
            size: 22.r,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.c1(
                  context.l10n.suggestSkipWord,
                  color: isPaperTheme
                      ? AppColors.paperTextDark
                      : AppColors.grayDark,
                  fontWeight: FontWeight.w700,
                ),
                AppText.c1(
                  context.l10n.autoSkipCountdown,
                  color: isPaperTheme
                      ? AppColors.paperTextMedium
                      : AppColors.grayMedium,
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          if (isPaperTheme)
            AppButton(
              text: context.l10n.agree,
              height: 32.h,
              fontSize: 10.sp,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              backgroundColor: AppColors.paperGreen,
              borderColor: AppColors.paperGreenBorder,
              extrusionColor: AppColors.paperGreenExtrusion,
              onPressed: onVoteAgree,
            )
          else
            AppButton.success(
              text: context.l10n.agree,
              height: 32.h,
              fontSize: 10.sp,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              onPressed: onVoteAgree,
            ),
          SizedBox(width: 6.w),
          if (isPaperTheme)
            AppButton(
              text: context.l10n.reject,
              height: 32.h,
              fontSize: 10.sp,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              backgroundColor: AppColors.paperSurface,
              borderColor: AppColors.paperBorder,
              extrusionColor: AppColors.paperExtrusion,
              textColor: AppColors.paperTextDark,
              onPressed: onVoteDisagree,
            )
          else
            AppButton.danger(
              text: context.l10n.reject,
              height: 32.h,
              fontSize: 10.sp,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              onPressed: onVoteDisagree,
            ),
        ],
      ),
    );
  }
}
