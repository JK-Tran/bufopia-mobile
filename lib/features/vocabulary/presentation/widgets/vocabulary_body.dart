import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_question.dart';
import 'package:bufopia/features/vocabulary/presentation/bloc/vocabulary_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/dialog/vocabulary_result_dialog.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_answer_item.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_arena.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_header.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_player_badge.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_question_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Body của màn hình Quick Battle - Bố trí các thành phần đấu trường
class VocabularyBody extends StatelessWidget {
  const VocabularyBody({
    super.key,
    this.onBackPressed,
    this.player1Name = 'ALEX (P1)',
    this.player1Avatar = 'assets/images/bunny-avatar.webp',
    this.player2Name = 'BOT (VỪA)',
    this.player2Avatar = 'assets/images/pip-avatar.webp',
  });

  final VoidCallback? onBackPressed;
  final String player1Name;
  final String player1Avatar;
  final String player2Name;
  final String player2Avatar;

  static const String _classicBgPath =
      'assets/images/quick_battle/background_quick_battle.png';
  static const String _paperBgPath =
      'assets/images/background_switch/app_background_1.webp';

  String _getTargetWord(BattleQuestion? currentQ) {
    if (currentQ == null) return '';
    return currentQ.vi.isNotEmpty ? currentQ.vi : currentQ.en;
  }

  VocabularyAnswerStatus _getAnswerStatus({
    required VocabularyState state,
    required bool isPlayer1,
    required int index,
    required String word,
  }) {
    if (!state.isBotOpponent) {
      final currentQ = state.currentQuestion;
      if (currentQ == null || index >= currentQ.options.length) {
        return VocabularyAnswerStatus.normal;
      }

      final selectedOptId = isPlayer1
          ? state.selectedOptionIdP1
          : state.selectedOptionIdP2;
      final isCorrect = isPlayer1 ? state.isP1Correct : state.isP2Correct;

      if (selectedOptId == null || isCorrect == null) {
        return VocabularyAnswerStatus.normal;
      }

      // So khớp trực tiếp ID của đúng ô tại index này
      final opt = currentQ.options[index];
      if (opt.id == selectedOptId) {
        return isCorrect
            ? VocabularyAnswerStatus.correct
            : VocabularyAnswerStatus.wrong;
      }
      return VocabularyAnswerStatus.normal;
    }

    final selectedWord = isPlayer1
        ? state.selectedWordP1
        : state.selectedWordP2;
    if (selectedWord == null) return VocabularyAnswerStatus.normal;

    if (selectedWord == word) {
      final currentEn = state.currentQuestion?.en;
      return word == currentEn
          ? VocabularyAnswerStatus.correct
          : VocabularyAnswerStatus.wrong;
    }
    return VocabularyAnswerStatus.normal;
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final bgPath = isPaper ? _paperBgPath : _classicBgPath;

    if (MediaQuery.orientationOf(context) == Orientation.portrait) {
      return Image.asset(
        bgPath,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => ColoredBox(
          color: isPaper ? AppColors.paperBackground : AppColors.peach,
        ),
      );
    }

    final state = context.watch<VocabularyBloc>().state;
    final currentQ = state.currentQuestion;

    return Stack(
      fit: StackFit.expand,
      children: [
        // 1. Ảnh nền đấu trường (Paper / Classic Split)
        Positioned.fill(
          child: Image.asset(
            bgPath,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => ColoredBox(
              color: isPaper ? AppColors.paperBackground : AppColors.peach,
            ),
          ),
        ),

        // Loading Indicator khi tải bộ đề hoặc chờ đối thủ sẵn sàng
        if ((state.isLoading || state.isWaitingForReady) &&
            (currentQ == null || state.isWaitingForReady))
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                color: isPaper
                    ? AppColors.paperCardBg
                    : AppColors.purple.withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(16.r),
                border: isPaper
                    ? Border.all(color: AppColors.paperBorder, width: 1.5.w)
                    : null,
                boxShadow: [
                  BoxShadow(
                    color: isPaper
                        ? AppColors.paperExtrusion
                        : AppColors.black.withValues(alpha: 0.2),
                    blurRadius: isPaper ? 2.r : 8.r,
                    offset: Offset(0, isPaper ? 3.h : 4.h),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(
                    color: isPaper ? AppColors.paperGreen : AppColors.gold,
                  ),
                  SizedBox(height: 12.h),
                  AppText.b2(
                    state.isWaitingForReady
                        ? 'ĐANG CHỜ ĐỐI THỦ SẴN SÀNG...'
                        : 'ĐANG TẢI BỘ TỪ VỰNG...',
                    color: isPaper ? AppColors.paperTextDark : AppColors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
          ),

        // 2. Nội dung chính trong SafeArea khi đã có câu hỏi
        if (currentQ != null && !state.isWaitingForReady)
          SafeArea(
            child: Column(
              children: [
                // A. Header điều hướng trên cùng (Back, Trang chủ, Chơi lại)
                VocabularyHeader(onBackPressed: onBackPressed),

                SizedBox(height: 2.h),

                // B. Thông tin trận đấu: P1 Badge | Thẻ câu hỏi | P2 Badge
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // P1 Info Badge (Avatar + Score & Name)
                      VocabularyPlayerBadge.player1(
                        name: player1Name,
                        avatarPath: player1Avatar,
                        score: state.player1Score,
                      ),

                      // Thẻ câu hỏi từ vựng mục tiêu lớn & tiến trình ván đấu
                      VocabularyQuestionPanel(
                        targetWord: _getTargetWord(currentQ),
                        remainingSeconds: state.remainingSeconds,
                        currentRound: state.currentQuestionIndex + 1,
                      ),

                      // P2 Info Badge (Score & Name + Avatar đối xứng)
                      VocabularyPlayerBadge.player2(
                        name: player2Name,
                        avatarPath: player2Avatar,
                        score: state.player2Score,
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                // C. Đấu trường đối kháng 2 bên (P1 Answers | VS | P2 Answers)
                VocabularyArena(
                  optionsP1: state.optionsP1,
                  optionsP2: state.optionsP2,
                  isRoundLocked: state.isRoundLocked,
                  getOptionStatusP1: (index, word) => _getAnswerStatus(
                    state: state,
                    isPlayer1: true,
                    index: index,
                    word: word,
                  ),
                  getOptionStatusP2: (index, word) => _getAnswerStatus(
                    state: state,
                    isPlayer1: false,
                    index: index,
                    word: word,
                  ),
                  onSelectAnswerP1: (word) =>
                      context.read<VocabularyBloc>().add(
                        VocabularyEvent.selectAnswer(
                          isPlayer1: true,
                          selectedWord: word,
                        ),
                      ),
                  onSelectAnswerP2: (word) =>
                      context.read<VocabularyBloc>().add(
                        VocabularyEvent.selectAnswer(
                          isPlayer1: false,
                          selectedWord: word,
                        ),
                      ),
                ),

                const Spacer(),
              ],
            ),
          ),

        // D. Overlay Thông báo khi kết thúc ván đấu (Game Over)
        if (state.isGameOver)
          VocabularyResultDialog(
            state: state,
            player1Name: player1Name,
            player2Name: player2Name,
            onBackPressed: onBackPressed,
          ),
      ],
    );
  }
}
