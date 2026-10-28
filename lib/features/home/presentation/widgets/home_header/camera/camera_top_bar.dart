import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thanh công cụ phía trên của màn hình Camera (Đóng, Flash, Lật camera)
class CameraTopBar extends StatelessWidget {
  const CameraTopBar({
    required this.onClose,
    required this.showControls,
    required this.flashMode,
    required this.onToggleFlash,
    required this.hasMultipleCameras,
    required this.onToggleCamera,
    super.key,
  });

  final VoidCallback onClose;
  final bool showControls;
  final FlashMode flashMode;
  final VoidCallback onToggleFlash;
  final bool hasMultipleCameras;
  final VoidCallback onToggleCamera;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Nút Đóng 3D tròn đỏ theo chuẩn ui_guidelines
        Tooltip(
          message: l10n.close,
          child: AppButton.close(
            onPressed: onClose,
            backgroundColor: AppColors.redDark,
            extrusionColor: AppColors.redDeep,
            iconColor: AppColors.white,
            size: 40.r,
            iconSize: 22.r,
          ),
        ),
        if (showControls)
          Row(
            children: [
              // Nút bật/đổi chế độ Flash
              _buildCircularAction(
                tooltip: l10n.toggleFlash,
                icon: _getFlashIcon(),
                iconColor: flashMode == FlashMode.off
                    ? AppColors.white
                    : AppColors.gold,
                onPressed: onToggleFlash,
              ),
              if (hasMultipleCameras) ...[
                SizedBox(width: 12.w),
                // Nút lật camera trước / sau
                _buildCircularAction(
                  tooltip: l10n.switchCamera,
                  icon: Icons.flip_camera_ios_rounded,
                  iconColor: AppColors.white,
                  onPressed: onToggleCamera,
                ),
              ],
            ],
          ),
      ],
    );
  }

  Widget _buildCircularAction({
    required String tooltip,
    required IconData icon,
    required Color iconColor,
    required VoidCallback onPressed,
  }) {
    return Tooltip(
      message: tooltip,
      child: AppButton.custom(
        shape: BoxShape.circle,
        width: 40.r,
        height: 40.r,
        extrusionHeight: 2.h,
        backgroundColor: AppColors.black.withValues(alpha: 0.5),
        extrusionColor: AppColors.black.withValues(alpha: 0.8),
        borderColor: AppColors.white.withValues(alpha: 0.2),
        onPressed: onPressed,
        child: Center(
          child: Icon(
            icon,
            color: iconColor,
            size: 20.r,
          ),
        ),
      ),
    );
  }

  IconData _getFlashIcon() {
    switch (flashMode) {
      case FlashMode.off:
        return Icons.flash_off_rounded;
      case FlashMode.auto:
        return Icons.flash_auto_rounded;
      case FlashMode.torch:
      case FlashMode.always:
        return Icons.flash_on_rounded;
    }
  }
}
