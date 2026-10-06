import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Footer dialog: Nút 3D xác nhận đã đọc & đồng ý
class PrivacyFooter extends StatelessWidget {
  const PrivacyFooter({
    required this.onConfirm,
    required this.isClassic,
    super.key,
  });

  final VoidCallback onConfirm;
  final bool isClassic;

  @override
  Widget build(BuildContext context) {
    final bg = isClassic
        ? AppColors.classicButtonEmerald
        : AppColors.paperGreen;
    final extrusion = isClassic
        ? AppColors.classicButtonEmeraldExtrusion
        : AppColors.paperGreenExtrusion;

    return SizedBox(
      width: double.infinity,
      child: AppButton(
        icon: Icon(Icons.check_rounded, color: AppColors.white, size: 16.r),
        text: 'TÔI ĐÃ HIỂU VÀ ĐỒNG Ý',
        backgroundColor: bg,
        extrusionColor: extrusion,
        fontSize: 12,
        fontWeight: FontWeight.w700,
        borderRadius: BorderRadius.circular(10.r),
        padding: EdgeInsets.symmetric(vertical: 6.h),
        onPressed: onConfirm,
      ),
    );
  }
}
