import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Header của dialog Chính sách: Icon + Tiêu đề + Badge tag + Nút đóng 3D
class PrivacyHeader extends StatelessWidget {
  const PrivacyHeader({
    required this.tag,
    required this.isClassic,
    required this.onClose,
    super.key,
  });

  final String tag;
  final bool isClassic;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final titleColor = isClassic ? AppColors.grayDark : AppColors.paperTextDark;
    final iconColor = isClassic
        ? AppColors.classicButtonEmerald
        : AppColors.paperGreen;
    final tagBg = isClassic ? const Color(0xFFD1FAE5) : const Color(0xFFECE7DA);
    final tagBorder = isClassic
        ? const Color(0xFFA7F3D0)
        : const Color(0xFFDDD5C5);
    final tagTextColor = isClassic
        ? const Color(0xFF047857)
        : const Color(0xFF4A463E);

    return Row(
      children: [
        Icon(Icons.verified_user_rounded, color: iconColor, size: 18.r),
        SizedBox(width: 6.w),
        Expanded(
          child: AppText.t3(
            'CHÍNH SÁCH & ĐIỀU KHOẢN',
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: titleColor,
          ),
        ),
        SizedBox(width: 6.w),
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: tagBg,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: tagBorder, width: 1.w),
          ),
          child: AppText.c1(
            tag,
            fontSize: 10.sp,
            fontWeight: FontWeight.w700,
            color: tagTextColor,
          ),
        ),
        SizedBox(width: 8.w),
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
