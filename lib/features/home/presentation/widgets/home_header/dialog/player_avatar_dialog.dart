import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/player_gallery_picker_dialog.dart';

import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bufopia/features/home/presentation/pages/camera_page.dart';

/// Há»™p thoáº¡i chá»n nguá»“n áº£nh Ä‘áº¡i diá»‡n (Chá»¥p áº£nh má»›i hoáº·c Má»Ÿ thÆ° viá»‡n)
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
      final file = await CameraPage.open(context);
      if (file != null && context.mounted) {
        Navigator.of(context).pop(file.path);
      }
    } on Object {
      if (context.mounted) {
        AppToast.showWarning(
          context,
          'KhÃ´ng thá»ƒ má»Ÿ mÃ¡y áº£nh. '
          'Vui lÃ²ng cáº¥p quyá»n truy cáº­p mÃ¡y áº£nh trong CÃ i Ä‘áº·t.',
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final l10n = context.l10n;

    return AppGameDialog(
      title: l10n.chooseAvatarTitle,
      icon: Icons.photo_camera_rounded,
      maxWidth: 340.w,
      footerText: null,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
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
              title: l10n.takePhoto,
              subtitle: l10n.openCamera,
              gradientColors: isPaper
                  ? const [AppColors.paperGreen, AppColors.paperGreenDark]
                  : const [AppColors.blueLight, AppColors.blue],
              bevelColor: isPaper
                  ? AppColors.paperGreenExtrusion
                  : AppColors.blueDeep,
              onTap: () => _openCamera(context),
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: _buildActionCard(
              icon: Icons.photo_library_rounded,
              title: l10n.photoGallery,
              subtitle: l10n.chooseFromDevice,
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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
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
              size: 20.w,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.t3(
                  title,
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
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
                  fontSize: 10.sp,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
