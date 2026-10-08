import 'dart:io';

import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';

/// Tab hiển thị lưới ảnh và ô mở máy ảnh
class GalleryPhotosTab extends StatelessWidget {
  const GalleryPhotosTab({
    required this.isLoading,
    required this.isPermissionDenied,
    required this.additionalFiles,
    required this.assets,
    required this.selectedFile,
    required this.selectedAsset,
    required this.scrollController,
    required this.onSelectFile,
    required this.onSelectAsset,
    required this.onOpenCamera,
    required this.onPickFromSystemGallery,
    super.key,
  });

  final bool isLoading;
  final bool isPermissionDenied;
  final List<File> additionalFiles;
  final List<AssetEntity> assets;
  final File? selectedFile;
  final AssetEntity? selectedAsset;
  final ScrollController scrollController;
  final ValueChanged<File> onSelectFile;
  final ValueChanged<AssetEntity> onSelectAsset;
  final VoidCallback onOpenCamera;
  final VoidCallback onPickFromSystemGallery;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.blue),
        ),
      );
    }

    final totalItems = 1 + additionalFiles.length + assets.length;

    return Column(
      children: [
        if (isPermissionDenied && additionalFiles.isEmpty)
          _buildPermissionBanner(),
        Expanded(
          child: GridView.builder(
            controller: scrollController,
            padding: EdgeInsets.all(8.w),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 6.w,
              mainAxisSpacing: 6.w,
            ),
            itemCount: totalItems,
            itemBuilder: (context, index) {
              if (index == 0) {
                return _buildCameraTile();
              }

              final fileIndex = index - 1;
              if (fileIndex < additionalFiles.length) {
                final file = additionalFiles[fileIndex];
                final isSelected = selectedFile?.path == file.path;
                return GestureDetector(
                  onTap: () => onSelectFile(file),
                  child: _buildGridItem(
                    imageWidget: Image.file(file, fit: BoxFit.cover),
                    isSelected: isSelected,
                  ),
                );
              }

              final assetIndex = fileIndex - additionalFiles.length;
              if (assetIndex < 0 || assetIndex >= assets.length) {
                return const SizedBox.shrink();
              }

              final asset = assets[assetIndex];
              final isSelected = selectedAsset?.id == asset.id;

              return GestureDetector(
                onTap: () => onSelectAsset(asset),
                child: _buildGridItem(
                  imageWidget: AssetEntityImage(
                    asset,
                    isOriginal: false,
                    thumbnailSize: const ThumbnailSize.square(250),
                    fit: BoxFit.cover,
                  ),
                  isSelected: isSelected,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPermissionBanner() {
    return Container(
      margin: EdgeInsets.all(8.w),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.skySurface,
        borderRadius: BorderRadius.circular(10.w),
        border: Border.all(color: AppColors.skyBorder),
      ),
      child: Row(
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: AppColors.blue,
            size: 18.w,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: AppText.c1(
              'Chọn ảnh trực tiếp từ bộ nhớ mà không cần cấp quyền.',
              color: AppColors.blueDark,
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
            ),
          ),
          AppButton.primary(
            text: 'Mở thư viện',
            fontSize: 12.sp,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
            onPressed: onPickFromSystemGallery,
          ),
        ],
      ),
    );
  }

  Widget _buildCameraTile() {
    return AppButton.custom(
      onPressed: onOpenCamera,
      backgroundColor: AppColors.lightBackground,
      borderColor: AppColors.blue.withValues(alpha: 0.35),
      extrusionColor: AppColors.blueDeep.withValues(alpha: 0.3),
      extrusionHeight: 2.5.h,
      borderRadius: BorderRadius.circular(10.w),
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: const BoxDecoration(
              color: AppColors.skyLight,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.camera_alt_rounded,
              color: AppColors.blue,
              size: 20.w,
            ),
          ),
          SizedBox(height: 4.h),
          AppText.c1(
            'Máy ảnh',
            color: AppColors.grayDark,
            fontWeight: FontWeight.w700,
            fontSize: 10.sp,
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem({
    required Widget imageWidget,
    required bool isSelected,
  }) {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.w),
            child: imageWidget,
          ),
        ),
        if (isSelected)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.w),
                border: Border.all(
                  color: AppColors.blue,
                  width: 3.w,
                ),
                color: AppColors.blue.withValues(alpha: 0.20),
              ),
            ),
          ),
        Positioned(
          top: 5.w,
          right: 5.w,
          child: Container(
            width: 20.w,
            height: 20.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected
                  ? AppColors.blue
                  : AppColors.black.withValues(alpha: 0.4),
              border: Border.all(
                color: AppColors.white,
                width: 1.5.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.2),
                  blurRadius: 3.w,
                  offset: Offset(0, 1.h),
                ),
              ],
            ),
            child: isSelected
                ? Icon(
                    Icons.check_rounded,
                    size: 14.w,
                    color: AppColors.white,
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
