import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_option.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_question.dart';
import 'package:bufopia/features/vocabulary/presentation/bloc/vocabulary_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/portrait/portrait_answers_grid.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/portrait/portrait_bottom_bar.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/portrait/portrait_player_bar.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/portrait/portrait_question_card.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/portrait/portrait_top_bar.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_answer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Đấu trường câu hỏi trắc nghiệm từ vựng ở chế độ Màn hình dọc (Portrait)
class VocabularyPortraitArena extends StatelessWidget {
  const VocabularyPortraitArena({
    required this.state,
    required this.player1Name,
    required this.player1Avatar,
    required this.player2Name,
    required this.player2Avatar,
    required this.onBackPressed,
    required this.onSelectAnswer,
    super.key,
  });

  final VocabularyState state;
  final String player1Name;
  final String player1Avatar;
  final String player2Name;
  final String player2Avatar;
  final VoidCallback? onBackPressed;
  final ValueChanged<String> onSelectAnswer;

  String _getTargetWord(BattleQuestion? question) {
    if (question == null) return '';
    return question.vi.isNotEmpty ? question.vi : question.en;
  }

  String? _getPlayerChosenWord() {
    if (state.selectedWordP1 != null) return state.selectedWordP1;
    if (!state.isBotOpponent && state.selectedOptionIdP1 != null) {
      final currentQ = state.currentQuestion;
      if (currentQ != null) {
        final opt = currentQ.options.firstWhere(
          (o) => o.id == state.selectedOptionIdP1,
          orElse: () => const BattleOption(),
        );
        return opt.en.isNotEmpty ? opt.en : opt.vi;
      }
    }
    return null;
  }

  String? _getOpponentChosenWord() {
    if (state.selectedWordP2 != null) return state.selectedWordP2;
    final currentQ = state.currentQuestion;
    if (currentQ == null || state.selectedOptionIdP2 == null) return null;
    final opt = currentQ.options.firstWhere(
      (o) => o.id == state.selectedOptionIdP2,
      orElse: () => const BattleOption(),
    );
    final word = opt.en.isNotEmpty ? opt.en : opt.vi;
    return word.isNotEmpty ? word : null;
  }

  bool? _getOpponentCorrect() {
    if (state.isP2Correct != null) return state.isP2Correct;
    final opponentWord = _getOpponentChosenWord();
    if (opponentWord != null && state.currentQuestion != null) {
      return opponentWord == state.currentQuestion!.en;
    }
    return null;
  }

  VocabularyAnswerStatus _getP1Status(String word) {
    if (state.wrongWordsP1.contains(word)) {
      return VocabularyAnswerStatus.wrong;
    }
    final chosen = _getPlayerChosenWord();
    if (chosen == null || chosen != word) return VocabularyAnswerStatus.normal;

    if (state.isP1Correct != null) {
      return state.isP1Correct!
          ? VocabularyAnswerStatus.correct
          : VocabularyAnswerStatus.wrong;
    }
    final currentEn = state.currentQuestion?.en;
    return word == currentEn
        ? VocabularyAnswerStatus.correct
        : VocabularyAnswerStatus.wrong;
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final currentQ = state.currentQuestion;
    final totalRounds = state.questions.isNotEmpty
        ? state.questions.length
        : 15;
    final currentRound = state.currentQuestionIndex + 1;

    final chosenWordP1 = _getPlayerChosenWord();
    final chosenWordP2 = _getOpponentChosenWord();
    final opponentCorrect = _getOpponentCorrect();

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
        child: Column(
          children: [
            // 1. THANH TIÊU ĐỀ TRÊN CÙNG
            PortraitTopBar(
              currentRound: currentRound,
              totalRounds: totalRounds,
              isPaper: isPaper,
              onBackPressed: onBackPressed,
            ),

            const Spacer(),
            // 2. BATTLE STATUS BAR (P1 vs P2)
            PortraitPlayerBar(
              player1Name: player1Name,
              player1Avatar: player1Avatar,
              player1Score: state.player1Score,
              player2Name: player2Name,
              player2Avatar: player2Avatar,
              player2Score: state.player2Score,
              isPaper: isPaper,
            ),

            const Spacer(),

            // 3. THẺ CÂU HỎI MỤC TIÊU (VỚI HUY HIỆU ĐỒNG HỒ NỔI TRÊN ĐỈNH)
            PortraitQuestionCard(
              targetWord: _getTargetWord(currentQ),
              topicName: currentQ?.topic ?? '',
              remainingSeconds: state.remainingSeconds,
              isPaper: isPaper,
              onSpeakerTap: () {
                context.read<AppBloc>().add(
                  const AppEvent.clickSoundPlayed(),
                );
              },
            ),

            const Spacer(),

            // 4. LƯỚI 4 Ô ĐÁP ÁN (2x2)
            PortraitAnswersGrid(
              options: state.optionsP1,
              player1Avatar: player1Avatar,
              player2Avatar: player2Avatar,
              getAnswerStatus: _getP1Status,
              isOptionDisabled: (word) =>
                  state.isRoundLocked || state.wrongWordsP1.contains(word),
              isPlayerSelected: (word) =>
                  chosenWordP1 == word || state.wrongWordsP1.contains(word),
              isOpponentSelected: (word) =>
                  chosenWordP2 == word || state.wrongWordsP2.contains(word),
              isOpponentCorrect: (word) {
                if (state.wrongWordsP2.contains(word)) return false;
                if (chosenWordP2 == word) return opponentCorrect;
                return null;
              },
              onSelectAnswer: onSelectAnswer,
            ),

            const Spacer(flex: 3),

            // 5. THANH THEO DÕI TRỰC TIẾP DƯỚI ĐÁY
            PortraitBottomBar(
              player1Avatar: player1Avatar,
              player2Avatar: player2Avatar,
              chosenWordP1: chosenWordP1,
              isP1Correct: state.isP1Correct,
              chosenWordP2: chosenWordP2,
              isP2Correct: opponentCorrect,
              isPaper: isPaper,
            ),

            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}
