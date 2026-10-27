import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Dải banner thông báo khi có người đoán đúng từ (Solved Banner)
class WordGuessSolvedBanner extends StatelessWidget {
  const WordGuessSolvedBanner({
    required this.solverName,
    required this.isMe,
    required this.isPaperTheme,
    this.onCheer,
    super.key,
  });

  final String solverName;
  final bool isMe;
  final bool isPaperTheme;
  final VoidCallback? onCheer;

  @override
  Widget build(BuildContext context) {
    final Color bannerBg;
    final Color bannerBorder;
    final Color contentColor;

    if (isMe) {
      bannerBg = isPaperTheme
          ? AppColors.paperGreen.withValues(alpha: 0.15)
          : AppColors.green.withValues(alpha: 0.15);
      bannerBorder = isPaperTheme
          ? AppColors.paperGreenBorder
          : AppColors.green;
      contentColor = isPaperTheme
          ? AppColors.paperGreenDark
          : AppColors.greenDark;
    } else {
      bannerBg = isPaperTheme
          ? AppColors.paperAmberBadgeBg
          : AppColors.orangeLight.withValues(alpha: 0.15);
      bannerBorder = isPaperTheme
          ? AppColors.paperAmberBadgeBorder
          : AppColors.orange;
      contentColor = isPaperTheme
          ? AppColors.paperAmberBadgeText
          : AppColors.orangeDark;
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      margin: EdgeInsets.symmetric(vertical: 4.h),
      decoration: BoxDecoration(
        color: bannerBg,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: bannerBorder,
          width: 1.2.w,
        ),
      ),
      child: Row(
        children: [
          Icon(
            isMe ? Icons.emoji_events_rounded : Icons.info_outline_rounded,
            size: 16.r,
            color: contentColor,
          ),
          SizedBox(width: 6.w),
          Expanded(
            child: AppText.c1(
              isMe
                  ? context.l10n.solvedCorrectlyPoint(solverName)
                  : context.l10n.solvedFirst(solverName),
              color: contentColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (!isMe && onCheer != null) ...[
            SizedBox(width: 6.w),
            if (isPaperTheme)
              AppButton(
                text: context.l10n.plusGreat,
                height: 26.h,
                fontSize: 10.sp,
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                backgroundColor: AppColors.paperSurface,
                borderColor: AppColors.paperBorder,
                extrusionColor: AppColors.paperExtrusion,
                textColor: AppColors.paperTextDark,
                onPressed: onCheer,
              )
            else
              AppButton.secondary(
                text: context.l10n.plusGreat,
                height: 26.h,
                fontSize: 10.sp,
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                onPressed: onCheer,
              ),
          ],
        ],
      ),
    );
  }
}
