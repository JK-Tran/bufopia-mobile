import 'dart:async';
import 'dart:math';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/practice/domain/repositories/practice_repository.dart';
import 'package:bufopia/features/practice/domain/services/srs_engine.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:bufopia/features/word_guess/domain/entities/deck.dart';
import 'package:bufopia/features/word_guess/domain/entities/game_event.dart';
import 'package:bufopia/features/word_guess/domain/entities/game_state.dart';
import 'package:bufopia/features/word_guess/domain/entities/history_item.dart';
import 'package:bufopia/features/word_guess/domain/entities/match_info.dart';
import 'package:bufopia/features/word_guess/domain/entities/practice_result.dart';
import 'package:bufopia/features/word_guess/domain/entities/word_info.dart';
import 'package:bufopia/features/word_guess/domain/usecases/connect_guess_matchmake_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/connect_guess_room_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/disconnect_guess_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/get_guess_deck_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/observe_guess_game_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_chat_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_end_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_practice_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_ready_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_restart_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_skip_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_start_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_vote_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_word_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'word_guess_bloc.freezed.dart';
part 'word_guess_event.dart';
part 'word_guess_state.dart';

@injectable
class WordGuessBloc extends BaseBloc<WordGuessEvent, WordGuessState> {
  WordGuessBloc(
    this._getDeckUseCase,
    this._submitPracticeUseCase,
    this._connectMatchmakeUseCase,
    this._connectRoomUseCase,
    this._observeGameUseCase,
    this._disconnectUseCase,
    this._submitWordUseCase,
    this._submitSkipUseCase,
    this._submitVoteUseCase,
    this._submitEndUseCase,
    this._submitChatUseCase,
    this._submitReadyUseCase,
    this._submitStartUseCase,
    this._submitRestartUseCase,
    this._practiceRepository,
  ) : super(const WordGuessState()) {
    // Solo Practice
    on<_StartPractice>(_onStartPractice);
    on<_SubmitPracticeAnswer>(_onSubmitPracticeAnswer);
    on<_SkipPracticeQuestion>(_onSkipPracticeQuestion);
    on<_AutoHintTick>(_onAutoHintTick);

    // Online Multiplayer
    on<_StartOnlineMatchmake>(_onStartOnlineMatchmake);
    on<_CancelMatchmake>(_onCancelMatchmake);
    on<_JoinRoom>(_onJoinRoom);
    on<_ToggleReady>(_onToggleReady);
    on<_StartGame>(_onStartGame);
    on<_UpdateConfig>(_onUpdateConfig);
    on<_SubmitGuess>(_onSubmitGuess);
    on<_SkipWord>(_onSkipWord);
    on<_VoteSkip>(_onVoteSkip);
    on<_EndGame>(_onEndGame);
    on<_SendChat>(_onSendChat);
    on<_RestartGame>(_onRestartGame);
    on<_LeaveGame>(_onLeaveGame);
    on<_SwitchToSolo>(_onSwitchToSolo);

    // UI & Timers
    on<_InputWordChanged>(_onInputWordChanged);
    on<_Tick>(_onTick);
    on<_DelayNextRoundFinished>(_onDelayNextRoundFinished);

    // Domain Socket Stream
    on<_GameEventReceived>(_onGameEventReceived);
  }

  final GetGuessDeckUseCase _getDeckUseCase;
  final SubmitGuessPracticeUseCase _submitPracticeUseCase;
  final ConnectGuessMatchmakeUseCase _connectMatchmakeUseCase;
  final ConnectGuessRoomUseCase _connectRoomUseCase;
  final ObserveGuessGameUseCase _observeGameUseCase;
  final DisconnectGuessUseCase _disconnectUseCase;
  final SubmitGuessWordUseCase _submitWordUseCase;
  final SubmitGuessSkipUseCase _submitSkipUseCase;
  final SubmitGuessVoteUseCase _submitVoteUseCase;
  final SubmitGuessEndUseCase _submitEndUseCase;
  final SubmitGuessChatUseCase _submitChatUseCase;
  final SubmitGuessReadyUseCase _submitReadyUseCase;
  final SubmitGuessStartUseCase _submitStartUseCase;
  final SubmitGuessRestartUseCase _submitRestartUseCase;
  final PracticeRepository _practiceRepository;

  StreamSubscription<dynamic>? _gameStreamSubscription;
  Timer? _countdownTimer;
  Timer? _autoHintTimer;
  Timer? _delayNextRoundTimer;
  bool _hadMultiplayer = false;

  static const int _autoHintIntervalSeconds = 12;
  static const int _revealDelayMs = 1800;

  // ─── Stream Subscription ──────────────────────────────────────────
  void _subscribeGameStream() {
    _gameStreamSubscription?.cancel();
    _gameStreamSubscription = _observeGameUseCase
        .execute(const EmptyInput())
        .listen((gameEvent) {
          add(WordGuessEvent.gameEventReceived(gameEvent));
        });
  }

  // ─── Solo Practice Handlers ───────────────────────────────────────
  FutureOr<void> _onStartPractice(
    _StartPractice event,
    Emitter<WordGuessState> emit,
  ) {
    final effectiveDifficulty = event.difficulty ?? state.difficulty;
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(
        state.copyWith(
          isLoading: true,
          mode: WordGuessGameMode.practice,
          topicId: event.topic,
          difficulty: effectiveDifficulty,
          myUid: event.uid ?? '',
          currentQuestionIndex: 0,
          practiceCorrectCount: 0,
          practiceEarnedXp: 0,
          inputWord: '',
          errorMessage: null,
          infoMessage: null,
        ),
      ),
      action: () async {
        final output = await _getDeckUseCase.execute(
          GetGuessDeckInput(
            topic: event.topic,
            uid: event.uid,
            count: event.count,
            difficulty: effectiveDifficulty,
          ),
        );

        final deck = output.deck;
        if (deck.words.isEmpty) {
          safeEmit(
            state.copyWith(
              isLoading: false,
              errorMessage: S.current.noPracticeQuestionsFound,
            ),
          );
          return;
        }

        final firstWord = deck.words.first;
        final initialRevealed = StringUtils.calculateInitialRevealedIndices(
          firstWord.en,
        );
        final masked = StringUtils.formatMaskedWord(
          firstWord.en,
          initialRevealed,
        );

        safeEmit(
          state.copyWith(
            isLoading: false,
            deck: deck,
            practiceSessionId: deck.practiceSessionId,
            currentQuestionIndex: 0,
            practiceRevealedIndices: initialRevealed.toList(),
            practiceMaskedWord: masked,
            autoHintSecondsLeft: _autoHintIntervalSeconds,
          ),
        );

        _startAutoHintTimer();
      },
      doOnError: (e) {
        safeEmit(
          state.copyWith(
            isLoading: false,
            errorMessage: S.current.errorLoadingPracticeQuestions('$e'),
          ),
        );
      },
    );
  }

  FutureOr<void> _onSubmitPracticeAnswer(
    _SubmitPracticeAnswer event,
    Emitter<WordGuessState> emit,
  ) {
    final currentWord = state.currentPracticeWord;
    if (currentWord == null ||
        state.isSubmitting ||
        state.isDelayingNextRound) {
      return null;
    }

    final answer = state.inputWord.trim().toLowerCase();
    if (answer.isEmpty) return null;

    final isCorrect = answer == currentWord.en.trim().toLowerCase();
    if (!isCorrect) {
      SoundManager.playWrong();
      safeEmit(
        state.copyWith(
          lastWrongGuess: answer,
          infoMessage: S.current.incorrectTryAgain,
          inputWord: '',
        ),
      );
      return null;
    }

    final streak = state.practiceCorrectCount + 1;
    SoundManager.playWordGuessSuccess(streak: streak);

    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(
        state.copyWith(
          isSubmitting: true,
          isDelayingNextRound: true,
          // Mở toàn bộ từ khi đoán đúng
          practiceMaskedWord: StringUtils.formatSpacedWord(currentWord.en),
          infoMessage: S.current.correctAddXp(5),
        ),
      ),
      action: () async {
        _stopAutoHintTimer();

        if (state.myUid.isNotEmpty && state.practiceSessionId.isNotEmpty) {
          final output = await _submitPracticeUseCase.execute(
            SubmitGuessPracticeInput(
              uid: state.myUid,
              sessionId: state.practiceSessionId,
              index: state.currentQuestionIndex,
              answer: answer,
            ),
          );
          final result = output.result;
          safeEmit(
            state.copyWith(
              lastPracticeResult: result,
              practiceEarnedXp: state.practiceEarnedXp + result.gainedXp,
            ),
          );
        }

        final currentWord = state.currentPracticeWord;
        final updatedHistory = currentWord != null
            ? [
                ...state.gameState.history.where(
                  (h) =>
                      h.word.toLowerCase().trim() !=
                      currentWord.en.toLowerCase().trim(),
                ),
                HistoryItem(
                  word: currentWord.en,
                  meaning: currentWord.vi,
                  solvedBy: state.myUid,
                  playerName: state.myName.isNotEmpty
                      ? state.myName
                      : S.current.you,
                  guess: answer,
                  isCorrect: true,
                ),
              ]
            : state.gameState.history;

        safeEmit(
          state.copyWith(
            gameState: state.gameState.copyWith(history: updatedHistory),
            isSubmitting: false,
            practiceCorrectCount: state.practiceCorrectCount + 1,
          ),
        );

        _delayNextRoundTimer?.cancel();
        _delayNextRoundTimer = Timer(
          const Duration(milliseconds: _revealDelayMs),
          () => add(const WordGuessEvent.delayNextRoundFinished()),
        );
      },
      doOnError: (e) {
        safeEmit(
          state.copyWith(
            isSubmitting: false,
            isDelayingNextRound: false,
            errorMessage: S.current.errorSubmittingAnswer('$e'),
          ),
        );
      },
    );
  }

  FutureOr<void> _onSkipPracticeQuestion(
    _SkipPracticeQuestion event,
    Emitter<WordGuessState> emit,
  ) {
    final currentWord = state.currentPracticeWord;
    if (currentWord == null || state.isDelayingNextRound) return null;

    _stopAutoHintTimer();

    if (state.myUid.isNotEmpty) {
      final wordKey = currentWord.id.startsWith('vocab_')
          ? currentWord.id
          : 'vocab_${currentWord.id}';
      final memory = SrsEngine.updateMemory(
        wordId: wordKey,
        correct: false,
        seconds: 12,
      );
      unawaited(
        _practiceRepository.submitProfile(
          uid: state.myUid,
          memory: memory,
        ),
      );
    }

    final updatedHistory = [
      ...state.gameState.history.where(
        (h) =>
            h.word.toLowerCase().trim() != currentWord.en.toLowerCase().trim(),
      ),
      HistoryItem(
        word: currentWord.en,
        meaning: currentWord.vi,
        skipped: true,
        isCorrect: false,
      ),
    ];

    safeEmit(
      state.copyWith(
        gameState: state.gameState.copyWith(history: updatedHistory),
        isDelayingNextRound: true,
        practiceMaskedWord: StringUtils.formatSpacedWord(currentWord.en),
        infoMessage: S.current.correctWordIs(currentWord.en),
        inputWord: '',
      ),
    );

    _delayNextRoundTimer?.cancel();
    _delayNextRoundTimer = Timer(
      const Duration(milliseconds: _revealDelayMs),
      () => add(const WordGuessEvent.delayNextRoundFinished()),
    );
  }

  FutureOr<void> _onDelayNextRoundFinished(
    _DelayNextRoundFinished event,
    Emitter<WordGuessState> emit,
  ) {
    final nextIndex = state.currentQuestionIndex + 1;
    final deck = state.deck;

    if (deck != null && nextIndex < deck.words.length) {
      final nextWord = deck.words[nextIndex];
      final initialRevealed = StringUtils.calculateInitialRevealedIndices(
        nextWord.en,
      );
      final masked = StringUtils.formatMaskedWord(nextWord.en, initialRevealed);

      safeEmit(
        state.copyWith(
          currentQuestionIndex: nextIndex,
          isDelayingNextRound: false,
          practiceRevealedIndices: initialRevealed.toList(),
          practiceMaskedWord: masked,
          inputWord: '',
          infoMessage: null,
          lastWrongGuess: null,
          autoHintSecondsLeft: _autoHintIntervalSeconds,
        ),
      );
      _startAutoHintTimer();
    } else {
      SoundManager.playWin();
      safeEmit(
        state.copyWith(
          currentQuestionIndex: nextIndex,
          isDelayingNextRound: false,
          inputWord: '',
          infoMessage: S.current.completedAllPracticeQuestions,
        ),
      );
    }
  }

  FutureOr<void> _onAutoHintTick(
    _AutoHintTick event,
    Emitter<WordGuessState> emit,
  ) {
    if (state.mode != WordGuessGameMode.practice || state.isDelayingNextRound) {
      return null;
    }

    final currentWord = state.currentPracticeWord;
    if (currentWord == null) return null;

    final wordLength = currentWord.en.length;
    final currentRevealed = state.practiceRevealedIndices.toSet();

    // Dừng khi chỉ còn 1 ký tự chưa mở
    if (currentRevealed.length >= wordLength - 1) {
      return null;
    }

    final secondsLeft = state.autoHintSecondsLeft - 1;
    if (secondsLeft <= 0) {
      // Tìm các vị trí chưa mở
      final unrevealed = <int>[];
      for (var i = 0; i < wordLength; i++) {
        if (!currentRevealed.contains(i)) {
          unrevealed.add(i);
        }
      }

      if (unrevealed.isNotEmpty) {
        final randomIndex = unrevealed[Random().nextInt(unrevealed.length)];
        currentRevealed.add(randomIndex);

        final masked = StringUtils.formatMaskedWord(
          currentWord.en,
          currentRevealed,
        );
        safeEmit(
          state.copyWith(
            practiceRevealedIndices: currentRevealed.toList(),
            practiceMaskedWord: masked,
            autoHintSecondsLeft: _autoHintIntervalSeconds,
          ),
        );
      }
    } else {
      safeEmit(state.copyWith(autoHintSecondsLeft: secondsLeft));
    }
  }

  // ─── Online Multiplayer Handlers ──────────────────────────────────
  FutureOr<void> _onStartOnlineMatchmake(
    _StartOnlineMatchmake event,
    Emitter<WordGuessState> emit,
  ) {
    _subscribeGameStream();
    final effectiveDifficulty = event.difficulty ?? state.difficulty;
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(
        state.copyWith(
          mode: WordGuessGameMode.matchmake,
          isLoading: true,
          isQueued: true,
          myUid: event.uid,
          myName: event.name,
          myAvatar: event.avatar ?? '',
          topicId: event.topic,
          difficulty: effectiveDifficulty,
          errorMessage: null,
        ),
      ),
      action: () async {
        await _connectMatchmakeUseCase.execute(
          ConnectGuessMatchmakeInput(
            uid: event.uid,
            name: event.name,
            topic: event.topic,
            avatar: event.avatar,
            token: event.token,
            difficulty: effectiveDifficulty,
          ),
        );
        safeEmit(state.copyWith(isLoading: false));
      },
      doOnError: (e) {
        safeEmit(
          state.copyWith(
            isLoading: false,
            isQueued: false,
            errorMessage: S.current.cannotConnectMatchmaking('$e'),
          ),
        );
      },
    );
  }

  FutureOr<void> _onCancelMatchmake(
    _CancelMatchmake event,
    Emitter<WordGuessState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      action: () async {
        await _disconnectUseCase.execute(const EmptyInput());
        safeEmit(
          state.copyWith(
            isQueued: false,
            mode: WordGuessGameMode.practice,
          ),
        );
      },
    );
  }

  FutureOr<void> _onJoinRoom(
    _JoinRoom event,
    Emitter<WordGuessState> emit,
  ) {
    _subscribeGameStream();
    final effectiveDifficulty = event.difficulty ?? state.difficulty;
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () {
        _hadMultiplayer = false;
        safeEmit(
          state.copyWith(
            mode: event.isMatchmaking
                ? WordGuessGameMode.matchmake
                : WordGuessGameMode.room,
            isLoading: true,
            myUid: event.uid,
            myName: event.name,
            myAvatar: event.avatar ?? '',
            roomCode: event.roomCode,
            difficulty: effectiveDifficulty,
            errorMessage: null,
            opponentLeftRivalName: null,
            gameState: const GameState(),
          ),
        );
      },
      action: () async {
        await _connectRoomUseCase.execute(
          ConnectGuessRoomInput(
            roomCode: event.roomCode,
            uid: event.uid,
            name: event.name,
            token: event.token,
            avatar: event.avatar,
            topic: state.topicId,
            difficulty: effectiveDifficulty,
            isMatchmaking: event.isMatchmaking,
          ),
        );
        safeEmit(state.copyWith(isLoading: false));
      },
      doOnError: (e) {
        safeEmit(
          state.copyWith(
            isLoading: false,
            errorMessage: S.current.cannotConnectRoom('$e'),
          ),
        );
      },
    );
  }

  FutureOr<void> _onToggleReady(
    _ToggleReady event,
    Emitter<WordGuessState> emit,
  ) async {
    await _submitReadyUseCase.execute(const EmptyInput());
  }

  FutureOr<void> _onStartGame(
    _StartGame event,
    Emitter<WordGuessState> emit,
  ) async {
    await _submitStartUseCase.execute(const EmptyInput());
  }

  FutureOr<void> _onUpdateConfig(
    _UpdateConfig event,
    Emitter<WordGuessState> emit,
  ) {
    // Chỉ cập nhật ở sảnh chờ phòng thường
  }

  FutureOr<void> _onSubmitGuess(
    _SubmitGuess event,
    Emitter<WordGuessState> emit,
  ) {
    final word = state.inputWord.trim().toLowerCase();
    if (word.isEmpty) return null;

    final sessionId = state.gameState.sessionId.isNotEmpty
        ? state.gameState.sessionId
        : (state.gameState.roomCode);
    final roundIndex =
        state.gameState.currentWordIndex ?? state.gameState.currentRound;

    _submitWordUseCase.execute(
      SubmitGuessWordInput(
        word: word,
        sessionId: sessionId,
        roundIndex: roundIndex,
      ),
    );

    safeEmit(state.copyWith(inputWord: ''));
  }

  FutureOr<void> _onSkipWord(
    _SkipWord event,
    Emitter<WordGuessState> emit,
  ) {
    final sessionId = state.gameState.sessionId.isNotEmpty
        ? state.gameState.sessionId
        : (state.gameState.roomCode);
    final roundIndex =
        state.gameState.currentWordIndex ?? state.gameState.currentRound;

    _submitSkipUseCase.execute(
      SubmitGuessSkipInput(
        sessionId: sessionId,
        roundIndex: roundIndex,
      ),
    );
  }

  FutureOr<void> _onVoteSkip(
    _VoteSkip event,
    Emitter<WordGuessState> emit,
  ) {
    final sessionId = state.gameState.sessionId.isNotEmpty
        ? state.gameState.sessionId
        : (state.gameState.roomCode);
    final roundIndex =
        state.gameState.currentWordIndex ?? state.gameState.currentRound;

    _submitVoteUseCase.execute(
      SubmitGuessVoteInput(
        proposalId: event.proposalId,
        agree: event.agree,
        sessionId: sessionId,
        roundIndex: roundIndex,
      ),
    );
  }

  FutureOr<void> _onEndGame(
    _EndGame event,
    Emitter<WordGuessState> emit,
  ) {
    final sessionId = state.gameState.sessionId.isNotEmpty
        ? state.gameState.sessionId
        : (state.gameState.roomCode);
    _submitEndUseCase.execute(
      SubmitGuessEndInput(sessionId: sessionId),
    );
  }

  FutureOr<void> _onSendChat(
    _SendChat event,
    Emitter<WordGuessState> emit,
  ) {
    if (event.text.trim().isEmpty) return null;
    _submitChatUseCase.execute(SubmitGuessChatInput(text: event.text));
  }

  FutureOr<void> _onRestartGame(
    _RestartGame event,
    Emitter<WordGuessState> emit,
  ) {
    final sessionId = state.gameState.sessionId.isNotEmpty
        ? state.gameState.sessionId
        : (state.gameState.roomCode);
    _submitRestartUseCase.execute(
      SubmitGuessRestartInput(sessionId: sessionId),
    );
  }

  FutureOr<void> _onLeaveGame(
    _LeaveGame event,
    Emitter<WordGuessState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      action: () async {
        _hadMultiplayer = false;
        _stopCountdownTimer();
        _stopAutoHintTimer();
        _delayNextRoundTimer?.cancel();
        _delayNextRoundTimer = null;
        await _disconnectUseCase.execute(const EmptyInput());
        safeEmit(
          state.copyWith(
            mode: WordGuessGameMode.practice,
            gameState: const GameState(),
            roomCode: null,
            solvedBannerWord: null,
            solvedBannerSolver: null,
            isSolvedByMe: false,
            isDelayingNextRound: false,
            inputWord: '',
            opponentLeftRivalName: null,
          ),
        );
      },
    );
  }

  FutureOr<void> _onSwitchToSolo(
    _SwitchToSolo event,
    Emitter<WordGuessState> emit,
  ) {
    _hadMultiplayer = false;
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(
        state.copyWith(
          isLoading: true,
          mode: WordGuessGameMode.practice,
          opponentLeftRivalName: null,
          currentQuestionIndex: 0,
          practiceCorrectCount: 0,
          practiceEarnedXp: 0,
          inputWord: '',
          errorMessage: null,
          infoMessage: null,
          gameState: const GameState(),
          roomCode: null,
          solvedBannerWord: null,
          solvedBannerSolver: null,
          isSolvedByMe: false,
          isDelayingNextRound: false,
        ),
      ),
      action: () async {
        _stopCountdownTimer();
        _stopAutoHintTimer();
        _delayNextRoundTimer?.cancel();
        _delayNextRoundTimer = null;
        await _disconnectUseCase.execute(const EmptyInput());

        final output = await _getDeckUseCase.execute(
          GetGuessDeckInput(
            topic: state.topicId,
            uid: state.myUid,
            difficulty: state.difficulty,
          ),
        );

        final deck = output.deck;
        if (deck.words.isEmpty) {
          safeEmit(
            state.copyWith(
              isLoading: false,
              errorMessage: S.current.noPracticeQuestionsFound,
            ),
          );
          return;
        }

        final firstWord = deck.words.first;
        final initialRevealed = StringUtils.calculateInitialRevealedIndices(
          firstWord.en,
        );
        final masked = StringUtils.formatMaskedWord(
          firstWord.en,
          initialRevealed,
        );

        safeEmit(
          state.copyWith(
            isLoading: false,
            deck: deck,
            practiceSessionId: deck.practiceSessionId,
            currentQuestionIndex: 0,
            practiceRevealedIndices: initialRevealed.toList(),
            practiceMaskedWord: masked,
            roundTimeLeft: 300,
            autoHintSecondsLeft: _autoHintIntervalSeconds,
            opponentLeftRivalName: null,
          ),
        );

        _startCountdownTimer();
        _startAutoHintTimer();
      },
      doOnError: (e) {
        safeEmit(
          state.copyWith(
            isLoading: false,
            errorMessage: S.current.errorLoadingPracticeQuestions('$e'),
          ),
        );
      },
    );
  }

  // ─── UI & Tick Handlers ───────────────────────────────────────────
  FutureOr<void> _onInputWordChanged(
    _InputWordChanged event,
    Emitter<WordGuessState> emit,
  ) {
    safeEmit(state.copyWith(inputWord: event.word));
  }

  FutureOr<void> _onTick(
    _Tick event,
    Emitter<WordGuessState> emit,
  ) {
    if (state.roundTimeLeft > 0) {
      safeEmit(state.copyWith(roundTimeLeft: state.roundTimeLeft - 1));
    }
  }

  // ─── Game Stream Dispatcher ───────────────────────────────────────
  bool _isCurrentWordGuessEvent(String? eventSessionId) {
    if (state.mode == WordGuessGameMode.practice) return true;
    final currentSessionId = state.gameState.sessionId;
    if (eventSessionId != null &&
        eventSessionId.isNotEmpty &&
        currentSessionId.isNotEmpty &&
        eventSessionId != currentSessionId) {
      return false;
    }
    return true;
  }

  FutureOr<void> _onGameEventReceived(
    _GameEventReceived event,
    Emitter<WordGuessState> emit,
  ) {
    event.event.map(
      connected: (e) {
        final onlinePlayers = e.state.players.where((p) => p.isOnline).toList();
        if (onlinePlayers.length >= 2) {
          _hadMultiplayer = true;
        }
        final effectiveMyUid = e.myUid.isNotEmpty
            ? e.myUid
            : (state.myUid.isNotEmpty ? state.myUid : '');
        safeEmit(
          state.copyWith(
            myUid: effectiveMyUid,
            gameState: e.state.copyWith(myUid: effectiveMyUid),
            roundTimeLeft: e.state.timeLeft,
            connectionState: SocketConnectionState.connected,
          ),
        );
        if (e.state.status == 'playing' && e.state.timeLeft > 0) {
          _startCountdownTimer();
        } else {
          _stopCountdownTimer();
        }
      },
      stateUpdated: (e) {
        // Lọc sạch lịch sử để không bị trùng lặp từ
        final seenWords = <String>{};
        final dedupedHistory = <HistoryItem>[];
        for (final item in e.state.history) {
          final key = item.word.toLowerCase().trim();
          if (key.isNotEmpty && seenWords.add(key)) {
            dedupedHistory.add(item);
          }
        }

        final effectiveMyUid = state.myUid.isNotEmpty
            ? state.myUid
            : (e.state.myUid.isNotEmpty ? e.state.myUid : '');

        final isRoundResult =
            e.state.status == 'round_result' || e.state.result != null;
        final isPlaying = e.state.status == 'playing';
        final isLobby = e.state.status == 'lobby';

        var solvedBannerWord = state.solvedBannerWord;
        var solvedBannerSolver = state.solvedBannerSolver;
        var isSolvedByMe = state.isSolvedByMe;
        var isDelaying = state.isDelayingNextRound;
        var finalWordInfo = e.state.wordInfo;

        if (isLobby || isPlaying) {
          // KHI SERVER Ở TRẠNG THÁI PLAYING HOẶC LOBBY:
          // Chuyển sang câu hỏi mới hoặc sảnh mới: Xóa ngay trạng thái vòng cũ
          solvedBannerWord = null;
          solvedBannerSolver = null;
          isSolvedByMe = false;
          isDelaying = false;
        } else if (isRoundResult) {
          isDelaying = true;
          if (e.state.result != null) {
            final res = e.state.result!;
            final reason = res['reason']?.toString();
            if (reason == 'solved') {
              final word =
                  res['en']?.toString() ??
                  res['word']?.toString() ??
                  e.state.roundResultFullWord;
              final sUid = res['solvedByUid']?.toString();
              final sName =
                  res['solvedBy']?.toString() ??
                  (sUid != null && sUid == effectiveMyUid
                      ? state.myName
                      : S.current.humanOpponent);
              final byMe =
                  (sUid != null && sUid == effectiveMyUid) ||
                  (sName == state.myName && state.myName.isNotEmpty);

              solvedBannerWord = word;
              solvedBannerSolver = sName;
              isSolvedByMe = byMe;
            }
          }

          // Mở toàn bộ chữ cái (đáp án) vào ô chữ
          final targetWord =
              solvedBannerWord ??
              e.state.roundResultFullWord ??
              finalWordInfo?.en ??
              state.gameState.wordInfo?.en;
          if (targetWord != null && targetWord.isNotEmpty) {
            finalWordInfo = (finalWordInfo ?? const WordInfo()).copyWith(
              masked: targetWord.toUpperCase(),
              en: targetWord,
              vi:
                  e.state.roundResultMeaning ??
                  finalWordInfo?.vi ??
                  state.gameState.wordInfo?.vi ??
                  '',
            );
          }
        }

        final cleanedState = e.state.copyWith(
          history: dedupedHistory,
          myUid: effectiveMyUid,
          roomCode: e.state.roomCode.isNotEmpty
              ? e.state.roomCode
              : state.gameState.roomCode,
          sessionId: e.state.sessionId.isNotEmpty
              ? e.state.sessionId
              : state.gameState.sessionId,
          wordInfo: finalWordInfo,
        );

        final onlinePlayers = e.state.players.where((p) => p.isOnline).toList();
        if (onlinePlayers.length >= 2) {
          _hadMultiplayer = true;
        } else if (_hadMultiplayer &&
            onlinePlayers.length == 1 &&
            e.state.status != 'finished' &&
            state.opponentLeftRivalName == null) {
          final rival = e.state.players
              .where((p) => p.uid != effectiveMyUid)
              .firstOrNull;
          safeEmit(
            state.copyWith(
              opponentLeftRivalName: rival?.name.isNotEmpty == true
                  ? rival!.name
                  : S.current.humanOpponent,
            ),
          );
        }

        safeEmit(
          state.copyWith(
            myUid: effectiveMyUid,
            gameState: cleanedState,
            roundTimeLeft: e.state.timeLeft,
            isDelayingNextRound: isDelaying,
            solvedBannerWord: solvedBannerWord,
            solvedBannerSolver: solvedBannerSolver,
            isSolvedByMe: isSolvedByMe,
            inputWord: isPlaying ? '' : state.inputWord,
          ),
        );

        // Khi ở sảnh chờ ván mới (Rematch Lobby): Tự động đồng bộ Ready & Start
        if (isLobby && state.mode != WordGuessGameMode.practice) {
          final me = cleanedState.players
              .where((p) => p.uid == effectiveMyUid)
              .firstOrNull;
          final isHost = me?.isHost ?? false;

          if (!isHost && me != null && !me.isReady) {
            // Khách tự động Ready để chủ phòng Web/Mobile bắt đầu ngay lập tức
            unawaited(_submitReadyUseCase.execute(const EmptyInput()));
          } else if (isHost) {
            final otherGuests = cleanedState.players
                .where((p) => !p.isHost)
                .toList();
            final allGuestsReady =
                otherGuests.isNotEmpty && otherGuests.every((p) => p.isReady);
            if (allGuestsReady) {
              // Chủ phòng tự động bắt đầu trận khi mọi người đã sẵn sàng
              unawaited(_submitStartUseCase.execute(const EmptyInput()));
            }
          }
        }

        if (e.state.status == 'playing' && e.state.timeLeft > 0) {
          _startCountdownTimer();
        } else {
          _stopCountdownTimer();
        }
      },
      wordHint: (e) {
        if (!_isCurrentWordGuessEvent(e.sessionId)) return;
        final currentWordInfo = state.gameState.wordInfo;
        if (currentWordInfo != null) {
          safeEmit(
            state.copyWith(
              gameState: state.gameState.copyWith(
                wordInfo: currentWordInfo.copyWith(masked: e.masked),
                currentWordIndex: e.index,
              ),
            ),
          );
        }
      },
      wordPhonetic: (e) {
        if (!_isCurrentWordGuessEvent(e.sessionId)) return;
        final currentWordInfo = state.gameState.wordInfo;
        if (currentWordInfo != null) {
          safeEmit(
            state.copyWith(
              gameState: state.gameState.copyWith(
                wordInfo: currentWordInfo.copyWith(phonetic: e.phonetic),
                currentWordIndex: e.index,
              ),
            ),
          );
        }
      },
      wordSolved: (e) {
        if (!_isCurrentWordGuessEvent(e.sessionId)) return;
        final currentWordInfo = state.gameState.wordInfo;
        final solvedWord = e.word;
        final solvedMeaning = e.meaning;
        final historyItem = e.historyItem;

        // Cập nhật wordInfo: mở toàn bộ chữ cái (đáp án) vào ô chữ NGAY TỨC THÌ
        final updatedWordInfo = (currentWordInfo ?? const WordInfo()).copyWith(
          masked: solvedWord.toUpperCase(),
          vi: solvedMeaning.isNotEmpty
              ? solvedMeaning
              : (currentWordInfo?.vi ?? ''),
          en: solvedWord,
        );

        final effectiveMyUid = state.myUid.isNotEmpty
            ? state.myUid
            : state.gameState.myUid;

        // Xác định người giải
        final solverUid = historyItem?.solvedBy ?? historyItem?.playerUid;
        final solverName =
            (historyItem?.playerName != null &&
                historyItem!.playerName.isNotEmpty)
            ? historyItem.playerName
            : (state.gameState.players
                      .where((p) => p.uid == solverUid)
                      .firstOrNull
                      ?.name ??
                  (solverUid == effectiveMyUid
                      ? state.myName
                      : S.current.humanOpponent));

        final isMySolve =
            (solverUid != null && solverUid == effectiveMyUid) ||
            (solverName == state.myName && state.myName.isNotEmpty);

        if (isMySolve) {
          final myFound =
              (state.gameState.players
                      .where((p) => p.uid == effectiveMyUid)
                      .firstOrNull
                      ?.foundCount ??
                  0) +
              1;
          SoundManager.playWordGuessSuccess(streak: myFound);
        }

        // Cập nhật điểm người chơi
        final updatedPlayers = state.gameState.players.map((p) {
          final isThisPlayer =
              (solverUid != null &&
                  solverUid.isNotEmpty &&
                  p.uid == solverUid) ||
              p.name == solverName;
          if (isThisPlayer) {
            return p.copyWith(
              score: p.score + 1,
              foundCount: p.foundCount + 1,
            );
          }
          return p;
        }).toList();

        // Cập nhật lịch sử đoán với item đoán đúng (tránh trùng lặp)
        final resolvedHistoryItem =
            historyItem ??
            HistoryItem(
              word: solvedWord,
              meaning: solvedMeaning,
              solvedBy: solverUid ?? '',
              playerName: solverName,
              guess: solvedWord,
              isCorrect: true,
            );

        final alreadyExists = state.gameState.history.any(
          (h) => h.word.toLowerCase().trim() == solvedWord.toLowerCase().trim(),
        );

        final updatedHistory = alreadyExists
            ? state.gameState.history
            : [
                ...state.gameState.history,
                resolvedHistoryItem,
              ];

        _stopCountdownTimer();

        // Cập nhật State tức thì: set status = 'round_result' và result
        // để UI phản ứng ngay trong microtask tick đầu tiên
        safeEmit(
          state.copyWith(
            gameState: state.gameState.copyWith(
              status: 'round_result',
              wordInfo: updatedWordInfo,
              players: updatedPlayers,
              history: updatedHistory,
              foundCount: state.gameState.foundCount + 1,
              currentWordIndex: e.index,
              result: {
                'reason': 'solved',
                'word': solvedWord,
                'en': solvedWord,
                'vi': solvedMeaning,
                'solvedBy': solverName,
                'solvedByUid': solverUid,
              },
            ),
            isDelayingNextRound: true,
            solvedBannerWord: solvedWord,
            solvedBannerSolver: solverName,
            isSolvedByMe: isMySolve,
            inputWord: '',
            infoMessage: isMySolve
                ? S.current.opponentGuessedFirstScore(solverName)
                : S.current.opponentGuessedFirstNext(solverName),
          ),
        );
      },
      guessAttempt: (e) {
        if (!e.isCorrect) {
          SoundManager.playWrong();
          safeEmit(
            state.copyWith(
              lastWrongGuess: e.word,
              infoMessage: e.message ?? S.current.wordIncorrect,
            ),
          );
        }
      },
      chat: (e) {
        safeEmit(
          state.copyWith(
            chatMessages: [
              ...state.chatMessages,
              '${e.senderName ?? e.senderUid}: ${e.text}',
            ],
          ),
        );
      },
      chatBlocked: (e) {
        safeEmit(
          state.copyWith(
            errorMessage: S.current.messageBlocked(e.reason),
          ),
        );
      },
      proposalClosed: (e) {
        safeEmit(
          state.copyWith(
            gameState: state.gameState.copyWith(activeProposal: null),
            infoMessage: S.current.skipVoteEnded(e.reason),
          ),
        );
      },
      sessionReward: (e) {
        safeEmit(
          state.copyWith(
            lastPracticeResult: e.reward,
            infoMessage: S.current.rewardReceivedXp(e.reward?.gainedXp ?? 0),
          ),
        );
      },
      matched: (e) {
        SoundManager.playWin();
        safeEmit(
          state.copyWith(
            isQueued: false,
            mode: WordGuessGameMode.matchmake,
            matchInfo: e.matchInfo,
            roomCode: e.matchInfo.roomCode,
          ),
        );
        // Tự động kết nối vào phòng sau khi ghép đối thủ thành công
        add(
          WordGuessEvent.joinRoom(
            roomCode: e.matchInfo.roomCode,
            uid: state.myUid,
            name: state.myName,
            avatar: state.myAvatar,
            isMatchmaking: true,
          ),
        );
      },
      queued: (e) {
        safeEmit(state.copyWith(isQueued: true));
      },
      connection: (e) {
        safeEmit(state.copyWith(connectionState: e.state));
      },
      playerLeft: (e) {
        if (e.uid != state.myUid &&
            state.gameState.status != 'finished' &&
            state.opponentLeftRivalName == null) {
          safeEmit(
            state.copyWith(
              opponentLeftRivalName: e.name.isNotEmpty
                  ? e.name
                  : S.current.humanOpponent,
            ),
          );
        }
      },
      error: (e) {
        safeEmit(state.copyWith(errorMessage: e.message));
      },
    );
  }

  void _startCountdownTimer() {
    _countdownTimer?.cancel();
    _countdownTimer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => add(const WordGuessEvent.tick()),
    );
  }

  void _startAutoHintTimer() {
    _autoHintTimer?.cancel();
    _autoHintTimer = Timer.periodic(
      const Duration(seconds: 1),
      (_) => add(const WordGuessEvent.autoHintTick()),
    );
  }

  void _stopAutoHintTimer() {
    _autoHintTimer?.cancel();
    _autoHintTimer = null;
  }

  void _stopCountdownTimer() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
  }

  @override
  Future<void> close() {
    _gameStreamSubscription?.cancel();
    _countdownTimer?.cancel();
    _autoHintTimer?.cancel();
    _delayNextRoundTimer?.cancel();
    return super.close();
  }
}
