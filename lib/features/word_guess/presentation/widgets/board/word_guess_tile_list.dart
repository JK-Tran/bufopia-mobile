import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_tile_item.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Danh sách hàng ô chữ cái khuyết 3D (Tile List)
/// Tự động tính toán kích thước ô phù hợp chiều rộng màn hình
class WordGuessTileList extends StatelessWidget {
  const WordGuessTileList({
    required this.maskedWord,
    required this.isPaperTheme,
    super.key,
  });

  final String maskedWord;
  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    final letters = StringUtils.parseWordGuessLetters(maskedWord);
    if (letters.isEmpty) {
      return const SizedBox.shrink();
    }

    final count = letters.length;

    return LayoutBuilder(
      builder: (context, constraints) {
        final availableWidth = constraints.maxWidth > 0
            ? constraints.maxWidth
            : 320.w;

        final double boxWidth;
        final double spacing;
        if (count <= 5) {
          boxWidth = 38.w;
          spacing = 6.w;
        } else if (count <= 7) {
          boxWidth = 32.w;
          spacing = 5.w;
        } else if (count <= 9) {
          boxWidth = 28.w;
          spacing = 4.w;
        } else if (count <= 12) {
          boxWidth = 23.w;
          spacing = 3.w;
        } else {
          boxWidth = 19.w;
          spacing = 2.w;
        }
        final boxHeight = (boxWidth * 1.25).clamp(24.0.h, 50.0.h);

        return SizedBox(
          width: availableWidth,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(letters.length, (index) {
                final letter = letters[index].toUpperCase();
                final isRevealed =
                    letter != '_' && letter != '-' && letter != ' ';

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: spacing / 2),
                  child: WordGuessTileItem(
                    letter: isRevealed ? letter : '-',
                    isRevealed: isRevealed,
                    width: boxWidth,
                    height: boxHeight,
                    isPaperTheme: isPaperTheme,
                  ),
                );
              }),
            ),
          ),
        );
      },
    );
  }
}
