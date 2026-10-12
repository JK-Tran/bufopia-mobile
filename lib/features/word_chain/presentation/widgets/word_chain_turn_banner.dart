import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Banner trạng thái lượt đi & thông báo phản hồi (Từ hợp lệ, đang nghĩ, lỗi).
class WordChainTurnBanner extends StatelessWidget {
  const WordChainTurnBanner({
    required this.isMyTurn,
    required this.requiredLetter,
    required this.rivalName,
    super.key,
    this.rejectedReason,
    this.lastCorrectWord,
  });

  final bool isMyTurn;
  final String requiredLetter;
  final String rivalName;
  final String? rejectedReason;
  final String? lastCorrectWord;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    // 1. Trường hợp có lỗi / từ bị từ chối
    if (rejectedReason != null && rejectedReason!.isNotEmpty) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: AppColors.red.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.red.withValues(alpha: 0.35),
            width: 1.w,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.error_outline_rounded,
              size: 14.r,
              color: AppColors.red,
            ),
            SizedBox(width: 6.w),
            Flexible(
              child: AppText.c1(
                rejectedReason!,
                color: AppColors.red,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );
    }

    // 2. Trường hợp vừa có từ hợp lệ
    if (lastCorrectWord != null && lastCorrectWord!.isNotEmpty) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: isPaper
              ? AppColors.paperGreen.withValues(alpha: 0.15)
              : AppColors.green.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: isPaper ? AppColors.paperGreen : AppColors.green,
            width: 1.2.w,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle_rounded,
              size: 14.r,
              color: isPaper ? AppColors.paperGreenDark : AppColors.green,
            ),
            SizedBox(width: 6.w),
            AppText.c1(
              'Chính xác: $lastCorrectWord',
              color: isPaper ? AppColors.paperGreenDark : AppColors.green,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      );
    }

    // 3. Thanh trạng thái lượt đi thông thường
    final letter = requiredLetter.trim().toUpperCase();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: isPaper
            ? AppColors.paperCardBg
            : AppColors.white.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isPaper
              ? AppColors.paperBorder
              : AppColors.classicBorder,
          width: 1.w,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (letter.isNotEmpty) ...[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: AppColors.orangeDark,
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: AppText.c1(
                letter,
                color: AppColors.white,
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 6.w),
          ],
          Flexible(
            child: AppText.c1(
              isMyTurn
                  ? (letter.isNotEmpty
                      ? 'Đến lượt bạn — hãy nhập từ bắt đầu bằng $letter'
                      : 'Đến lượt bạn — hãy nhập một từ bất kỳ để bắt đầu')
                  : '$rivalName đang nghĩ từ nối...',
              color: isPaper
                  ? AppColors.paperTextDark
                  : AppColors.grayDark,
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
