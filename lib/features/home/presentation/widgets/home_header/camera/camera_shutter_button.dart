import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Nút bấm chụp ảnh phong cách Game 3D Casual (nổi khối, đàn hồi, lún 3D)
class CameraShutterButton extends StatelessWidget {
  const CameraShutterButton({
    required this.onTap,
    required this.isCapturing,
    super.key,
  });

  final VoidCallback onTap;
  final bool isCapturing;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(4.r),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.white.withValues(alpha: 0.8),
            width: 3.w,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.blue.withValues(alpha: 0.35),
              blurRadius: 18.r,
              spreadRadius: 2.r,
            ),
          ],
        ),
        child: AppButton.custom(
          shape: BoxShape.circle,
          width: 72.r,
          height: 72.r,
          extrusionHeight: 4.h,
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.blueLight,
              AppColors.blue,
            ],
          ),
          extrusionColor: AppColors.blueDeep,
          borderColor: AppColors.white.withValues(alpha: 0.4),
          onPressed: isCapturing ? null : onTap,
          child: Center(
            child: isCapturing
                ? SizedBox(
                    width: 24.r,
                    height: 24.r,
                    child: const CircularProgressIndicator(
                      color: AppColors.white,
                      strokeWidth: 3,
                    ),
                  )
                : Icon(
                    Icons.camera_alt_rounded,
                    color: AppColors.white,
                    size: 28.r,
                  ),
          ),
        ),
      ),
    );
  }
}
