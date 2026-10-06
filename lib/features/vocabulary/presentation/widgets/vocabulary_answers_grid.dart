import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_answer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Lưới 4 ô đáp án 3D (2 hàng x 2 cột) cho từng người chơi
class VocabularyAnswersGrid extends StatelessWidget {
  const VocabularyAnswersGrid({
    required this.options,
    required this.isPlayer1,
    required this.isRoundLocked,
    required this.getOptionStatus,
    required this.onSelectAnswer,
    super.key,
  });

  final List<String> options;
  final bool isPlayer1;
  final bool isRoundLocked;
  final VocabularyAnswerStatus Function(int index, String word) getOptionStatus;
  final void Function(String word) onSelectAnswer;

  @override
  Widget build(BuildContext context) {
    if (options.length < 4) return const SizedBox.shrink();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 64.h,
                child: VocabularyAnswerItem(
                  text: options[0],
                  isPlayer1: isPlayer1,
                  status: getOptionStatus(0, options[0]),
                  isDisabled: isRoundLocked,
                  onTap: () => onSelectAnswer(options[0]),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: SizedBox(
                height: 64.h,
                child: VocabularyAnswerItem(
                  text: options[1],
                  isPlayer1: isPlayer1,
                  status: getOptionStatus(1, options[1]),
                  isDisabled: isRoundLocked,
                  onTap: () => onSelectAnswer(options[1]),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 64.h,
                child: VocabularyAnswerItem(
                  text: options[2],
                  isPlayer1: isPlayer1,
                  status: getOptionStatus(2, options[2]),
                  isDisabled: isRoundLocked,
                  onTap: () => onSelectAnswer(options[2]),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: SizedBox(
                height: 64.h,
                child: VocabularyAnswerItem(
                  text: options[3],
                  isPlayer1: isPlayer1,
                  status: getOptionStatus(3, options[3]),
                  isDisabled: isRoundLocked,
                  onTap: () => onSelectAnswer(options[3]),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
