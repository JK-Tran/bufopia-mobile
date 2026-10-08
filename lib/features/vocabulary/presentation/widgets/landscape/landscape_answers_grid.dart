import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_answer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Lưới 4 ô đáp án 3D (2 hàng x 2 cột) cho từng người chơi
class LandscapeAnswersGrid extends StatelessWidget {
  const LandscapeAnswersGrid({
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

    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final itemHeight = isLandscape ? 52.0 : 64.h;
    final rowSpacing = isLandscape ? 8.0 : 10.h;
    final colSpacing = isLandscape ? 10.0 : 10.w;

    final status0 = getOptionStatus(0, options[0]);
    final status1 = getOptionStatus(1, options[1]);
    final status2 = getOptionStatus(2, options[2]);
    final status3 = getOptionStatus(3, options[3]);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: itemHeight,
                child: VocabularyAnswerItem(
                  key: ValueKey('p${isPlayer1 ? 1 : 2}_0_${options[0]}'),
                  text: options[0],
                  isPlayer1: isPlayer1,
                  status: status0,
                  isDisabled:
                      isRoundLocked || status0 == VocabularyAnswerStatus.wrong,
                  onTap: () => onSelectAnswer(options[0]),
                ),
              ),
            ),
            SizedBox(width: colSpacing),
            Expanded(
              child: SizedBox(
                height: itemHeight,
                child: VocabularyAnswerItem(
                  key: ValueKey('p${isPlayer1 ? 1 : 2}_1_${options[1]}'),
                  text: options[1],
                  isPlayer1: isPlayer1,
                  status: status1,
                  isDisabled:
                      isRoundLocked || status1 == VocabularyAnswerStatus.wrong,
                  onTap: () => onSelectAnswer(options[1]),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: rowSpacing),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: itemHeight,
                child: VocabularyAnswerItem(
                  key: ValueKey('p${isPlayer1 ? 1 : 2}_2_${options[2]}'),
                  text: options[2],
                  isPlayer1: isPlayer1,
                  status: status2,
                  isDisabled:
                      isRoundLocked || status2 == VocabularyAnswerStatus.wrong,
                  onTap: () => onSelectAnswer(options[2]),
                ),
              ),
            ),
            SizedBox(width: colSpacing),
            Expanded(
              child: SizedBox(
                height: itemHeight,
                child: VocabularyAnswerItem(
                  key: ValueKey('p${isPlayer1 ? 1 : 2}_3_${options[3]}'),
                  text: options[3],
                  isPlayer1: isPlayer1,
                  status: status3,
                  isDisabled:
                      isRoundLocked || status3 == VocabularyAnswerStatus.wrong,
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
