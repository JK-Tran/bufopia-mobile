import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Ô nhập mã phòng thi đấu + Nút 3D VÀO (chuẩn AppButton)
class ChallengeJoin extends StatelessWidget {
  const ChallengeJoin({
    required this.controller,
    required this.onJoin,
    super.key,
  });

  final TextEditingController controller;
  final VoidCallback onJoin;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Row(
      children: [
        // Khung nhập mã phòng
        Expanded(
          child: Container(
            height: 22.h,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            decoration: BoxDecoration(
              color: isPaper
                  ? AppColors.paperSurface
                  : AppColors.lightBackground,
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(
                color: isPaper ? AppColors.paperBorder : AppColors.blueLight,
                width: 1.1,
              ),
            ),
            alignment: Alignment.centerLeft,
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              ),
              decoration: InputDecoration(
                hintText: 'NHẬP 6 SỐ HOẶC LINK...',
                hintStyle: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: isPaper
                      ? AppColors.paperTextMuted
                      : AppColors.grayMedium,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
              onSubmitted: (_) => onJoin(),
            ),
          ),
        ),

        SizedBox(width: 5.w),

        // Nút chuẩn AppButton
        if (isPaper)
          AppButton(
            text: 'VÀO',
            icon: Icon(
              Icons.arrow_forward_rounded,
              size: 10.r,
              color: AppColors.white,
            ),
            iconAfter: true,
            height: 22.h,
            fontSize: 10.sp,
            fontWeight: FontWeight.w700,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            backgroundColor: AppColors.paperGreen,
            borderColor: AppColors.paperGreenBorder,
            extrusionColor: AppColors.paperGreenExtrusion,
            onPressed: onJoin,
          )
        else
          AppButton.primary(
            text: 'VÀO',
            icon: Icon(
              Icons.arrow_forward_rounded,
              size: 10.r,
              color: AppColors.white,
            ),
            iconAfter: true,
            height: 22.h,
            fontSize: 10.sp,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            onPressed: onJoin,
          ),
      ],
    );
  }
}
