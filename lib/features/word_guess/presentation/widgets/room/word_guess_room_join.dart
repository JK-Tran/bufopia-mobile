import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Tab Vào phòng (Word Guess Room Join)
/// Ô nhập mã phòng / dán link mời + Nút chuẩn AppButton 3D không bị xô lệch layout
class WordGuessRoomJoin extends StatelessWidget {
  const WordGuessRoomJoin({
    required this.controller,
    required this.isChecking,
    required this.onJoin,
    super.key,
  });

  final TextEditingController controller;
  final bool isChecking;
  final VoidCallback onJoin;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final textColorDark = isPaper
        ? const Color(0xFF3B352B)
        : AppColors.grayDark;
    final textColorMuted = isPaper
        ? const Color(0xFF7E7668)
        : AppColors.grayMedium;
    final inputBg = isPaper ? const Color(0xFFFAF6EF) : AppColors.white;
    final inputBorder = isPaper
        ? const Color(0xFF9A9184)
        : AppColors.classicBorder;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppText.b2(
          'Mã phòng hoặc link mời',
          fontWeight: FontWeight.w700,
          color: textColorDark,
        ),
        SizedBox(height: 6.h),
        Container(
          decoration: BoxDecoration(
            color: inputBg,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: inputBorder, width: 1.2),
          ),
          child: TextField(
            controller: controller,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: textColorDark,
            ),
            decoration: InputDecoration(
              hintText: 'Nhập mã 6 số hoặc dán link mời',
              hintStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: textColorMuted,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 14.w,
                vertical: 12.h,
              ),
              border: InputBorder.none,
            ),
            onSubmitted: (_) => onJoin(),
          ),
        ),
        SizedBox(height: 4.h),
        AppText.c1(
          'Nhập mã bạn bè đã chia sẻ.',
          color: textColorMuted,
        ),
        SizedBox(height: 16.h),
        // Nút VÀO PHÒNG (Screenshot 1) chuẩn AppButton
        AppButton(
          text: 'VÀO PHÒNG',
          icon: Icon(
            Icons.mail_outline_rounded,
            size: 16.r,
            color: AppColors.white,
          ),
          height: 44.h,
          fontSize: 14.sp,
          backgroundColor: isPaper ? const Color(0xFF438E44) : AppColors.green,
          borderColor: isPaper ? const Color(0xFF2E6B30) : AppColors.greenDark,
          extrusionColor: isPaper
              ? const Color(0xFF2C632D)
              : AppColors.greenDark,
          extrusionHeight: 2,
          isLoading: isChecking,
          onPressed: isChecking ? null : onJoin,
        ),
      ],
    );
  }
}
