import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewWordItem extends StatelessWidget {
  const ReviewWordItem({
    required this.memory,
    required this.isPaperTheme,
    this.wordEn,
    this.phonetic,
    this.partOfSpeech,
    this.meaning,
    this.onAssessPronunciation,
    super.key,
  });

  final WordMemory memory;
  final bool isPaperTheme;
  final String? wordEn;
  final String? phonetic;
  final String? partOfSpeech;
  final String? meaning;
  final VoidCallback? onAssessPronunciation;

  bool get _isWrong =>
      memory.reason == 'Trả lời sai' ||
      (memory.status == 'Weak' && memory.reason.contains('sai'));

  @override
  Widget build(BuildContext context) {
    final cleanWord = (wordEn != null && wordEn!.isNotEmpty)
        ? wordEn!
        : StringUtils.cleanWordId(memory.wordId);
    final displayPhonetic = phonetic ?? '';
    final displayPos = StringUtils.formatPartOfSpeech(partOfSpeech);
    final displayMeaning = meaning ?? cleanWord;
    final reasonText = memory.reason.isNotEmpty
        ? memory.reason
        : (_isWrong ? context.l10n.wrongAnswer : context.l10n.slowResponse);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: isPaperTheme ? AppColors.paperCardBg : AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: isPaperTheme ? AppColors.paperBorder : AppColors.grayLight,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaperTheme
                ? AppColors.paperExtrusion
                : AppColors.grayExtrusion,
            offset: Offset(0, 2.5.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.04),
            offset: Offset(0, 4.h),
            blurRadius: 6.r,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top section: Word, Phonetic, Part of speech, Meaning
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Word & speak icon
                InkWell(
                  onTap: () => sl<AppAudioService>().speakWord(cleanWord),
                  borderRadius: BorderRadius.circular(12.r),
                  child: Row(
                    children: [
                      Expanded(
                        child: AppText.t3(
                          fontSize: 14.sp,
                          cleanWord,
                          color: isPaperTheme
                              ? AppColors.paperTextDark
                              : AppColors.grayDark,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(
                        Icons.volume_up_rounded,
                        size: 16.r,
                        color: isPaperTheme
                            ? AppColors.paperTextMuted
                            : AppColors.blueLight,
                      ),
                    ],
                  ),
                ),

                if (displayPhonetic.isNotEmpty) ...[
                  SizedBox(height: 2.h),
                  AppText.c1(
                    displayPhonetic,
                    color: isPaperTheme
                        ? AppColors.paperTextMuted
                        : AppColors.grayMedium,
                    fontSize: 10.sp,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],

                SizedBox(height: 1.h),
                AppText.c1(
                  displayPos,
                  color: isPaperTheme
                      ? AppColors.paperTextMuted
                      : AppColors.grayMedium,
                  fontSize: 10.sp,
                  overflow: TextOverflow.ellipsis,
                ),

                SizedBox(height: 4.h),

                // Vietnamese meaning (max 2 lines)
                Expanded(
                  child: AppText.b2(
                    displayMeaning,
                    color: isPaperTheme
                        ? AppColors.paperGreenDark
                        : AppColors.blueDark,
                    fontWeight: FontWeight.w600,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 6.h),

          // Bottom bar: Reason badge + Mic button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 3.h,
                  ),
                  decoration: BoxDecoration(
                    color: _isWrong
                        ? (isPaperTheme
                              ? AppColors.paperAmberBadgeBg
                              : AppColors.redLight)
                        : (isPaperTheme
                              ? AppColors.paperBadgeBg
                              : AppColors.woodParchmentDark),
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: _isWrong
                          ? (isPaperTheme
                                ? AppColors.paperAmberBadgeBorder
                                : AppColors.red.withValues(alpha: 0.3))
                          : (isPaperTheme
                                ? AppColors.paperBadgeBorder
                                : AppColors.gold.withValues(alpha: 0.4)),
                      width: 1.w,
                    ),
                  ),
                  child: AppText.c1(
                    reasonText,
                    color: _isWrong
                        ? (isPaperTheme
                              ? AppColors.paperAmberBadgeText
                              : AppColors.redDark)
                        : (isPaperTheme
                              ? AppColors.paperBadgeText
                              : AppColors.levelBadgeText),
                    fontWeight: FontWeight.w600,
                    fontSize: 10.sp,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(width: 6.w),

              // Mic button for pronunciation assessment
              AppIconButton(
                icon: Icons.mic_rounded,
                tooltip: context.l10n.pronunciationScore,
                size: 28.r,
                iconSize: 15.r,
                backgroundColor: isPaperTheme
                    ? AppColors.paperSurfaceWarm
                    : AppColors.lightBackground,
                iconColor: isPaperTheme
                    ? AppColors.paperGreenDark
                    : AppColors.blueDark,
                borderColor: isPaperTheme
                    ? AppColors.paperBorder
                    : AppColors.grayLight,
                extrusionColor: isPaperTheme
                    ? AppColors.paperExtrusion
                    : AppColors.grayExtrusion,
                extrusionHeight: 2,
                onPressed: onAssessPronunciation,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
