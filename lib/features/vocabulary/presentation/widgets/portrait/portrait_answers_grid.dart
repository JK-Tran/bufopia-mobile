import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_answer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Lưới 4 ô đáp án 2x2 lớn cho chế độ chơi màn hình dọc
class PortraitAnswersGrid extends StatelessWidget {
  const PortraitAnswersGrid({
    required this.options,
    required this.player1Avatar,
    required this.player2Avatar,
    required this.getAnswerStatus,
    required this.isOptionDisabled,
    required this.isPlayerSelected,
    required this.isOpponentSelected,
    required this.isOpponentCorrect,
    required this.onSelectAnswer,
    super.key,
  });

  final List<String> options;
  final String player1Avatar;
  final String player2Avatar;
  final VocabularyAnswerStatus Function(String word) getAnswerStatus;
  final bool Function(String word) isOptionDisabled;
  final bool Function(String word) isPlayerSelected;
  final bool Function(String word) isOpponentSelected;
  final bool? Function(String word) isOpponentCorrect;
  final ValueChanged<String> onSelectAnswer;

  Widget _buildItem(String word) {
    return SizedBox(
      height: 82.h,
      child: VocabularyAnswerItem(
        text: word,
        isPlayer1: true,
        status: getAnswerStatus(word),
        isDisabled: isOptionDisabled(word),
        playerAvatar: player1Avatar,
        isPlayerSelected: isPlayerSelected(word),
        opponentAvatar: player2Avatar,
        isOpponentSelected: isOpponentSelected(word),
        isOpponentCorrect: isOpponentCorrect(word),
        onTap: () => onSelectAnswer(word),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (options.length < 4) return const SizedBox.shrink();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Hàng 1 (Đáp án 1 & 2)
        Row(
          children: [
            Expanded(child: _buildItem(options[0])),
            SizedBox(width: 12.w),
            Expanded(child: _buildItem(options[1])),
          ],
        ),
        SizedBox(height: 12.h),
        // Hàng 2 (Đáp án 3 & 4)
        Row(
          children: [
            Expanded(child: _buildItem(options[2])),
            SizedBox(width: 12.w),
            Expanded(child: _buildItem(options[3])),
          ],
        ),
      ],
    );
  }
}
