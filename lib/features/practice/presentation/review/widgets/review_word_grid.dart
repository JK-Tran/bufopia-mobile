import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/features/practice/presentation/review/widgets/review_word_item.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewWordGrid extends StatelessWidget {
  const ReviewWordGrid({
    required this.weakWords,
    required this.isPaperTheme,
    this.vocabMap = const {},
    this.onAssessWord,
    super.key,
  });

  final List<WordMemory> weakWords;
  final bool isPaperTheme;
  final Map<String, Word> vocabMap;
  final void Function(WordMemory memory)? onAssessWord;

  @override
  Widget build(BuildContext context) {
    if (weakWords.isEmpty) {
      return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 36.h, horizontal: 16.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 68.r,
                height: 68.r,
                decoration: BoxDecoration(
                  color: isPaperTheme
                      ? AppColors.feedbackSuccessBg
                      : AppColors.greenLight.withValues(alpha: 0.35),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isPaperTheme
                        ? AppColors.feedbackSuccessBorder
                        : AppColors.green.withValues(alpha: 0.2),
                    width: 2.w,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle_rounded,
                    size: 38.r,
                    color: isPaperTheme
                        ? AppColors.feedbackSuccessIcon
                        : AppColors.greenDark,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              AppText.t3(
                context.l10n.noWeakWordsReviewTitle,
                color: isPaperTheme
                    ? AppColors.paperTextDark
                    : AppColors.grayDark,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 6.h),
              AppText.c1(
                context.l10n.noWeakWordsReviewSubtitle,
                color: isPaperTheme
                    ? AppColors.paperTextMuted
                    : AppColors.grayMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final int crossAxisCount;
        final double childAspectRatio;

        if (width >= 900) {
          // Web Landscape (Screenshot 2: 4 columns)
          crossAxisCount = 4;
          childAspectRatio = 1.25;
        } else if (width >= 600) {
          // Tablet / Wide Mobile (3 columns)
          crossAxisCount = 3;
          childAspectRatio = 1.10;
        } else {
          // Mobile Portrait (Screenshot 1: 2 columns)
          crossAxisCount = 2;
          childAspectRatio = 0.94;
        }

        return GridView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 6.h),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.h,
            childAspectRatio: childAspectRatio,
          ),
          itemCount: weakWords.length,
          itemBuilder: (context, index) {
            final memory = weakWords[index];
            final cleanKey = StringUtils.cleanWordId(memory.wordId);
            final wordInfo = vocabMap[memory.wordId] ?? vocabMap[cleanKey];

            return ReviewWordItem(
              memory: memory,
              isPaperTheme: isPaperTheme,
              wordEn: wordInfo?.en,
              phonetic: wordInfo?.phonetic,
              partOfSpeech: wordInfo?.partOfSpeech,
              meaning: wordInfo?.vi,
              onAssessPronunciation: () => onAssessWord?.call(memory),
            );
          },
        );
      },
    );
  }
}
