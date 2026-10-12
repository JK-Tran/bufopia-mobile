import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_chain/presentation/bloc/word_chain_bloc.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/dialog/word_chain_chat_dialog.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/dialog/word_chain_surrender_dialog.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_header.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_input_bar.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_message_list.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_score_board.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_turn_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Body chính của phòng thi đấu Nối từ (Word Chain).
/// Bố cục chuẩn theo thiết kế web/game mobile: Header -> Score Board ->
/// Message Thread -> Turn Banner -> Input Bar.
class WordChainBody extends StatefulWidget {
  const WordChainBody({
    required this.state,
    required this.myName,
    super.key,
    this.myAvatar,
    this.onBackPressed,
    this.onPlayAudio,
  });

  final WordChainState state;
  final String myName;
  final String? myAvatar;
  final VoidCallback? onBackPressed;
  final void Function(String word)? onPlayAudio;

  @override
  State<WordChainBody> createState() => _WordChainBodyState();
}

class _WordChainBodyState extends State<WordChainBody> {
  late final TextEditingController _inputController;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _inputController = TextEditingController(text: widget.state.inputWord);
    _scrollController = ScrollController();
  }

  @override
  void didUpdateWidget(covariant WordChainBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.state.inputWord != _inputController.text) {
      _inputController.text = widget.state.inputWord;
    }
    // Tự động cuộn xuống dưới khi có tin nhắn mới
    if (widget.state.gameState.messages.length >
        oldWidget.state.gameState.messages.length) {
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _handleOpenChat() {
    WordChainChatDialog.show(
      context,
      rivalName: widget.state.rivalName,
      onSendMessage: (msg) {
        context.read<WordChainBloc>().add(WordChainEvent.sendChat(msg));
      },
    );
  }

  void _handleOpenSurrender() {
    WordChainSurrenderDialog.show(
      context,
      title: 'ĐẦU HÀNG',
      message: 'Đầu hàng sẽ tính bạn thua ván đấu này. Bạn có chắc không?',
      confirmText: 'Đầu hàng',
      onConfirm: () {
        context.read<WordChainBloc>().add(const WordChainEvent.surrender());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final state = widget.state;

    // Màu nền khung bàn cờ
    final boardBg = isPaper ? AppColors.paperBackground : AppColors.white;
    final boardBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.classicBorder;
    final dividerColor = isPaper
        ? AppColors.paperBorder.withValues(alpha: 0.6)
        : AppColors.grayLight;

    final myLives = state.gameState.lives.isNotEmpty
        ? (state.gameState.lives[state.myPlayerIndex] ?? 3)
        : 3;
    final rivalLives = state.gameState.lives.length > 1
        ? (state.gameState.lives[1 - state.myPlayerIndex] ?? 3)
        : 3;

    final lastMessageWord = state.gameState.messages.isNotEmpty
        ? state.gameState.messages.last.entry.word
        : null;

    final isWaitingForRival = state.mode != WordChainGameMode.bot &&
        state.gameState.status == 'waiting';
    final showLoadingOverlay = state.isLoading || isWaitingForRival;

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 580.w),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
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
                        ? AppColors.paperExtrusion.withValues(alpha: 0.45)
                        : AppColors.black.withValues(alpha: 0.12),
                    offset: Offset(0, 4.h),
                    blurRadius: 12.r,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // 1. Header trên cùng
                  WordChainHeader(
                    mode: state.mode,
                    roomCode: state.roomCode,
                    relaxed: state.relaxed,
                    onBackPressed: widget.onBackPressed,
                    onChatPressed: _handleOpenChat,
                    onSurrenderPressed: _handleOpenSurrender,
                    onRematch: () {
                      context.read<WordChainBloc>().add(
                        const WordChainEvent.requestRematch(),
                      );
                    },
                  ),

                  // 2. Score Board (P1 vs P2, Mạng sống, Đếm ngược)
                  WordChainScoreBoard(
                    player1Name: widget.myName,
                    player1Lives: myLives,
                    player1Avatar: widget.myAvatar,
                    player2Name: state.rivalName,
                    player2Lives: rivalLives,
                    player2Avatar: state.rivalAvatar,
                    remainingSeconds: state.remainingSeconds,
                    isMyTurn: state.isMyTurn,
                    relaxed: state.relaxed,
                  ),

                  // Đường kẻ phân cách nét đứt
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 4.h,
                    ),
                    height: 1.h,
                    color: dividerColor,
                  ),

                  // 3. Danh sách từ vựng đã nối
                  Expanded(
                    child: WordChainMessageList(
                      messages: state.gameState.messages,
                      myPlayerIndex: state.myPlayerIndex,
                      myName: widget.myName,
                      myAvatar: widget.myAvatar,
                      rivalName: state.rivalName,
                      rivalAvatar: state.rivalAvatar,
                      scrollController: _scrollController,
                      onPlayAudio: widget.onPlayAudio,
                    ),
                  ),

                  // 4. Banner phản hồi / nhắc lượt
                  WordChainTurnBanner(
                    isMyTurn: state.isMyTurn,
                    requiredLetter: state.gameState.requiredLetter,
                    rivalName: state.rivalName,
                    rejectedReason: state.rejectedReason,
                    lastCorrectWord:
                        state.gameState.messages.isNotEmpty && state.isMyTurn
                        ? lastMessageWord
                        : null,
                  ),

                  // 5. Khung nhập từ dưới đáy
                  WordChainInputBar(
                    controller: _inputController,
                    isMyTurn: state.isMyTurn,
                    isCheckingWord: state.isCheckingWord,
                    isGameOver: state.isGameOver,
                    requiredLetter: state.gameState.requiredLetter,
                    onChanged: (val) {
                      context.read<WordChainBloc>().add(
                        WordChainEvent.inputWordChanged(val),
                      );
                    },
                    onSubmit: () {
                      context.read<WordChainBloc>().add(
                        const WordChainEvent.submitWord(),
                      );
                    },
                  ),
                ],
              ),
            ),

            // 6. Loading / Waiting Indicator khi đang kết nối hoặc chờ đối thủ sẵn sàng
            if (showLoadingOverlay)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 20.h,
                ),
                decoration: BoxDecoration(
                  color: isPaper
                      ? AppColors.paperCardBg
                      : AppColors.purple.withValues(alpha: 0.95),
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
                    SizedBox(height: 14.h),
                    AppText.b2(
                      isWaitingForRival
                          ? 'ĐANG CHỜ ĐỐI THỦ SẴN SÀNG...'
                          : 'ĐANG TẢI DỮ LIỆU...',
                      color:
                          isPaper ? AppColors.paperTextDark : AppColors.white,
                      fontWeight: FontWeight.w700,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
