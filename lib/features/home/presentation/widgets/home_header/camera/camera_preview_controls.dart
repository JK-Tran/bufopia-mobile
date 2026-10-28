import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thanh công cụ xem trước và xác nhận ảnh sau khi chụp (chuẩn Zalo/Facebook)
class CameraPreviewControls extends StatelessWidget {
  const CameraPreviewControls({
    required this.onRetake,
    required this.onConfirm,
    this.isConfirming = false,
    super.key,
  });

  final VoidCallback onRetake;
  final VoidCallback onConfirm;
  final bool isConfirming;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.black.withValues(alpha: 0.65),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: AppColors.white.withValues(alpha: 0.15),
        ),
      ),
      child: Row(
        children: [
          // Nút Chụp lại (AppButton.secondary chuẩn 3D Game)
          Expanded(
            child: AppButton.secondary(
              text: context.l10n.retake,
              icon: Icon(
                Icons.refresh_rounded,
                size: 18.r,
                color: AppColors.grayDark,
              ),
              height: 44.h,
              onPressed: isConfirming ? null : onRetake,
            ),
          ),
          SizedBox(width: 14.w),
          // Nút Dùng ảnh này (AppButton.primary chuẩn 3D Game)
          Expanded(
            child: AppButton.primary(
              text: context.l10n.useThisPhoto,
              icon: Icon(
                Icons.check_circle_rounded,
                size: 18.r,
                color: AppColors.white,
              ),
              height: 44.h,
              isLoading: isConfirming,
              onPressed: isConfirming ? null : onConfirm,
            ),
          ),
        ],
      ),
    );
  }
}
