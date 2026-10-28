import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_dialog.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/base/base_page_state.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/chat/chat.dart';
import 'package:bufopia/features/vocabulary/domain/entities/topic.dart';
import 'package:bufopia/features/word_guess/presentation/bloc/word_guess_bloc.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/dialog/word_guess_opponent_left_dialog.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/dialog/word_guess_result_dialog.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/word_guess_body.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

/// Màn hình chính trò chơi Đoán từ khuyết (Word Guess Page)
/// Tuân thủ Clean Architecture và kế thừa `BasePageState`
class WordGuessPage extends StatefulWidget {
  const WordGuessPage({
    required this.mode,
    required this.topic,
    super.key,
    this.roomCode,
    this.durationSeconds = 180,
    this.rivalName,
    this.rivalAvatar,
    this.difficulty,
  });

  final WordGuessGameMode mode;
  final String topic;
  final String? roomCode;
  final int durationSeconds;
  final String? rivalName;
  final String? rivalAvatar;
  final String? difficulty;

  @override
  State<WordGuessPage> createState() => _WordGuessPageState();
}

class _WordGuessPageState extends BasePageState<WordGuessPage, WordGuessBloc> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isResultShown = false;
  bool _isOpponentLeftShown = false;
  String? _lastErrorMessage;

  @override
  bool get useSafeArea => false;

  @override
  EdgeInsetsGeometry? get pagePadding => EdgeInsets.zero;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initGame();
      _focusInput();
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _focusInput() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _focusNode.canRequestFocus) {
        _focusNode.requestFocus();
      }
    });
  }

  void _initGame() {
    final authState = context.read<AuthBloc>().state;
    final user = authState.currentUser;
    final uid = user?.uid.isNotEmpty == true ? user!.uid : 'guest';
    final name = (user?.displayName.isNotEmpty == true)
        ? user!.displayName
        : context.l10n.player;
    final avatar = user?.avatarUrl;

    final hasRoomCode = widget.roomCode != null && widget.roomCode!.isNotEmpty;
    final isMatchmaking = widget.mode == WordGuessGameMode.matchmake;

    if (hasRoomCode) {
      bloc.add(
        WordGuessEvent.joinRoom(
          roomCode: widget.roomCode!,
          uid: uid,
          name: name,
          avatar: avatar,
          difficulty: widget.difficulty,
          isMatchmaking: isMatchmaking,
        ),
      );
      return;
    }

    switch (widget.mode) {
      case WordGuessGameMode.practice:
        bloc.add(
          WordGuessEvent.startPractice(
            topic: widget.topic,
            uid: uid,
            difficulty: widget.difficulty,
          ),
        );
      case WordGuessGameMode.matchmake:
        bloc.add(
          WordGuessEvent.startOnlineMatchmake(
            topic: widget.topic,
            uid: uid,
            name: name,
            avatar: avatar,
            difficulty: widget.difficulty,
          ),
        );
      case WordGuessGameMode.room:
        break;
    }
  }

  int _resolvePlayerIndex(WordGuessState s) {
    final idx = s.gameState.players.indexWhere((p) => p.uid == s.myUid);
    if (idx == -1) return 0;
    final pIdx = s.gameState.players[idx].playerIndex;
    return pIdx != 0 ? pIdx : idx;
  }

  String _getTopicTitle(String id, BuildContext context) {
    if (id == 'auto') return context.l10n.randomPractice;
    final topic = TopicX.defaultTopics.where((t) => t.id == id).firstOrNull;
    return topic?.name ?? id;
  }

  void _onBackTapped() {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    final isPaper = context.read<AppBloc>().state.isPaperTheme;
    final messageColor = isPaper
        ? AppColors.paperTextMedium
        : AppColors.grayMedium;
    var isPopping = false;

    AppDialog.show(
      context,
      title: context.l10n.leavePracticeRoomTitle,
      child: Builder(
        builder: (dialogCtx) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText.b1(
              context.l10n.leavePracticeRoomConfirm,
              color: messageColor,
              fontSize: 14.sp,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 18.h),
            Row(
              children: [
                Expanded(
                  child: isPaper
                      ? AppButton(
                          text: context.l10n.stay,
                          height: 40.h,
                          backgroundColor: AppColors.paperSurface,
                          borderColor: AppColors.paperBorder,
                          extrusionColor: AppColors.paperExtrusion,
                          textColor: AppColors.paperTextDark,
                          onPressed: () {
                            if (isPopping) return;
                            isPopping = true;
                            Navigator.of(dialogCtx).pop();
                          },
                        )
                      : AppButton.secondary(
                          text: context.l10n.stay,
                          height: 40.h,
                          onPressed: () {
                            if (isPopping) return;
                            isPopping = true;
                            Navigator.of(dialogCtx).pop();
                          },
                        ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: AppButton.danger(
                    text: context.l10n.leave,
                    height: 40.h,
                    onPressed: () {
                      if (isPopping) return;
                      isPopping = true;
                      Navigator.of(dialogCtx).pop();
                      bloc.add(const WordGuessEvent.leaveGame());
                      context.go(AppRouter.home);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onSkipTapped() {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    final isSolo = bloc.state.mode == WordGuessGameMode.practice;
    if (isSolo) {
      bloc.add(const WordGuessEvent.skipPracticeQuestion());
    } else {
      bloc.add(const WordGuessEvent.skipWord());
    }
    _textController.clear();
    _focusInput();
  }

  void _onEndTapped() {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    final isPaper = context.read<AppBloc>().state.isPaperTheme;
    final messageColor = isPaper
        ? AppColors.paperTextMedium
        : AppColors.grayMedium;
    var isPopping = false;

    AppDialog.show(
      context,
      title: context.l10n.endGameEarlyTitle,
      child: Builder(
        builder: (dialogCtx) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText.b1(
              context.l10n.endGameEarlyConfirm,
              color: messageColor,
              fontSize: 14.sp,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 18.h),
            Row(
              children: [
                Expanded(
                  child: isPaper
                      ? AppButton(
                          text: context.l10n.continuePlaying,
                          height: 40.h,
                          backgroundColor: AppColors.paperSurface,
                          borderColor: AppColors.paperBorder,
                          extrusionColor: AppColors.paperExtrusion,
                          textColor: AppColors.paperTextDark,
                          onPressed: () {
                            if (isPopping) return;
                            isPopping = true;
                            Navigator.of(dialogCtx).pop();
                          },
                        )
                      : AppButton.secondary(
                          text: context.l10n.continuePlaying,
                          height: 40.h,
                          onPressed: () {
                            if (isPopping) return;
                            isPopping = true;
                            Navigator.of(dialogCtx).pop();
                          },
                        ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: AppButton.danger(
                    text: context.l10n.endGame,
                    height: 40.h,
                    onPressed: () {
                      if (isPopping) return;
                      isPopping = true;
                      Navigator.of(dialogCtx).pop();
                      final isSolo =
                          bloc.state.mode == WordGuessGameMode.practice;
                      if (isSolo) {
                        _showResultDialog(bloc.state);
                      } else {
                        bloc.add(const WordGuessEvent.endGame());
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onSubmit() {
    final text = _textController.text.trim();
    if (text.isEmpty) {
      _focusInput();
      return;
    }

    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    bloc.add(WordGuessEvent.inputWordChanged(text));
    final isSolo = bloc.state.mode == WordGuessGameMode.practice;
    if (isSolo) {
      bloc.add(const WordGuessEvent.submitPracticeAnswer());
    } else {
      bloc.add(const WordGuessEvent.submitGuess());
    }

    _textController.clear();
    _focusInput();
  }

  void _showResultDialog(WordGuessState state) {
    if (_isResultShown || !mounted) return;
    _isResultShown = true;

    final result = state.result;

    WordGuessResultDialog.show(
      context,
      foundCount: result.foundCount,
      earnedXp: result.earnedXp,
      wordsPlayed: result.wordsPlayed,
      players: !state.isSolo ? state.gameState.players : const [],
      history: result.history,
      wordsSummary: state.gameState.wordsSummary,
      skippedWords: result.skippedWords,
      myUid: state.myUid,
      myName: state.myName,
      isSolo: state.isSolo,
      onReplay: () {
        _isResultShown = false;
        if (state.isSolo) {
          _initGame();
        } else {
          bloc.add(const WordGuessEvent.restartGame());
        }
      },
      onChangeTopic: () {
        if (context.canPop()) {
          context.pop();
        } else {
          context.pushReplacement(AppRouter.wordGuessTopic);
        }
      },
      onHome: () {
        context.go(AppRouter.home);
      },
    );
  }

  void _showOpponentLeftDialog([String? rivalName]) {
    if (_isOpponentLeftShown || !mounted) return;
    _isOpponentLeftShown = true;

    WordGuessOpponentLeftDialog.show(
      context,
      rivalName: rivalName,
      onHome: () {
        bloc.add(const WordGuessEvent.leaveGame());
        context.go(AppRouter.home);
      },
      onContinueSolo: () {
        _isOpponentLeftShown = false;
        bloc.add(const WordGuessEvent.switchToSolo());
        _focusInput();
      },
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final topicTitle = _getTopicTitle(widget.topic, context);

    return BlocConsumer<WordGuessBloc, WordGuessState>(
      listenWhen: (previous, current) {
        final roundChanged =
            previous.currentQuestionIndex != current.currentQuestionIndex ||
            previous.gameState.currentRound != current.gameState.currentRound ||
            (previous.gameState.status != 'playing' &&
                current.gameState.status == 'playing');
        final guessAttempted =
            previous.lastWrongGuess != current.lastWrongGuess ||
            previous.practiceCorrectCount != current.practiceCorrectCount ||
            previous.gameState.totalWordsFound !=
                current.gameState.totalWordsFound;

        return (current.errorMessage != null &&
                current.errorMessage != _lastErrorMessage) ||
            previous.isGameOver != current.isGameOver ||
            (previous.gameState.players.length >
                current.gameState.players.length) ||
            previous.opponentLeftRivalName != current.opponentLeftRivalName ||
            previous.mode != current.mode ||
            roundChanged ||
            guessAttempted;
      },
      listener: (context, state) {
        final isSolo = state.mode == WordGuessGameMode.practice;

        if (state.errorMessage != null &&
            state.errorMessage!.isNotEmpty &&
            state.errorMessage != _lastErrorMessage) {
          _lastErrorMessage = state.errorMessage;
          AppToast.showError(context, state.errorMessage!);
          _focusInput();
        }

        // Đối thủ thoát phòng khi đang thi đấu
        final effectiveRivalName =
            state.opponentLeftRivalName ??
            state.gameState.players
                .where((p) => p.uid != state.myUid)
                .firstOrNull
                ?.name;
        if (!isSolo &&
            (state.opponentLeftRivalName != null ||
                (state.gameState.status == 'playing' &&
                    state.gameState.players.length < 2)) &&
            !_isOpponentLeftShown &&
            !_isResultShown) {
          _showOpponentLeftDialog(effectiveRivalName);
          return;
        }

        if (state.isGameOver && !_isResultShown) {
          _showResultDialog(state);
          return;
        }

        // Tự động đóng Dialog kết quả khi khởi động lại
        if (!state.isGameOver && _isResultShown) {
          _isResultShown = false;
          if (Navigator.of(context, rootNavigator: true).canPop()) {
            Navigator.of(context, rootNavigator: true).pop();
          }
        }

        // Luôn tự động focus vào ô input khi chuyển vòng, đúng/sai hoặc bắt đầu chơi
        if (!state.isGameOver && !state.isLoading) {
          _focusInput();
        }
      },
      builder: (context, state) {
        final isSolo = state.mode == WordGuessGameMode.practice;
        final canInteract =
            !state.isLoading &&
            !state.isSubmitting &&
            !state.isDelayingNextRound &&
            !state.isGameOver &&
            (isSolo || state.gameState.status == 'playing');

        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            fit: StackFit.expand,
            children: [
              // 1. Hình nền theo Theme
              Image.asset(
                isPaper
                    ? 'assets/images/background_switch/app_background_1.webp'
                    : 'assets/images/app_background.webp',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                errorBuilder: (_, _, _) => ColoredBox(
                  color: isPaper
                      ? AppColors.paperBackground
                      : AppColors.greenLight,
                ),
              ),

              // 2. Body chính của game (Clean Architecture)
              BlocProvider<ChatBloc>(
                create: (ctx) {
                  final chatBloc = GetIt.instance.get<ChatBloc>();
                  final guessState = ctx.read<WordGuessBloc>().state;
                  chatBloc.add(
                    ChatEvent.playerIndexUpdated(
                      myPlayerIndex: _resolvePlayerIndex(guessState),
                    ),
                  );
                  return chatBloc;
                },
                child: BlocListener<WordGuessBloc, WordGuessState>(
                  listenWhen: (prev, current) {
                    final prevMyIndex = prev.gameState.players.indexWhere(
                      (p) => p.uid == prev.myUid,
                    );
                    final curMyIndex = current.gameState.players.indexWhere(
                      (p) => p.uid == current.myUid,
                    );
                    return prevMyIndex != curMyIndex ||
                        prev.gameState.players.length !=
                            current.gameState.players.length;
                  },
                  listener: (context, state) {
                    context.read<ChatBloc>().add(
                      ChatEvent.playerIndexUpdated(
                        myPlayerIndex: _resolvePlayerIndex(state),
                      ),
                    );
                  },
                  child: BlocListener<ChatBloc, ChatState>(
                    listenWhen: (prev, current) =>
                        prev.unreadCount < current.unreadCount &&
                        current.unreadCount > 0,
                    listener: (context, chatState) {
                      context.read<AppBloc>().add(
                        const AppEvent.clickSoundPlayed(),
                      );
                    },
                    child: Builder(
                      builder: (bodyCtx) {
                        return WordGuessBody(
                          state: state,
                          topicTitle: topicTitle,
                          isSolo: isSolo,
                          isPaper: isPaper,
                          canInteract: canInteract,
                          textController: _textController,
                          focusNode: _focusNode,
                          hasTimer: !isSolo && widget.durationSeconds > 0,
                          onBack: _onBackTapped,
                          onSubmit: _onSubmit,
                          onSkip: _onSkipTapped,
                          onEnd: _onEndTapped,
                          onChatPressed: () {
                            final rivalPlayer =
                                state.gameState.players
                                    .where((p) => p.uid != state.myUid)
                                    .firstOrNull ??
                                (state.gameState.players.length > 1
                                    ? state.gameState.players[1]
                                    : null);
                            final rivalName =
                                rivalPlayer?.name.isNotEmpty == true
                                ? rivalPlayer!.name
                                : (widget.rivalName ??
                                      context.l10n.humanOpponent);
                            final rivalAvatar =
                                rivalPlayer?.avatar ?? widget.rivalAvatar;
                            ChatDialog.show(
                              bodyCtx,
                              rivalName: rivalName,
                              rivalAvatar: rivalAvatar,
                              isWaiting:
                                  state.gameState.status == 'lobby' ||
                                  state.gameState.status == 'waiting',
                              myPlayerIndex: _resolvePlayerIndex(state),
                            );
                          },
                          onInputChanged: (val) {
                            bloc.add(WordGuessEvent.inputWordChanged(val));
                          },
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
