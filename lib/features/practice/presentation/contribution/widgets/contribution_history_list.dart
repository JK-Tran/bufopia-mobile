import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/features/practice/presentation/contribution/widgets/contribution_history_item.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContributionHistoryList extends StatelessWidget {
  const ContributionHistoryList({
    required this.contributions,
    required this.isPaperTheme,
    required this.isLoading,
    required this.onRefresh,
    this.onEditContribution,
    super.key,
  });

  final List<Contribution> contributions;
  final bool isPaperTheme;
  final bool isLoading;
  final VoidCallback onRefresh;
  final ValueChanged<Contribution>? onEditContribution;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header Row
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: isPaperTheme
                      ? AppColors.paperSurface
                      : AppColors.lightBackground,
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(
                    color: isPaperTheme
                        ? AppColors.paperBorder
                        : AppColors.grayLight,
                  ),
                ),
                child: AppText.c1(
                  context.l10n.contributionHistory,
                  color: isPaperTheme
                      ? AppColors.paperTextMuted
                      : AppColors.grayDark,
                  fontWeight: FontWeight.w700,
                  fontSize: 10.sp,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: AppText.t3(
                  context.l10n.yourContributions,
                  color: isPaperTheme
                      ? AppColors.paperTextDark
                      : AppColors.grayDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: isPaperTheme
                      ? AppColors.paperSurfaceWarm
                      : AppColors.lightBackground,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: AppText.c1(
                  context.l10n.nWordsCount(contributions.length),
                  color: isPaperTheme
                      ? AppColors.paperTextMuted
                      : AppColors.grayMedium,
                  fontWeight: FontWeight.w600,
                  fontSize: 10.sp,
                ),
              ),
              SizedBox(width: 6.w),
              InkWell(
                onTap: isLoading ? null : onRefresh,
                borderRadius: BorderRadius.circular(8.r),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: isPaperTheme
                        ? AppColors.paperTextDark
                        : AppColors.grayDark,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.refresh_rounded,
                        size: 14.r,
                        color: AppColors.white,
                      ),
                      SizedBox(width: 4.w),
                      AppText.c1(
                        context.l10n.refreshAction,
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 10.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          // Content
          Expanded(
            child: isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.primary,
                      ),
                    ),
                  )
                : contributions.isEmpty
                ? Center(
                    child: Padding(
                      padding: EdgeInsets.all(24.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.inbox_rounded,
                            size: 48.r,
                            color: isPaperTheme
                                ? AppColors.paperTextMuted
                                : AppColors.grayMedium,
                          ),
                          SizedBox(height: 12.h),
                          AppText.b2(
                            context.l10n.noContributionsYet,
                            color: isPaperTheme
                                ? AppColors.paperTextMuted
                                : AppColors.grayMedium,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                : ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemCount: contributions.length,
                    separatorBuilder: (_, _) => SizedBox(height: 10.h),
                    itemBuilder: (context, index) {
                      final item = contributions[index];
                      return ContributionHistoryItem(
                        contribution: item,
                        isPaperTheme: isPaperTheme,
                        onEdit: () => onEditContribution?.call(item),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
