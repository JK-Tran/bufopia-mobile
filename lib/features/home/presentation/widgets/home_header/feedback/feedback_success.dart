import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
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
            'Cảm ơn bạn đã đóng góp!',
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
                  ? "Ý kiến chỉnh sửa từ vựng '$reportedWord' của bạn đã "
                        'được chuyển tới Ban quản trị Bufopia '
                        'để kiểm duyệt và cập nhật sớm nhất.'
                  : 'Góp ý của bạn đã được ghi nhận và sẽ giúp Bufopia '
                        'hoàn thiện hơn mỗi ngày.',
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
                    text: isWordReport ? 'XEM TỪ KHÁC' : 'GÓP Ý KHÁC',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
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
                    text: 'HOÀN TẤT',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
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
