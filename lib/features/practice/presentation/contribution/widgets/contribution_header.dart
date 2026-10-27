import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Bảng hiệu "Đóng Góp Từ Vựng" hỗ trợ 2 giao diện:
/// Giấy vẽ (Paper) & Gỗ Arcade (Classic)
class ContributionHeader extends StatelessWidget {
  const ContributionHeader({
    required this.isPaperTheme,
    super.key,
  });

  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    if (isPaperTheme) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.paperBorder,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.paperExtrusion,
              offset: Offset(0, 2.h),
            ),
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.08),
              offset: Offset(0, 3.h),
              blurRadius: 4.r,
            ),
          ],
        ),
        padding: EdgeInsets.all(2.w),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.r),
            border: Border.all(
              color: AppColors.paperBorder,
              width: 1.w,
            ),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.paperCardGradientStart,
                AppColors.paperCardGradientEnd,
              ],
            ),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.auto_awesome_rounded,
                      size: 14.r,
                      color: AppColors.paperGreen,
                    ),
                    SizedBox(width: 6.w),
                    AppText.t3(
                      l10n.contributeVocab,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.6,
                      color: AppColors.paperTextDark,
                    ),
                    SizedBox(width: 6.w),
                    Icon(
                      Icons.auto_awesome_rounded,
                      size: 14.r,
                      color: AppColors.paperGreen,
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                AppText.c1(
                  l10n.contributeVocabSubtitle,
                  fontSize: 10.sp,
                  color: AppColors.paperTextMedium,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: AppColors.woodBoardBorder,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.woodBoardShadow,
            offset: Offset(0, 2.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.16),
            offset: Offset(0, 4.h),
            blurRadius: 4.r,
          ),
        ],
      ),
      padding: EdgeInsets.all(2.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(
            color: AppColors.woodParchmentLight,
            width: 1.w,
          ),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.woodParchmentDark,
              AppColors.woodLight,
              AppColors.woodDark,
            ],
            stops: [0.0, 0.45, 1.0],
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.auto_awesome_rounded,
                    size: 14.r,
                    color: AppColors.woodBoardShadow,
                    shadows: [
                      Shadow(
                        color: AppColors.woodParchmentLight.withValues(
                          alpha: 0.8,
                        ),
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  SizedBox(width: 6.w),
                  AppText.t3(
                    l10n.contributeVocab,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.6,
                    color: AppColors.woodBoardShadow,
                    shadows: [
                      Shadow(
                        color: AppColors.woodParchmentLight.withValues(
                          alpha: 0.8,
                        ),
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  SizedBox(width: 6.w),
                  Icon(
                    Icons.auto_awesome_rounded,
                    size: 14.r,
                    color: AppColors.woodBoardShadow,
                    shadows: [
                      Shadow(
                        color: AppColors.woodParchmentLight.withValues(
                          alpha: 0.8,
                        ),
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              AppText.c1(
                l10n.contributeVocabSubtitle,
                fontSize: 10.sp,
                color: AppColors.woodDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
