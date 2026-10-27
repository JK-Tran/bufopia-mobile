import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Huy hiệu hiển thị một từ đã thử trong lịch sử đoán (History Item)
/// Xanh lá khi đoán đúng, đỏ khi đoán sai / bỏ qua
class WordGuessHistoryItem extends StatelessWidget {
  const WordGuessHistoryItem({
    required this.word,
    required this.isCorrect,
    required this.isPaperTheme,
    super.key,
  });

  final String word;
  final bool isCorrect;
  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    final primaryColor = isCorrect
        ? (isPaperTheme ? AppColors.paperGreen : AppColors.green)
        : AppColors.error;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: primaryColor.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: primaryColor.withValues(alpha: 0.6),
          width: 1.w,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isCorrect ? Icons.check_rounded : Icons.close_rounded,
            size: 12.r,
            color: primaryColor,
          ),
          SizedBox(width: 4.w),
          AppText.c1(
            word,
            color: primaryColor,
            fontSize: 10.sp,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
