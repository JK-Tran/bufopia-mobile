import 'dart:io';

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';

/// Thanh công cụ đáy hiển thị preview ảnh đã chọn và nút Tiếp theo 3D
class GalleryBottomBar extends StatelessWidget {
  const GalleryBottomBar({
    required this.selectedFile,
    required this.selectedAsset,
    required this.onNextPressed,
    super.key,
  });

  final File? selectedFile;
  final AssetEntity? selectedAsset;
  final VoidCallback? onNextPressed;

  bool get hasSelection => selectedFile != null || selectedAsset != null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: const BoxDecoration(
        color: AppColors.skySurface,
        border: Border(
          top: BorderSide(
            color: AppColors.grayLight,
          ),
        ),
      ),
      child: Row(
        children: [
          if (hasSelection) ...[
            Container(
              width: 30.h,
              height: 30.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.w),
                border: Border.all(
                  color: AppColors.blue,
                  width: 1.5.w,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.w),
                child: selectedFile != null
                    ? Image.file(selectedFile!, fit: BoxFit.cover)
                    : AssetEntityImage(
                        selectedAsset!,
                        isOriginal: false,
                        thumbnailSize: const ThumbnailSize.square(100),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            SizedBox(width: 8.w),
            AppText.c1(
              '1 ảnh đã chọn',
              color: AppColors.blueDark,
              fontWeight: FontWeight.w800,
              fontSize: 12.sp,
            ),
          ] else ...[
            Icon(
              Icons.touch_app_rounded,
              size: 16.w,
              color: AppColors.grayMedium,
            ),
            SizedBox(width: 6.w),
            AppText.c1(
              'Chạm vào ảnh để chọn',
              color: AppColors.grayMedium,
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
            ),
          ],

          const Spacer(),

          // 3D Game "Tiếp theo" Button
          if (hasSelection)
            AppButton.primary(
              text: 'Tiếp theo',
              height: 28.h,
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              icon: Icon(
                Icons.arrow_forward_rounded,
                color: AppColors.white,
                size: 14.w,
              ),
              iconAfter: true,
              fontSize: 12.sp,
              extrusionHeight: 2.h,
              onPressed: onNextPressed,
            )
          else
            AppButton.disabled(
              text: 'Tiếp theo',
              height: 28.h,
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              icon: Icon(
                Icons.arrow_forward_rounded,
                color: AppColors.grayMedium,
                size: 14.w,
              ),
              iconAfter: true,
              fontSize: 12.sp,
              extrusionHeight: 2.h,
            ),
        ],
      ),
    );
  }
}
