import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/landscape/landscape_answers_grid.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_answer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Khu vực thi đấu đối kháng gồm 2 lưới đáp án (P1 & P2) và logo VS ở giữa
class LandscapeArena extends StatelessWidget {
  const LandscapeArena({
    required this.optionsP1,
    required this.optionsP2,
    required this.isRoundLocked,
    required this.getOptionStatusP1,
    required this.getOptionStatusP2,
    required this.onSelectAnswerP1,
    required this.onSelectAnswerP2,
    super.key,
  });

  final List<String> optionsP1;
  final List<String> optionsP2;
  final bool isRoundLocked;
  final VocabularyAnswerStatus Function(int index, String word)
  getOptionStatusP1;
  final VocabularyAnswerStatus Function(int index, String word)
  getOptionStatusP2;
  final void Function(String word) onSelectAnswerP1;
  final void Function(String word) onSelectAnswerP2;

  static const String _vsPath = 'assets/images/quick_battle/vs.png';

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final horizontalPadding = isLandscape ? 16.0 : 16.w;
    final vsMargin = isLandscape ? 8.0 : 8.w;
    final vsSize = isLandscape ? 38.0 : 44.r;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        children: [
          // 4 Thẻ đáp án Player 1
          Expanded(
            child: LandscapeAnswersGrid(
              options: optionsP1,
              isPlayer1: true,
              isRoundLocked: isRoundLocked,
              getOptionStatus: getOptionStatusP1,
              onSelectAnswer: onSelectAnswerP1,
            ),
          ),

          // Logo VS ở trung tâm
          Padding(
            padding: EdgeInsets.symmetric(horizontal: vsMargin),
            child: isPaper
                ? Container(
                    width: vsSize,
                    height: vsSize,
                    decoration: BoxDecoration(
                      color: AppColors.paperCardBg,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.paperBorder,
                        width: 1.5,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: AppColors.paperExtrusion,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      _vsPath,
                      fit: BoxFit.contain,
                    ),
                  )
                : Image.asset(
                    _vsPath,
                    height: isLandscape ? 38.0 : 48.h,
                    fit: BoxFit.contain,
                  ),
          ),

          // 4 Thẻ đáp án Player 2
          Expanded(
            child: LandscapeAnswersGrid(
              options: optionsP2,
              isPlayer1: false,
              isRoundLocked: isRoundLocked,
              getOptionStatus: getOptionStatusP2,
              onSelectAnswer: onSelectAnswerP2,
            ),
          ),
        ],
      ),
    );
  }
}
