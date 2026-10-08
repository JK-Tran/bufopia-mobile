import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_question.dart';
import 'package:bufopia/features/vocabulary/presentation/bloc/vocabulary_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/landscape/landscape_arena.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/landscape/landscape_player_card.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/landscape/landscape_question_card.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/landscape/landscape_top_bar.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_answer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Đấu trường đối kháng 2 người cục bộ màn hình ngang (Landscape)
/// Thiết kế đồng bộ hoàn toàn với UI/UX chế độ đấu Bot / Màn hình dọc
class VocabularyLandscapeArena extends StatelessWidget {
  const VocabularyLandscapeArena({
    required this.state,
    required this.player1Name,
    required this.player1Avatar,
    required this.player2Name,
    required this.player2Avatar,
    required this.onBackPressed,
    required this.getAnswerStatus,
    required this.onSelectAnswerP1,
    required this.onSelectAnswerP2,
    super.key,
  });

  final VocabularyState state;
  final String player1Name;
  final String player1Avatar;
  final String player2Name;
  final String player2Avatar;
  final VoidCallback? onBackPressed;
  final VocabularyAnswerStatus Function({
    required bool isPlayer1,
    required int index,
    required String word,
  })
  getAnswerStatus;
  final ValueChanged<String> onSelectAnswerP1;
  final ValueChanged<String> onSelectAnswerP2;

  String _getTargetWord(BattleQuestion? currentQ) {
    if (currentQ == null) return '';
    return currentQ.vi.isNotEmpty ? currentQ.vi : currentQ.en;
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final currentQ = state.currentQuestion;

    final totalRounds = state.questions.isNotEmpty
        ? state.questions.length
        : 15;
    final currentRound = state.currentQuestionIndex + 1;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        child: Column(
          children: [
            // 1. THANH TIÊU ĐỀ TRÊN CÙNG: Nút Quay lại | VÒNG X/15 | Cài đặt
            LandscapeTopBar(
              currentRound: currentRound,
              totalRounds: totalRounds,
              isPaper: isPaper,
              onBackPressed: onBackPressed,
            ),

            const SizedBox(height: 10),

            // 2. BATTLE STATUS & QUESTION: P1 | Question Card | P2
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // P1 Capsule (Hồng)
                Expanded(
                  flex: 3,
                  child: LandscapePlayerCard(
                    isPlayer1: true,
                    name: player1Name,
                    avatarPath: player1Avatar,
                    score: state.player1Score,
                    isPaper: isPaper,
                  ),
                ),

                const SizedBox(width: 10),

                // Thẻ câu hỏi mục tiêu Hero Card với huy hiệu đồng hồ trên đỉnh
                Expanded(
                  flex: 4,
                  child: LandscapeQuestionCard(
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
                ),

                const SizedBox(width: 10),

                // P2 Capsule (Xanh)
                Expanded(
                  flex: 3,
                  child: LandscapePlayerCard(
                    isPlayer1: false,
                    name: player2Name,
                    avatarPath: player2Avatar,
                    score: state.player2Score,
                    isPaper: isPaper,
                  ),
                ),
              ],
            ),

            const Spacer(),

            // 3. ĐẤU TRƯỜNG ĐỐI KHÁNG 2 BÊN
            LandscapeArena(
              optionsP1: state.optionsP1,
              optionsP2: state.optionsP2,
              isRoundLocked: state.isRoundLocked,
              getOptionStatusP1: (index, word) => getAnswerStatus(
                isPlayer1: true,
                index: index,
                word: word,
              ),
              getOptionStatusP2: (index, word) => getAnswerStatus(
                isPlayer1: false,
                index: index,
                word: word,
              ),
              onSelectAnswerP1: onSelectAnswerP1,
              onSelectAnswerP2: onSelectAnswerP2,
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
