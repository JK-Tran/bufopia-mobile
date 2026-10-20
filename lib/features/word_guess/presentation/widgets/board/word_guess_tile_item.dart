import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Ô chữ cái 3D đơn lẻ trong trò chơi Đoán từ khuyết (Tile Item)
/// Hỗ trợ trạng thái mở (revealed) và ẩn (hidden) với 2 theme Paper & Classic
class WordGuessTileItem extends StatelessWidget {
  const WordGuessTileItem({
    required this.letter,
    required this.isRevealed,
    required this.width,
    required this.height,
    required this.isPaperTheme,
    super.key,
  });

  final String letter;
  final bool isRevealed;
  final double width;
  final double height;
  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    final tileFontSize = (width >= 32.w)
        ? 18.sp
        : (width >= 24.w ? 14.sp : 12.sp);

    final bgColor = isRevealed
        ? (isPaperTheme ? AppColors.paperCardBg : AppColors.white)
        : (isPaperTheme ? AppColors.paperSurface : AppColors.white);

    final borderColor = isRevealed
        ? (isPaperTheme ? AppColors.paperGreenBorder : AppColors.green)
        : (isPaperTheme ? AppColors.paperBorder : AppColors.classicBorder);

    final extrusionColor = isRevealed
        ? (isPaperTheme
            ? AppColors.paperGreenExtrusion
            : AppColors.greenDark.withValues(alpha: 0.5))
        : (isPaperTheme
            ? AppColors.paperExtrusion
            : AppColors.grayExtrusion.withValues(alpha: 0.5));

    final textColor = isRevealed
        ? (isPaperTheme ? AppColors.paperGreenDark : AppColors.greenDark)
        : (isPaperTheme ? AppColors.paperTextMedium : AppColors.grayMedium);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: borderColor,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: extrusionColor,
            offset: Offset(0, 2.5.h),
          ),
        ],
      ),
      child: Center(
        child: AppText.t2(
          isRevealed ? letter : '-',
          color: textColor,
          fontSize: tileFontSize,
          fontWeight: isRevealed ? FontWeight.w700 : null,
        ),
      ),
    );
  }
}
