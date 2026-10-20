import 'dart:math' as math;

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_dialog.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/usecases/get_cached_user_use_case.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/chat/chat.dart';
import 'package:bufopia/features/vocabulary/domain/entities/topic.dart';
import 'package:bufopia/features/word_guess/domain/entities/word_info.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_match_record_use_case.dart';
import 'package:bufopia/features/word_guess/presentation/bloc/word_guess_bloc.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/dialog/word_guess_opponent_left_dialog.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/dialog/word_guess_result_dialog.dart';
import 'package:bufopia/features/word_guess/presentation/widgets/word_guess_body.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

/// Màn hình chính trò chơi Đoán từ khuyết (Word Guess Page)
/// Clean Architecture: Page -> Body -> Subcomponents
class WordGuessPage extends StatelessWidget {
  const WordGuessPage({
    required this.mode,
    required this.topic,
    super.key,
    this.roomCode,
    this.durationSeconds = 180,
    this.rivalName,
    this.rivalAvatar,
  });

  final WordGuessGameMode mode;
  final String topic;
  final String? roomCode;
  final int durationSeconds;
  final String? rivalName;
  final String? rivalAvatar;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.instance<WordGuessBloc>(),
      child: _WordGuessView(
        mode: mode,
        topic: topic,
        roomCode: roomCode,
        durationSeconds: durationSeconds,
        rivalName: rivalName,
        rivalAvatar: rivalAvatar,
      ),
    );
  }
}

class _WordGuessView extends StatefulWidget {
  const _WordGuessView({
    required this.mode,
    required this.topic,
    this.roomCode,
    this.durationSeconds = 180,
    this.rivalName,
    this.rivalAvatar,
  });

  final WordGuessGameMode mode;
  final String topic;
  final String? roomCode;
  final int durationSeconds;
  final String? rivalName;
  final String? rivalAvatar;

  @override
  State<_WordGuessView> createState() => _WordGuessViewState();
}

class _WordGuessViewState extends State<_WordGuessView> {
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isResultShown = false;
  bool _isOpponentLeftShown = false;
  String? _lastErrorMessage;

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

  void _focusInput() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _focusNode.canRequestFocus) {
        _focusNode.requestFocus();
      }
    });
  }

  Future<void> _initGame() async {
    final bloc = context.read<WordGuessBloc>();
    final authState = context.read<AuthBloc>().state;
    final cachedUser = sl<GetCachedUserUseCase>().execute();
    final user = authState.currentUser ?? cachedUser;
    final uid = user?.uid.isNotEmpty == true ? user!.uid : 'guest';
    final name = (user?.displayName.isNotEmpty == true)
        ? user!.displayName
        : 'Người chơi';
    final avatar = user?.avatarUrl;

    switch (widget.mode) {
      case WordGuessGameMode.practice:
        bloc.add(
          WordGuessEvent.startPractice(
            topic: widget.topic,
            uid: uid,
          ),
        );
      case WordGuessGameMode.matchmake:
        bloc.add(
          WordGuessEvent.startOnlineMatchmake(
            topic: widget.topic,
            uid: uid,
            name: name,
            avatar: avatar,
          ),
        );
      case WordGuessGameMode.room:
        if (widget.roomCode != null && widget.roomCode!.isNotEmpty) {
          bloc.add(
            WordGuessEvent.joinRoom(
              roomCode: widget.roomCode!,
              uid: uid,
              name: name,
              avatar: avatar,
            ),
          );
        }
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  int _resolvePlayerIndex(WordGuessState s) {
    final idx = s.gameState.players.indexWhere((p) => p.uid == s.myUid);
    if (idx == -1) return 0;
    final pIdx = s.gameState.players[idx].playerIndex;
    return pIdx != 0 ? pIdx : idx;
  }

  String _getTopicTitle(String id) {
    if (id == 'auto') return 'Luyện ngẫu nhiên';
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
      title: 'RỜI PHÒNG LUYỆN?',
      child: Builder(
        builder: (dialogCtx) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText.b1(
              'Bạn có chắc chắn muốn thoát khỏi phiên luyện tập này không?',
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
                          text: 'Ở LẠI',
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
                          text: 'Ở LẠI',
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
                    text: 'RỜI ĐI',
                    height: 40.h,
                    onPressed: () {
                      if (isPopping) return;
                      isPopping = true;
                      Navigator.of(dialogCtx).pop();
                      context.read<WordGuessBloc>().add(
                        const WordGuessEvent.leaveGame(),
                      );
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
    final bloc = context.read<WordGuessBloc>();
    if (widget.mode == WordGuessGameMode.practice) {
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
      title: 'KẾT THÚC VÁN CHƠI',
      child: Builder(
        builder: (dialogCtx) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText.b1(
              'Bạn muốn dừng buổi luyện tập sớm và xem kết quả?',
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
                          text: 'CHƠI TIẾP',
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
                          text: 'CHƠI TIẾP',
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
                    text: 'KẾT THÚC',
                    height: 40.h,
                    onPressed: () {
                      if (isPopping) return;
                      isPopping = true;
                      Navigator.of(dialogCtx).pop();
                      final bloc = context.read<WordGuessBloc>();
                      if (widget.mode == WordGuessGameMode.practice) {
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

    final bloc = context.read<WordGuessBloc>();
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());

    bloc.add(WordGuessEvent.inputWordChanged(text));
    if (widget.mode == WordGuessGameMode.practice) {
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

    final isSolo = widget.mode == WordGuessGameMode.practice;
    final foundCount = isSolo
        ? state.practiceCorrectCount
        : (state.gameState.foundCount > 0
              ? state.gameState.foundCount
              : state.gameState.players.fold<int>(
                  0,
                  (acc, p) => acc + p.effectiveScore,
                ));
    final earnedXp = isSolo ? state.practiceEarnedXp : (foundCount * 5);

    final skippedWords = <String>{};
    final wordsPlayed = <WordInfo>[];

    if (isSolo && state.deck != null) {
      final solvedWords = state.gameState.history
          .where((h) => h.isSuccess && !h.skipped)
          .map((h) => h.word.toLowerCase().trim())
          .toSet();

      for (var i = 0; i < state.deck!.words.length; i++) {
        final w = state.deck!.words[i];
        final isSolved = solvedWords.contains(w.en.toLowerCase().trim());
        if (!isSolved) {
          skippedWords.add(w.en.toLowerCase().trim());
        }
        wordsPlayed.add(
          WordInfo(
            index: int.tryParse(w.id) ?? i,
            en: w.en,
            vi: w.vi,
            masked: w.en,
          ),
        );
      }
    } else if (state.gameState.wordsSummary.isNotEmpty) {
      for (final s in state.gameState.wordsSummary) {
        final en = (s['en'] as String? ?? s['word'] as String? ?? '').trim();
        final vi = (s['vi'] as String? ?? s['meaning'] as String? ?? '').trim();
        final phonetic = (s['phonetic'] as String? ?? '').trim();
        final example =
            (s['example'] as String? ?? s['exampleEn'] as String? ?? '').trim();
        final exampleVi = (s['exampleVi'] as String? ?? '').trim();
        final fullExample = exampleVi.isNotEmpty
            ? '$example\n$exampleVi'
            : example;

        final isSkipped =
            s['skipped'] == true ||
            s['isSkipped'] == true ||
            s['status'] == 'skipped' ||
            s['result'] == 'skipped';

        if (isSkipped && en.isNotEmpty) {
          skippedWords.add(en.toLowerCase().trim());
        }

        if (en.isNotEmpty) {
          wordsPlayed.add(
            WordInfo(
              en: en,
              vi: vi,
              phonetic: phonetic,
              example: fullExample.isNotEmpty ? fullExample : null,
              masked: en,
            ),
          );
        }
      }
    } else {
      for (final h in state.gameState.history) {
        if (h.skipped || !h.isSuccess) {
          skippedWords.add(h.word.toLowerCase().trim());
        }
        wordsPlayed.add(
          WordInfo(
            en: h.word,
            vi: h.meaning,
            phonetic: h.phonetic,
            masked: h.word,
          ),
        );
      }
    }

    // Bổ sung các từ bị bỏ qua từ danh sách lịch sử trận
    for (final h in state.gameState.history) {
      if (h.skipped || !h.isSuccess) {
        skippedWords.add(h.word.toLowerCase().trim());
      }
    }

    _saveMatchRecord(state, wordsPlayed, foundCount, skippedWords);

    WordGuessResultDialog.show(
      context,
      foundCount: foundCount,
      earnedXp: earnedXp,
      wordsPlayed: wordsPlayed,
      players: !isSolo ? state.gameState.players : const [],
      history: state.gameState.history,
      skippedWords: skippedWords,
      myUid: state.myUid,
      myName: state.myName,
      isSolo: isSolo,
      onReplay: () {
        _isResultShown = false;
        if (isSolo) {
          _initGame();
        } else {
          context.read<WordGuessBloc>().add(
            const WordGuessEvent.restartGame(),
          );
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

  void _showOpponentLeftDialog() {
    if (_isOpponentLeftShown || !mounted) return;
    _isOpponentLeftShown = true;

    WordGuessOpponentLeftDialog.show(
      context,
      onHome: () => context.go(AppRouter.home),
    );
  }

  Future<void> _saveMatchRecord(
    WordGuessState state,
    List<WordInfo> wordsPlayed,
    int foundCount,
    Set<String> skippedWords,
  ) async {
    try {
      final user = context.read<AuthBloc>().state.currentUser;
      final uid = user?.uid.isNotEmpty == true ? user!.uid : 'guest';
      if (uid == 'guest') return;

      final token = await sl<FirebaseAuthService>().getIdToken();
      final randSuffix = math.Random().nextInt(999999);
      final matchId =
          'guess_${DateTime.now().millisecondsSinceEpoch}_$randSuffix';

      final scores = state.gameState.players.isNotEmpty
          ? state.gameState.players.map((p) => p.effectiveScore).toList()
          : [foundCount];

      final payload = <String, dynamic>{
        'id': matchId,
        'uid': uid,
        'game': 'guess',
        'roomCode': widget.roomCode ?? 'SOLO',
        'topicId': widget.topic,
        'scores': scores,
        'winner': state.gameState.winnerUid ?? uid,
        'players': state.gameState.players
            .map(
              (p) => {
                'uid': p.uid,
                'name': p.name,
                'foundCount': p.effectiveScore,
                'isHost': p.isHost,
              },
            )
            .toList(),
        'wordsSummary': wordsPlayed.map(
          (w) {
            final en = (w.en ?? w.masked).toLowerCase().trim();
            final isSkipped = skippedWords.contains(en);
            return {
              'en': w.en ?? w.masked,
              'vi': w.vi,
              'phonetic': w.phonetic,
              'status': isSkipped ? 'skipped' : 'solved',
              'skipped': isSkipped,
              'reason': isSkipped ? 'skipped' : 'solved',
            };
          },
        ).toList(),
        'timestamp': DateTime.now().millisecondsSinceEpoch,
      };

      await sl<SubmitGuessMatchRecordUseCase>().execute(
        SubmitGuessMatchRecordInput(
          matchPayload: payload,
          token: token,
        ),
      );
    } on Object catch (_) {
      // Bỏ qua lỗi lưu lịch sử ngầm
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final topicTitle = _getTopicTitle(widget.topic);
    final isSolo = widget.mode == WordGuessGameMode.practice;

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
            roundChanged ||
            guessAttempted;
      },
      listener: (context, state) {
        if (state.errorMessage != null &&
            state.errorMessage!.isNotEmpty &&
            state.errorMessage != _lastErrorMessage) {
          _lastErrorMessage = state.errorMessage;
          AppToast.showError(context, state.errorMessage!);
          _focusInput();
        }

        // Đối thủ thoát phòng khi đang thi đấu
        if (!isSolo &&
            state.gameState.status == 'playing' &&
            state.gameState.players.length < 2 &&
            !_isOpponentLeftShown &&
            !_isResultShown) {
          _showOpponentLeftDialog();
          return;
        }

        if (state.isGameOver && !_isResultShown) {
          _showResultDialog(state);
          return;
        }

        // Tự động đóng Dialog kết quả khi khởi động lại
        // (status trở về 'lobby' hoặc 'playing')
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

              // 2. Body chính của game (Clean Mobile Architecture)
              BlocProvider<ChatBloc>(
                create: (ctx) {
                  final bloc = GetIt.instance.get<ChatBloc>();
                  final guessState = ctx.read<WordGuessBloc>().state;
                  bloc.add(
                    ChatEvent.playerIndexUpdated(
                      myPlayerIndex: _resolvePlayerIndex(guessState),
                    ),
                  );
                  return bloc;
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
                                : (widget.rivalName ?? 'Đối thủ');
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
                            context.read<WordGuessBloc>().add(
                              WordGuessEvent.inputWordChanged(val),
                            );
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
