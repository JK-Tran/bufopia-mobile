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

  static const Color _mossGreen = Color(0xFF3B6E38);
  static const Color _mossGreenDark = Color(0xFF2A5228);

  @override
  Widget build(BuildContext context) {
    final isWordReport = reportedWord != null && reportedWord!.isNotEmpty;

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. Icon tích xanh lớn
            Container(
              width: 44.r,
              height: 44.r,
              decoration: const BoxDecoration(
                color: Color(0xFFE8F9EE),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check_circle_rounded,
                size: 42.r,
                color: AppColors.success,
              ),
            ),

            SizedBox(height: 8.h),

            // 2. Tiêu đề
            AppText.t2(
              'Cảm ơn bạn đã đóng góp!',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: AppColors.grayDark,
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 4.h),

            // 3. Đoạn giải thích
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 420.w),
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

            SizedBox(height: 12.h),

            // 4. Hai nút điều hướng
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                  text: isWordReport ? 'XEM TỪ KHÁC' : 'GÓP Ý KHÁC',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  backgroundColor: AppColors.white,
                  textColor: AppColors.sky,
                  borderColor: AppColors.skyBorder,
                  extrusionColor: const Color(0xFF7DD3FC),
                  extrusionHeight: 2,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                    vertical: 6.h,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                  onPressed: onReset,
                ),
                SizedBox(width: 10.w),
                AppButton(
                  text: 'HOÀN TẤT',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  backgroundColor: _mossGreen,
                  borderColor: _mossGreenDark,
                  extrusionColor: _mossGreenDark,
                  extrusionHeight: 2,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 6.h,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                  onPressed: onComplete,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
