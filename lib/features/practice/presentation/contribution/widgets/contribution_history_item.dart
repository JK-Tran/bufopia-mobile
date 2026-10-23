import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContributionHistoryItem extends StatelessWidget {
  const ContributionHistoryItem({
    required this.contribution,
    required this.isPaperTheme,
    this.onEdit,
    super.key,
  });

  final Contribution contribution;
  final bool isPaperTheme;
  final VoidCallback? onEdit;

  Color _getStatusColor(String status) {
    switch (status) {
      case 'approved':
        return AppColors.green;
      case 'rejected':
        return AppColors.redDark;
      case 'changes_requested':
        return AppColors.orangeDark;
      case 'pending':
      default:
        return AppColors.yellow;
    }
  }

  String _getStatusLabel(BuildContext context, String status) {
    switch (status) {
      case 'approved':
        return context.l10n.statusApproved;
      case 'rejected':
        return context.l10n.statusRejected;
      case 'changes_requested':
        return context.l10n.statusChangesRequested;
      case 'pending':
      default:
        return context.l10n.statusPending;
    }
  }

  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor(contribution.status);
    final statusLabel = _getStatusLabel(context, contribution.status);
    final isNeedChanges = contribution.status == 'changes_requested';

    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: isPaperTheme ? AppColors.paperCardBg : AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: isPaperTheme ? AppColors.paperBorder : AppColors.grayLight,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaperTheme
                ? AppColors.paperExtrusion
                : AppColors.grayExtrusion,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row: Word & Status Badge
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: AppText.t3(
                  contribution.wordEn,
                  color: isPaperTheme
                      ? AppColors.paperTextDark
                      : AppColors.grayDark,
                  fontWeight: FontWeight.w700,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 6.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(
                    color: statusColor.withValues(alpha: 0.4),
                  ),
                ),
                child: AppText.c1(
                  statusLabel,
                  color: statusColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 10.sp,
                ),
              ),
            ],
          ),

          SizedBox(height: 2.h),

          // Meaning
          AppText.b2(
            contribution.meaningVi,
            color: isPaperTheme ? AppColors.paperGreenDark : AppColors.blueDark,
            fontWeight: FontWeight.w600,
          ),

          if (contribution.phonetic.isNotEmpty) ...[
            SizedBox(height: 2.h),
            AppText.c1(
              contribution.phonetic,
              color: isPaperTheme
                  ? AppColors.paperTextMuted
                  : AppColors.grayMedium,
              fontSize: 10.sp,
            ),
          ],

          if (contribution.exampleEn.isNotEmpty) ...[
            SizedBox(height: 6.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: isPaperTheme
                    ? AppColors.paperSurfaceWarm
                    : AppColors.lightBackground,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.c1(
                    '“${contribution.exampleEn}”',
                    color: isPaperTheme
                        ? AppColors.paperTextDark
                        : AppColors.grayDark,
                  ),
                  if (contribution.exampleVi.isNotEmpty)
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: AppText.c1(
                        contribution.exampleVi,
                        color: isPaperTheme
                            ? AppColors.paperTextMuted
                            : AppColors.grayMedium,
                        fontSize: 10.sp,
                      ),
                    ),
                ],
              ),
            ),
          ],

          // Review Note if changes requested
          if (isNeedChanges &&
              contribution.reviewNote != null &&
              contribution.reviewNote!.isNotEmpty) ...[
            SizedBox(height: 8.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: AppColors.orange.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: AppColors.orange.withValues(alpha: 0.3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.feedback_outlined,
                        size: 14.r,
                        color: AppColors.orangeDark,
                      ),
                      SizedBox(width: 4.w),
                      AppText.c1(
                        context.l10n.reviewerFeedback,
                        color: AppColors.orangeDark,
                        fontWeight: FontWeight.w700,
                        fontSize: 10.sp,
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  AppText.c1(
                    contribution.reviewNote!,
                    color: isPaperTheme
                        ? AppColors.paperTextDark
                        : AppColors.grayDark,
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.h),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: onEdit,
                icon: const Icon(Icons.edit_rounded, size: 14),
                label: Text(context.l10n.editAndResubmit),
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.orangeDark,
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
