import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';

/// Tab hiển thị danh sách Album ảnh
class GalleryAlbumsTab extends StatelessWidget {
  const GalleryAlbumsTab({
    required this.albums,
    required this.currentAlbum,
    required this.onSwitchAlbum,
    super.key,
  });

  final List<AssetPathEntity> albums;
  final AssetPathEntity? currentAlbum;
  final ValueChanged<AssetPathEntity> onSwitchAlbum;

  @override
  Widget build(BuildContext context) {
    if (albums.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.photo_album_outlined,
              size: 40.w,
              color: AppColors.grayMedium,
            ),
            SizedBox(height: 8.h),
            AppText.t3(
              'Không tìm thấy album',
              color: AppColors.grayDark,
              fontWeight: FontWeight.w800,
              fontSize: 14.sp,
            ),
          ],
        ),
      );
    }

    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      itemCount: albums.length,
      separatorBuilder: (context, index) => const Divider(
        height: 1,
        color: AppColors.grayLight,
      ),
      itemBuilder: (context, index) {
        final album = albums[index];
        final isSelected = currentAlbum?.id == album.id;

        return _AlbumTileItem(
          album: album,
          isSelected: isSelected,
          onTap: () => onSwitchAlbum(album),
        );
      },
    );
  }
}

class _AlbumTileItem extends StatelessWidget {
  const _AlbumTileItem({
    required this.album,
    required this.isSelected,
    required this.onTap,
  });

  final AssetPathEntity album;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<int>(
      future: album.assetCountAsync,
      builder: (context, countSnapshot) {
        final count = countSnapshot.data ?? 0;

        return FutureBuilder<List<AssetEntity>>(
          future: album.getAssetListPaged(page: 0, size: 1),
          builder: (context, assetSnapshot) {
            final firstAsset = assetSnapshot.data?.firstOrNull;

            return InkWell(
              onTap: onTap,
              borderRadius: BorderRadius.circular(8.w),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 6.h,
                ),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.blue.withValues(alpha: 0.08)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8.w),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 36.h,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: AppColors.lightBackground,
                        borderRadius: BorderRadius.circular(8.w),
                        border: Border.all(
                          color: isSelected
                              ? AppColors.blue
                              : AppColors.grayLight,
                          width: 1.5.w,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7.w),
                        child: firstAsset != null
                            ? AssetEntityImage(
                                firstAsset,
                                isOriginal: false,
                                thumbnailSize: const ThumbnailSize.square(100),
                                fit: BoxFit.cover,
                              )
                            : Icon(
                                Icons.image_not_supported_outlined,
                                color: AppColors.grayMedium,
                                size: 18.w,
                              ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.b2(
                            album.name,
                            fontWeight: isSelected
                                ? FontWeight.w800
                                : FontWeight.w600,
                            fontSize: 14.sp,
                            color: isSelected
                                ? AppColors.blue
                                : AppColors.grayDark,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 2.h),
                          AppText.c1(
                            '$count ảnh',
                            fontWeight: FontWeight.w600,
                            fontSize: 10.sp,
                            color: AppColors.grayMedium,
                          ),
                        ],
                      ),
                    ),
                    if (isSelected)
                      Icon(
                        Icons.check_circle_rounded,
                        color: AppColors.blue,
                        size: 18.w,
                      ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
