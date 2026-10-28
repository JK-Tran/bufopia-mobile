import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Khung overlay hỗ trợ người chơi căn khuôn mặt chuẩn vào giữa Avatar
class CameraAvatarGuide extends StatelessWidget {
  const CameraAvatarGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Vòng tròn căn avatar
            Container(
              width: 260.r,
              height: 260.r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.white.withValues(alpha: 0.65),
                  width: 2.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.blue.withValues(alpha: 0.35),
                    blurRadius: 16.r,
                    spreadRadius: 2.r,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            // Hướng dẫn chuẩn quy tắc AppText (chữ thường không set fontWeight)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: AppColors.black.withValues(alpha: 0.55),
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  color: AppColors.white.withValues(alpha: 0.15),
                ),
              ),
              child: AppText.b2(
                'Căn khuôn mặt vào hình tròn',
                color: AppColors.white.withValues(alpha: 0.9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
