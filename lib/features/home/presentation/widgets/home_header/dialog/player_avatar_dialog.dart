import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

/// Hộp thoại chọn nguồn ảnh đại diện (Chụp ảnh mới hoặc Mở thư viện)
class PlayerAvatarDialog extends StatelessWidget {
  const PlayerAvatarDialog({
    required this.currentAvatarUrl,
    super.key,
  });

  final String? currentAvatarUrl;

  static Future<String?> show(
    BuildContext context, {
    String? currentAvatarUrl,
  }) {
    return showDialog<String>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (context) => PlayerAvatarDialog(
        currentAvatarUrl: currentAvatarUrl,
      ),
    );
  }

  Future<void> _openGallery(BuildContext context) async {
    final file = await PlayerGalleryPickerDialog.show(context);
    if (file != null && context.mounted) {
      Navigator.of(context).pop(file.path);
    }
  }

  Future<void> _openCamera(BuildContext context) async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 95,
      );

      if (pickedFile == null || !context.mounted) return;

      final croppedPath = await PlayerPhotoCropDialog.show(
        context,
        imagePath: pickedFile.path,
        isNetworkOrAsset: false,
      );

      if (croppedPath != null && context.mounted) {
        Navigator.of(context).pop(croppedPath);
      }
    } on Object {
      // Bỏ qua lỗi chụp ảnh
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return AppGameDialog(
      title: 'Chọn ảnh đại diện',
      icon: Icons.photo_camera_rounded,
      maxWidth: 420.w,
      footerText: null,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [AppColors.paperGreen, AppColors.paperGreenDark]
          : const [AppColors.blueLight, AppColors.blueDark],
      boxShadow: isPaper
          ? [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.18),
                blurRadius: 18.w,
                offset: Offset(0, 8.h),
              ),
            ]
          : null,
      child: Row(
        children: [
          Expanded(
            child: _buildActionCard(
              icon: Icons.camera_alt_rounded,
              title: 'Chụp ảnh',
              subtitle: 'Mở máy ảnh',
              gradientColors: isPaper
                  ? const [AppColors.paperGreen, AppColors.paperGreenDark]
                  : const [AppColors.blueLight, AppColors.blue],
              bevelColor: isPaper
                  ? AppColors.paperGreenExtrusion
                  : AppColors.blueDeep,
              onTap: () => _openCamera(context),
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: _buildActionCard(
              icon: Icons.photo_library_rounded,
              title: 'Thư viện',
              subtitle: 'Chọn từ máy',
              gradientColors: const [
                AppColors.orange,
                AppColors.orangeDark,
              ],
              bevelColor: AppColors.orangeDeep,
              onTap: () => _openGallery(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required List<Color> gradientColors,
    required Color bevelColor,
    required VoidCallback onTap,
  }) {
    return AppButton.custom(
      onPressed: onTap,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: gradientColors,
      ),
      extrusionColor: bevelColor,
      borderRadius: BorderRadius.circular(14.w),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: AppColors.white.withValues(alpha: 0.22),
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.white.withValues(alpha: 0.35),
                width: 1.w,
              ),
            ),
            child: Icon(
              icon,
              color: AppColors.white,
              size: 22.w,
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.t3(
                  title,
                  color: AppColors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 14.sp,
                  shadows: [
                    Shadow(
                      color: AppColors.black.withValues(alpha: 0.25),
                      offset: const Offset(0, 1),
                      blurRadius: 2,
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                AppText.c1(
                  subtitle,
                  color: AppColors.white.withValues(alpha: 0.85),
                  fontWeight: FontWeight.w600,
                  fontSize: 10.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
