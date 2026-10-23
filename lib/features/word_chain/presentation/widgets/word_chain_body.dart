import 'package:bufopia/components/app_dotted.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/chat/chat.dart';
import 'package:bufopia/features/word_chain/presentation/bloc/word_chain_bloc.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/dialog/word_chain_surrender_dialog.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_header.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_input_bar.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_message_list.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_score_board.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_turn_banner.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
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
  late final FocusNode _focusNode;
  bool _hasInitialFocused = false;

  @override
  void initState() {
    super.initState();
    _inputController = TextEditingController(text: widget.state.inputWord);
    _scrollController = ScrollController();
    _focusNode = FocusNode()..addListener(_onFocusChanged);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        context.read<ChatBloc>().add(
          ChatEvent.playerIndexUpdated(
            myPlayerIndex: widget.state.myPlayerIndex,
          ),
        );
        // Chỉ tự động focus DUY NHẤT lần đầu tiên nếu là lượt của tôi
        // khi ván mở ra
        if (widget.state.isMyTurn &&
            !widget.state.isGameOver &&
            widget.state.gameState.messages.isEmpty &&
            !_hasInitialFocused) {
          _hasInitialFocused = true;
          _focusNode.requestFocus();
        }
      }
    });
  }

  void _onFocusChanged() {
    if (_focusNode.hasFocus) {
      _scrollToBottom();
    }
  }

  @override
  void didUpdateWidget(covariant WordChainBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.state.inputWord != _inputController.text) {
      _inputController.text = widget.state.inputWord;
    }
    if (oldWidget.state.myPlayerIndex != widget.state.myPlayerIndex) {
      context.read<ChatBloc>().add(
        ChatEvent.playerIndexUpdated(
          myPlayerIndex: widget.state.myPlayerIndex,
        ),
      );
    }
    // Tự động cuộn xuống dưới cùng khi có từ mới (của mình hoặc đối phương)
    if (widget.state.gameState.messages.length >
        oldWidget.state.gameState.messages.length) {
      _scrollToBottom();
    }
    // Chỉ focus lần đầu nếu ván đấu mới khởi tạo và đến lượt tôi
    if (!_hasInitialFocused &&
        !oldWidget.state.isMyTurn &&
        widget.state.isMyTurn &&
        widget.state.gameState.messages.isEmpty &&
        !widget.state.isGameOver) {
      _hasInitialFocused = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _focusNode.canRequestFocus) {
          _focusNode.requestFocus();
        }
      });
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOutCubic,
        );
      }
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChanged);
    _inputController.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _handleOpenChat() {
    ChatDialog.show(
      context,
      rivalName: widget.state.rivalName,
      rivalAvatar: widget.state.rivalAvatar,
      isBotMode: widget.state.mode == WordChainGameMode.bot,
      isWaiting: widget.state.gameState.status == 'waiting',
      myPlayerIndex: widget.state.myPlayerIndex,
    );
  }

  void _handleOpenSurrender() {
    WordChainSurrenderDialog.show(
      context,
      title: context.l10n.surrenderTitle,
      message: context.l10n.surrenderMessage,
      confirmText: context.l10n.surrender,
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
        ? AppColors.paperDottedLine
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

    final isWaitingForRival =
        state.mode != WordChainGameMode.bot &&
        state.gameState.status == 'waiting';
    final showLoadingOverlay = state.isLoading || isWaitingForRival;

    return BlocListener<ChatBloc, ChatState>(
      listenWhen: (prev, current) =>
          prev.unreadCount < current.unreadCount && current.unreadCount > 0,
      listener: (context, chatState) {
        // Phát âm thanh khi có tin nhắn mới từ đối thủ
        context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        behavior: HitTestBehavior.translucent,
        child: Center(
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
                      BlocBuilder<ChatBloc, ChatState>(
                        buildWhen: (prev, current) =>
                            prev.unreadCount != current.unreadCount,
                        builder: (context, chatState) {
                          return WordChainHeader(
                            mode: state.mode,
                            roomCode: state.roomCode,
                            relaxed: state.relaxed,
                            unreadChatCount: chatState.unreadCount,
                            onBackPressed: widget.onBackPressed,
                            onChatPressed: _handleOpenChat,
                            onSurrenderPressed: _handleOpenSurrender,
                            onRematch:
                                (state.mode == WordChainGameMode.bot ||
                                    state.isGameOver)
                                ? () {
                                    context.read<WordChainBloc>().add(
                                      const WordChainEvent.requestRematch(),
                                    );
                                  }
                                : null,
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

                      // Đường kẻ phân cách nét đứt (AppDotted)
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 4.h,
                        ),
                        child: AppDotted(
                          color: dividerColor,
                        ),
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
                            state.gameState.messages.isNotEmpty &&
                                state.isMyTurn
                            ? lastMessageWord
                            : null,
                      ),

                      // 5. Khung nhập từ dưới đáy
                      WordChainInputBar(
                        controller: _inputController,
                        focusNode: _focusNode,
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
                          _focusNode.unfocus();
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
                          ? Border.all(
                              color: AppColors.paperBorder,
                              width: 1.5.w,
                            )
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
                          color: isPaper
                              ? AppColors.paperGreen
                              : AppColors.gold,
                        ),
                        SizedBox(height: 14.h),
                        AppText.b2(
                          isWaitingForRival
                              ? context.l10n.waitingForOpponentReady
                              : context.l10n.loadingData,
                          color: isPaper
                              ? AppColors.paperTextDark
                              : AppColors.white,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
