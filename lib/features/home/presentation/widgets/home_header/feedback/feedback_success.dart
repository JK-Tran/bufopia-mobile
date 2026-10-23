import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedbackSuccess extends StatelessWidget {
  const FeedbackSuccess({
    required this.onReset,
    required this.onComplete,
    this.reportedWord,
    super.key,
  });

  final String? reportedWord;
  final VoidCallback onReset;
  final VoidCallback onComplete;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isWordReport = reportedWord != null && reportedWord!.isNotEmpty;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1. Icon tích xanh nổi bật
          Container(
            width: 52.r,
            height: 52.r,
            decoration: BoxDecoration(
              color: AppColors.feedbackSuccessBg,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.feedbackSuccessBorder,
                width: 2.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.modeBotButton.withValues(alpha: 0.2),
                  blurRadius: 10.r,
                  offset: Offset(0, 3.h),
                ),
              ],
            ),
            child: Icon(
              Icons.check_circle_rounded,
              size: 36.r,
              color: AppColors.feedbackSuccessIcon,
            ),
          ),

          SizedBox(height: 12.h),

          // 2. Tiêu đề
          AppText.t2(
            l10n.feedbackThanks,
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            color: AppColors.grayDark,
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 6.h),

          // 3. Đoạn giải thích
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 280.w),
            child: AppText.b2(
              isWordReport
                  ? l10n.feedbackWordReportSuccess(reportedWord!)
                  : l10n.feedbackGeneralSuccess,
              fontSize: 12.sp,
              color: AppColors.grayMedium,
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 16.h),

          // 4. Hai nút điều hướng cân đối
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Expanded(
                  child: AppButton(
                    text: isWordReport
                        ? l10n.viewOtherWords
                        : l10n.sendOtherFeedback,
                    fontSize: 12.sp,
                    height: 38.h,
                    backgroundColor: AppColors.white,
                    textColor: AppColors.paperBadgeText,
                    borderColor: AppColors.feedbackSandBorder,
                    extrusionColor: AppColors.feedbackSandExtrusion,
                    borderRadius: BorderRadius.circular(8.r),
                    onPressed: onReset,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: AppButton(
                    text: l10n.confirm.toUpperCase(),
                    fontSize: 12.sp,
                    height: 38.h,
                    backgroundColor: AppColors.feedbackMossGreen,
                    borderColor: AppColors.feedbackMossGreenDark,
                    extrusionColor: AppColors.feedbackMossGreenDark,
                    borderRadius: BorderRadius.circular(8.r),
                    onPressed: onComplete,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
