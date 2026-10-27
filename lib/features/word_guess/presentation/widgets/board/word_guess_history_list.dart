import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/word_guess/domain/entities/history_item.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_history_item.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Danh sách các lượt đoán gần đây (History List)
/// Tối ưu tự động lọc sạch các từ trùng lặp và bố trí Wrap co giãn mượt mà
class WordGuessHistoryList extends StatelessWidget {
  const WordGuessHistoryList({
    required this.history,
    required this.isPaperTheme,
    this.lastWrongGuess,
    super.key,
  });

  final List<HistoryItem> history;
  final String? lastWrongGuess;
  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    // Lọc sạch danh sách không trùng lặp
    final seen = <String>{};
    final uniqueHistory = <HistoryItem>[];
    for (final item in history.reversed) {
      final key = item.word.isNotEmpty
          ? item.word.toLowerCase().trim()
          : item.guess.toLowerCase().trim();
      if (key.isNotEmpty && seen.add(key)) {
        uniqueHistory.add(item);
      }
    }

    final hasHistory =
        uniqueHistory.isNotEmpty ||
        (lastWrongGuess != null && lastWrongGuess!.isNotEmpty);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isPaperTheme
            ? AppColors.paperSurface.withValues(alpha: 0.5)
            : AppColors.lightBackground.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isPaperTheme
              ? AppColors.paperBorder.withValues(alpha: 0.6)
              : AppColors.grayLight.withValues(alpha: 0.8),
          width: 1.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Icon(
                Icons.history_rounded,
                size: 14.r,
                color: isPaperTheme
                    ? AppColors.paperTextMedium
                    : AppColors.grayMedium,
              ),
              SizedBox(width: 4.w),
              AppText.c1(
                hasHistory
                    ? context.l10n.triedGuessesCount(uniqueHistory.length)
                    : context.l10n.noGuessesYet,
                color: isPaperTheme
                    ? AppColors.paperTextMedium
                    : AppColors.grayMedium,
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          if (hasHistory) ...[
            SizedBox(height: 6.h),
            Wrap(
              spacing: 6.w,
              runSpacing: 6.h,
              children: [
                ...uniqueHistory.map((item) {
                  final isCorrect = !item.skipped;
                  final wordText = item.word.isNotEmpty
                      ? item.word.toLowerCase()
                      : item.guess.toLowerCase();

                  return WordGuessHistoryItem(
                    word: wordText,
                    isCorrect: isCorrect,
                    isPaperTheme: isPaperTheme,
                  );
                }),
                if (lastWrongGuess != null &&
                    lastWrongGuess!.isNotEmpty &&
                    !seen.contains(lastWrongGuess!.toLowerCase().trim()))
                  WordGuessHistoryItem(
                    word: lastWrongGuess!.toLowerCase().trim(),
                    isCorrect: false,
                    isPaperTheme: isPaperTheme,
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
