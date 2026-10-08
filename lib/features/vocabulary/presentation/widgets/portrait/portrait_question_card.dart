import 'package:bufopia/components/app_countdown_timer.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thẻ câu hỏi mục tiêu có huy hiệu đồng hồ nổi đính trên đỉnh
/// (Top Floating Badge)
class PortraitQuestionCard extends StatelessWidget {
  const PortraitQuestionCard({
    required this.targetWord,
    required this.topicName,
    required this.remainingSeconds,
    required this.isPaper,
    this.onSpeakerTap,
    super.key,
  });

  final String targetWord;
  final String topicName;
  final int remainingSeconds;
  final bool isPaper;
  final VoidCallback? onSpeakerTap;

  @override
  Widget build(BuildContext context) {
    final cardDecoration = isPaper
        ? BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: AppColors.paperBorder,
              width: 2.w,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 4.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.08),
                offset: Offset(0, 5.h),
                blurRadius: 6.r,
              ),
            ],
          )
        : BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
              color: AppColors.grayLight,
              width: 2.w,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.grayExtrusion,
                offset: Offset(0, 4.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.1),
                offset: Offset(0, 5.h),
                blurRadius: 6.r,
              ),
            ],
          );

    final topicText = topicName.isNotEmpty
        ? 'CHỦ ĐỀ: ${topicName.toUpperCase()}'
        : 'DỊCH SANG TIẾNG ANH';

    final clockSize = 46.r;
    final halfClock = clockSize / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        // 1. Khung Thẻ câu hỏi chính (chừa lề đỉnh cho nửa trên của đồng hồ)
        Container(
          margin: EdgeInsets.only(top: halfClock),
          width: double.infinity,
          padding: EdgeInsets.only(
            left: 14.w,
            right: 14.w,
            top: halfClock + 6.h,
            bottom: 12.h,
          ),
          decoration: cardDecoration,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Nút loa phát âm
              Positioned(
                left: 2.w,
                child: GestureDetector(
                  onTap: onSpeakerTap,
                  child: Container(
                    width: 38.r,
                    height: 38.r,
                    decoration: BoxDecoration(
                      color: isPaper
                          ? AppColors.white
                          : AppColors.lightBackground,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isPaper
                            ? AppColors.paperBorder
                            : AppColors.grayLight,
                        width: 1.5.w,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black.withValues(alpha: 0.08),
                          offset: Offset(0, 2.h),
                          blurRadius: 3.r,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.volume_up_rounded,
                      size: 18.r,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                    ),
                  ),
                ),
              ),

              // Tiêu đề chủ đề và Từ vựng mục tiêu (Chính giữa thẻ)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 44.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: AppText.c1(
                        topicText,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.2,
                        color: isPaper
                            ? AppColors.paperTextMedium
                            : AppColors.grayMedium,
                        maxLines: 1,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: AppText.h1(
                        targetWord,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: isPaper
                            ? AppColors.paperTextDark
                            : AppColors.grayDark,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // 2. Huy hiệu đồng hồ nổi đính trên đỉnh Thẻ câu hỏi
        // (Top Floating Badge)
        Positioned(
          top: 0,
          child: AppCountdownTimer(
            seconds: remainingSeconds,
            size: clockSize,
            fontSize: 13.sp,
            isPaper: isPaper,
          ),
        ),
      ],
    );
  }
}
