import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thẻ câu hỏi từ vựng Tiếng Việt mục tiêu Lớn (hỗ trợ Paper & Classic theme)
/// Kèm thanh trạng thái hiển thị Chủ đề, Đồng hồ đếm ngược và Tiến trình câu (Word X/Y)
class VocabularyQuestionPanel extends StatelessWidget {
  const VocabularyQuestionPanel({
    required this.targetWord,
    super.key,
    this.remainingSeconds = 10,
    this.currentRound = 4,
    this.totalRounds = 15,
    this.topicName = 'Daily',
  });

  final String targetWord;
  final int remainingSeconds;
  final int currentRound;
  final int totalRounds;
  final String topicName;

  static const String _clockPath = 'assets/images/quick_battle/clock.png';

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // 1. Thẻ từ vựng Tiếng Việt mục tiêu cỡ lớn
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          constraints: BoxConstraints(minWidth: 200.w, maxWidth: 260.w),
          decoration: isPaper
              ? BoxDecoration(
                  color: AppColors.paperCardBg,
                  borderRadius: BorderRadius.circular(18.r),
                  border: Border.all(
                    color: AppColors.paperBorder,
                    width: 2.w,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.paperExtrusion,
                      offset: Offset(0, 3.h),
                    ),
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.08),
                      offset: Offset(0, 4.h),
                      blurRadius: 6.r,
                    ),
                  ],
                )
              : BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.woodParchmentLight,
                      AppColors.woodParchmentDark,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(18.r),
                  border: Border.all(
                    color: AppColors.woodBoardBorder,
                    width: 2.5.w,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.woodBoardShadow,
                      offset: Offset(0, 3.5.h),
                    ),
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.15),
                      offset: Offset(0, 5.h),
                      blurRadius: 6.r,
                    ),
                  ],
                ),
          alignment: Alignment.center,
          child: AppText.t1(
            targetWord,
            fontWeight: FontWeight.w700,
            color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
            fontSize: 22.sp,
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
        ),

        SizedBox(height: 6.h),

        // 2. Thanh thông tin tiến trình & thời gian: [Daily]  [ ⏰ Timer ]  [Word 4/15]
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Pill Topic (Daily)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
              decoration: BoxDecoration(
                color: isPaper
                    ? AppColors.paperCardBg
                    : AppColors.white.withValues(alpha: 0.95),
                borderRadius: BorderRadius.circular(12.r),
                border: isPaper
                    ? Border.all(color: AppColors.paperBorder, width: 1.w)
                    : null,
                boxShadow: isPaper
                    ? [
                        BoxShadow(
                          color: AppColors.paperExtrusion,
                          offset: Offset(0, 1.5.h),
                        ),
                      ]
                    : [
                        BoxShadow(
                          color: AppColors.black.withValues(alpha: 0.1),
                          offset: Offset(0, 1.5.h),
                          blurRadius: 3.r,
                        ),
                      ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.rocket_launch_rounded,
                    size: 12.r,
                    color: isPaper ? AppColors.paperGreen : AppColors.purple,
                  ),
                  SizedBox(width: 4.w),
                  AppText.c1(
                    topicName,
                    fontWeight: FontWeight.w700,
                    color: isPaper
                        ? AppColors.paperTextDark
                        : AppColors.grayDark,
                    fontSize: 10.sp,
                  ),
                ],
              ),
            ),

            SizedBox(width: 8.w),

            // Đồng hồ đếm ngược
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: isPaper ? AppColors.paperCardBg : AppColors.white,
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(
                  color: remainingSeconds <= 3
                      ? AppColors.red
                      : (isPaper ? AppColors.paperBorder : AppColors.blue),
                  width: 1.5.w,
                ),
                boxShadow: isPaper
                    ? [
                        BoxShadow(
                          color: remainingSeconds <= 3
                              ? AppColors.redDark
                              : AppColors.paperExtrusion,
                          offset: Offset(0, 1.5.h),
                        ),
                      ]
                    : [
                        BoxShadow(
                          color: AppColors.black.withValues(alpha: 0.1),
                          offset: Offset(0, 2.h),
                          blurRadius: 4.r,
                        ),
                      ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    _clockPath,
                    width: 16.r,
                    height: 16.r,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 4.w),
                  AppText.t3(
                    '$remainingSeconds',
                    fontWeight: FontWeight.w700,
                    color: remainingSeconds <= 3
                        ? AppColors.red
                        : (isPaper
                              ? AppColors.paperTextDark
                              : AppColors.grayDark),
                    fontSize: 14.sp,
                  ),
                ],
              ),
            ),

            SizedBox(width: 8.w),

            // Pill tiến trình (Word X/Y)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
              decoration: BoxDecoration(
                color: isPaper
                    ? AppColors.paperCardBg
                    : AppColors.white.withValues(alpha: 0.95),
                borderRadius: BorderRadius.circular(12.r),
                border: isPaper
                    ? Border.all(color: AppColors.paperBorder, width: 1.w)
                    : null,
                boxShadow: isPaper
                    ? [
                        BoxShadow(
                          color: AppColors.paperExtrusion,
                          offset: Offset(0, 1.5.h),
                        ),
                      ]
                    : [
                        BoxShadow(
                          color: AppColors.black.withValues(alpha: 0.1),
                          offset: Offset(0, 1.5.h),
                          blurRadius: 3.r,
                        ),
                      ],
              ),
              child: AppText.c1(
                'Word $currentRound/$totalRounds',
                fontWeight: FontWeight.w700,
                color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
