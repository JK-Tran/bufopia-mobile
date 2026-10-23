import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContributionHeader extends StatelessWidget {
  const ContributionHeader({
    required this.isPaperTheme,
    super.key,
  });

  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isPaperTheme ? AppColors.paperCardBg : AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: isPaperTheme ? AppColors.paperBorder : AppColors.blueLight,
          width: 2.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaperTheme
                ? AppColors.paperExtrusion
                : AppColors.grayExtrusion,
            offset: Offset(0, 3.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.08),
            offset: Offset(0, 5.h),
            blurRadius: 8.r,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.auto_awesome_rounded,
                color: isPaperTheme ? AppColors.paperGreen : AppColors.orange,
                size: 20.r,
              ),
              SizedBox(width: 6.w),
              AppText.t2(
                context.l10n.contributeVocab,
                color: isPaperTheme
                    ? AppColors.paperTextDark
                    : AppColors.grayDark,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          SizedBox(height: 2.h),
          AppText.c1(
            context.l10n.contributeVocabSubtitle,
            color: isPaperTheme
                ? AppColors.paperTextMuted
                : AppColors.grayMedium,
          ),
        ],
      ),
    );
  }
}
