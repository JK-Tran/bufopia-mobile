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
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final inputHeight = isLandscape ? 38.0 : 38.h;
    final fontSize = isLandscape ? 12.5 : 12.sp;
    final iconSize = isLandscape ? 13.0 : 13.r;

    return Row(
      children: [
        // Khung nhập mã phòng
        Expanded(
          child: Container(
            height: inputHeight,
            padding: EdgeInsets.symmetric(
              horizontal: isLandscape ? 12.0 : 12.w,
            ),
            decoration: BoxDecoration(
              color: isPaper
                  ? AppColors.paperSurface
                  : AppColors.lightBackground,
              borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
              border: Border.all(
                color: isPaper ? AppColors.paperBorder : AppColors.blueLight,
                width: 1.2,
              ),
            ),
            alignment: Alignment.centerLeft,
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
                color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
              ),
              decoration: InputDecoration(
                hintText: 'NHẬP 6 SỐ HOẶC LINK...',
                hintStyle: TextStyle(
                  fontSize: fontSize,
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

        SizedBox(width: isLandscape ? 8.0 : 8.w),

        // Nút chuẩn AppButton
        if (isPaper)
          AppButton(
            text: 'VÀO',
            icon: Icon(
              Icons.arrow_forward_rounded,
              size: iconSize,
              color: AppColors.white,
            ),
            iconAfter: true,
            height: inputHeight,
            fontSize: fontSize,
            padding: EdgeInsets.symmetric(
              horizontal: isLandscape ? 16.0 : 14.w,
            ),
            borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
            backgroundColor: AppColors.paperGreen,
            borderColor: AppColors.paperGreenBorder,
            extrusionColor: AppColors.paperGreenExtrusion,
            extrusionHeight: 2,
            onPressed: onJoin,
          )
        else
          AppButton.primary(
            text: 'VÀO',
            icon: Icon(
              Icons.arrow_forward_rounded,
              size: iconSize,
              color: AppColors.white,
            ),
            iconAfter: true,
            height: inputHeight,
            fontSize: fontSize,
            padding: EdgeInsets.symmetric(
              horizontal: isLandscape ? 16.0 : 14.w,
            ),
            borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
            extrusionHeight: 2,
            onPressed: onJoin,
          ),
      ],
    );
  }
}
