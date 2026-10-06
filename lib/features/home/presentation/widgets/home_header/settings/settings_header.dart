import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Header của dialog Cài đặt: Icon + Tiêu đề + Badge + Nút đóng đỏ 3D
class SettingsHeader extends StatelessWidget {
  const SettingsHeader({
    required this.isClassic,
    required this.onClose,
    super.key,
  });

  final bool isClassic;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final badgeBg = isClassic
        ? AppColors.classicBadgePurpleBg
        : AppColors.paperBadgeBg;
    final badgeBorder = isClassic
        ? AppColors.classicBadgePurpleBorder
        : AppColors.paperBadgeBorder;
    final badgeTextColor = isClassic
        ? AppColors.classicBadgePurpleText
        : AppColors.paperBadgeText;

    return Row(
      children: [
        Icon(
          Icons.settings_rounded,
          color: AppColors.paperHeaderIcon,
          size: 18.r,
        ),
        SizedBox(width: 6.w),
        AppText.t2(
          'CÀI ĐẶT TRÒ CHƠI',
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.paperTextDark,
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: badgeBg,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: badgeBorder, width: 1.w),
          ),
          child: AppText.c1(
            'HỆ THỐNG',
            fontSize: 10.sp,
            fontWeight: FontWeight.w700,
            color: badgeTextColor,
          ),
        ),
        SizedBox(width: 6.w),
        AppButton.close(
          onPressed: onClose,
          backgroundColor: isClassic
              ? AppColors.white
              : const Color(0xFFFDFBF7),
          borderColor: const Color(0xFFEF4444),
          extrusionColor: const Color(0xFFDC2626),
          iconColor: const Color(0xFFDC2626),
          size: 24.r,
          iconSize: 14.r,
        ),
      ],
    );
  }
}
