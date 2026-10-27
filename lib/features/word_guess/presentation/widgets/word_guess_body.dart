import 'package:bufopia/components/app_dotted.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/chat/chat.dart';
import 'package:bufopia/features/word_guess/presentation/bloc/word_guess_bloc.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_clue_item.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_history_list.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_input_bar.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_rematch_lobby_card.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_score_board.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_skip_banner.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_solved_banner.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/board/word_guess_tile_list.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/word_guess_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thân giao diện chính của trò chơi Đoán từ khuyết (Word Guess Body)
/// Clean Architecture: Header -> Board Container
/// [ScoreBoard + Content + InputBar]
class WordGuessBody extends StatelessWidget {
  const WordGuessBody({
    required this.state,
    required this.topicTitle,
    required this.isSolo,
    required this.isPaper,
    required this.canInteract,
    required this.textController,
    required this.focusNode,
    required this.onBack,
    required this.onSubmit,
    required this.onSkip,
    required this.onEnd,
    required this.onInputChanged,
    this.onChatPressed,
    this.hasTimer,
    super.key,
  });

  final WordGuessState state;
  final String topicTitle;
  final bool isSolo;
  final bool isPaper;
  final bool canInteract;
  final TextEditingController textController;
  final FocusNode focusNode;
  final VoidCallback onBack;
  final VoidCallback onSubmit;
  final VoidCallback onSkip;
  final VoidCallback onEnd;
  final ValueChanged<String> onInputChanged;
  final VoidCallback? onChatPressed;
  final bool? hasTimer;

  @override
  Widget build(BuildContext context) {
    final String maskedWord;
    final String viMeaning;
    final String? phonetic;
    final String? wordEn;
    final int wordLength;
    final int currentRound;
    final int foundCount;

    if (isSolo) {
      final word = state.currentPracticeWord;
      maskedWord = state.practiceMaskedWord;
      viMeaning = word?.vi ?? '';
      phonetic = (word?.phonetic.isNotEmpty == true) ? word!.phonetic : null;
      wordEn = word?.en;
      wordLength = word?.en.length ?? 0;
      currentRound = state.currentQuestionIndex + 1;
      foundCount = state.practiceCorrectCount;
    } else {
      final isRoundResult = state.gameState.isRoundResult ||
          state.solvedBannerWord != null ||
          state.isDelayingNextRound;
      final wordInfo = state.gameState.wordInfo;
      final targetSolvedWord = state.solvedBannerWord ??
          state.gameState.roundResultFullWord ??
          wordInfo?.en;

      // Khi ở round_result hoặc có người giải đúng (từ word_solved / result.en): hiển thị ngay từ đầy đủ
      if (isRoundResult &&
          targetSolvedWord != null &&
          targetSolvedWord.isNotEmpty) {
        maskedWord = targetSolvedWord.toUpperCase();
        wordEn = targetSolvedWord;
      } else {
        maskedWord = wordInfo?.masked ?? '';
        wordEn = wordInfo?.en;
      }

      viMeaning = (isRoundResult &&
              state.gameState.roundResultMeaning?.isNotEmpty == true)
          ? state.gameState.roundResultMeaning!
          : (wordInfo?.vi ?? '');
      phonetic = wordInfo?.phonetic.isNotEmpty == true
          ? wordInfo!.phonetic
          : null;
      wordLength = wordInfo?.length ??
          wordEn?.length ??
          maskedWord.replaceAll(' ', '').length;
      currentRound = state.gameState.currentRound;
      foundCount = state.gameState.totalWordsFound;
    }

    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    final isLobby = !isSolo && state.gameState.status == 'lobby';
    final boardBg = isPaper ? AppColors.paperBackground : AppColors.white;
    final boardBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.classicBorder;
    final dividerColor = isPaper
        ? AppColors.paperDottedLine
        : AppColors.grayLight;

    return GestureDetector(
      onTap: () {
        if (canInteract && focusNode.canRequestFocus) {
          focusNode.requestFocus();
        }
      },
      behavior: HitTestBehavior.translucent,
      child: SafeArea(
        minimum: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: isKeyboardOpen ? 4.h : 8.h,
        ),
        child: Column(
          children: [
            // ── 1. Khung Header 3D điều hướng bên trên bàn chơi ────────
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 580.w),
                child: isSolo
                    ? WordGuessHeader(
                        topicTitle: topicTitle,
                        isPaperTheme: isPaper,
                        onBack: onBack,
                        onEnd: onEnd,
                        showChat: false,
                      )
                    : BlocBuilder<ChatBloc, ChatState>(
                        buildWhen: (prev, current) =>
                            prev.unreadCount != current.unreadCount,
                        builder: (context, chatState) {
                          return WordGuessHeader(
                            topicTitle: topicTitle,
                            isPaperTheme: isPaper,
                            onBack: onBack,
                            onEnd: onEnd,
                            onChatPressed: onChatPressed,
                            unreadChatCount: chatState.unreadCount,
                            playerCount: state.gameState.players.length,
                          );
                        },
                      ),
              ),
            ),

            SizedBox(height: isKeyboardOpen ? 4.h : 8.h),

            // ── 2. Khung bàn chơi thống nhất (3D Game Board) ───────────
            Expanded(
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 580.w),
                  child: isLobby
                      ? Center(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: WordGuessRematchLobbyCard(
                              state: state,
                              isPaper: isPaper,
                              onLeave: onBack,
                            ),
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                            color: boardBg,
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                              color: boardBorder,
                              width: 2.w,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: isPaper
                                    ? AppColors.paperExtrusion
                                        .withValues(alpha: 0.45)
                                    : AppColors.black.withValues(alpha: 0.12),
                                offset: Offset(0, 4.h),
                                blurRadius: 12.r,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18.r),
                            child: Column(
                              children: [
                                // ── A. Bảng điểm đỉnh bàn chơi ─
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                    12.w,
                                    isKeyboardOpen ? 8.h : 12.h,
                                    12.w,
                                    isKeyboardOpen ? 6.h : 10.h,
                                  ),
                                  child: WordGuessScoreBoard(
                                    currentRound: currentRound,
                                    foundCount: foundCount,
                                    secondsLeft: state.roundTimeLeft,
                                    isPaperTheme: isPaper,
                                    players: state.gameState.players,
                                    myUid: state.myUid,
                                    isSolo: isSolo,
                                    myName: state.myName,
                                    myAvatar: state.myAvatar,
                                    hasTimer: hasTimer,
                                  ),
                                ),

                                // Đường kẻ nét đứt phân cách (AppDotted)
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.w,
                                  ),
                                  child: AppDotted(
                                    color: dividerColor,
                                    height: 1.2,
                                    dashWidth: 4,
                                  ),
                                ),

                                // ── B. Vùng nội dung cuộn ──
                                Expanded(
                                  child: SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 12.w,
                                      vertical: isKeyboardOpen ? 4.h : 8.h,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        SizedBox(
                                          height: isKeyboardOpen ? 2.h : 6.h,
                                        ),

                                        // Hàng ô chữ cái khuyết 3D
                                        WordGuessTileList(
                                          maskedWord: maskedWord,
                                          isPaperTheme: isPaper,
                                        ),

                                        SizedBox(
                                          height: isKeyboardOpen ? 6.h : 10.h,
                                        ),

                                        // Hộp gợi ý nghĩa tiếng Việt & Phiên âm
                                        WordGuessClueItem(
                                          meaning: viMeaning,
                                          phonetic: phonetic,
                                          wordEn: wordEn,
                                          length: wordLength,
                                          isPaperTheme: isPaper,
                                        ),

                                  // Banner chúc mừng khi đoán đúng
                                  if (state.solvedBannerSolver != null) ...[
                                    SizedBox(height: 4.h),
                                    WordGuessSolvedBanner(
                                      solverName: state.solvedBannerSolver!,
                                      isMe: state.isSolvedByMe,
                                      isPaperTheme: isPaper,
                                      onCheer: () {
                                        context.read<WordGuessBloc>().add(
                                          const WordGuessEvent.sendChat(
                                            'Tuyệt vời! 👍',
                                          ),
                                        );
                                      },
                                    ),
                                  ],

                                  // Lịch sử các từ đã thử (Đã thử: ...)
                                  SizedBox(height: 6.h),
                                  WordGuessHistoryList(
                                    history: state.gameState.history,
                                    lastWrongGuess: state.lastWrongGuess,
                                    isPaperTheme: isPaper,
                                  ),

                                  // Banner biểu quyết Bỏ qua (Phòng đối kháng)
                                  if (!isSolo &&
                                      state.gameState.activeProposal !=
                                          null) ...[
                                    SizedBox(height: 6.h),
                                    WordGuessSkipBanner(
                                      proposal: state.gameState.activeProposal!,
                                      isPaperTheme: isPaper,
                                      onVoteAgree: () {
                                        context.read<WordGuessBloc>().add(
                                          WordGuessEvent.voteSkip(
                                            proposalId: state
                                                .gameState
                                                .activeProposal!
                                                .proposalId,
                                            agree: true,
                                          ),
                                        );
                                      },
                                      onVoteDisagree: () {
                                        context.read<WordGuessBloc>().add(
                                          WordGuessEvent.voteSkip(
                                            proposalId: state
                                                .gameState
                                                .activeProposal!
                                                .proposalId,
                                            agree: false,
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),

                          // ── C. Đáy bàn đấu: Thanh dock nhập từ ──────────
                          WordGuessInputBar(
                            controller: textController,
                            focusNode: focusNode,
                            isEnabled: canInteract,
                            isSubmitting: state.isSubmitting,
                            isPaperTheme: isPaper,
                            lastWrongGuess: state.lastWrongGuess,
                            onChanged: onInputChanged,
                            onSubmit: onSubmit,
                            onSkip: onSkip,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
