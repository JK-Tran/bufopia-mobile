import 'dart:async';
import 'dart:math';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/vocabulary/data/mapper/battle_question_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/models/battle_question_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_deck.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_question.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_reward.dart';
import 'package:bufopia/features/vocabulary/domain/entities/match_record.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_profile.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/get_battle_deck_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/submit_battle_reward_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/submit_match_result_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/submit_word_profiles_use_case.dart';
import 'package:bufopia/shared/services/device/device_uid_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/socket_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'vocabulary_bloc.freezed.dart';
part 'vocabulary_event.dart';
part 'vocabulary_state.dart';

@injectable
class VocabularyBloc extends BaseBloc<VocabularyEvent, VocabularyState> {
  VocabularyBloc(
    this._getBattleDeckUseCase,
    this._submitMatchResultUseCase,
    this._submitBattleRewardUseCase,
    this._submitWordProfilesUseCase,
    this._deviceUidService,
    this._socketService,
    this._questionMapper,
  ) : super(const VocabularyState()) {
    on<_InitDeck>(_onInitDeck);
    on<_SelectAnswer>(_onSelectAnswer);
    on<_Tick>(_onTick);
    on<_NextQuestion>(_onNextQuestion);
    on<_BotAnswer>(_onBotAnswer);
    on<_FinishGame>(_onFinishGame);
    on<_RestartGame>(_onRestartGame);
    on<_SocketConnected>(_onSocketConnected);
    on<_SocketPlayerJoined>(_onSocketPlayerJoined);
    on<_SocketMatchStart>(_onSocketMatchStart);
    on<_SocketSyncState>(_onSocketSyncState);
    on<_SocketAnswerResult>(_onSocketAnswerResult);
    on<_SocketRoundTimeout>(_onSocketRoundTimeout);
    on<_SocketNextRound>(_onSocketNextRound);
    on<_SocketMatchFinished>(_onSocketMatchFinished);
    on<_SocketOpponentAnswer>(_onSocketOpponentAnswer);
    on<_SocketRoundSync>(_onSocketRoundSync);
    on<_SocketOpponentLeft>(_onSocketOpponentLeft);
  }

  final GetBattleDeckUseCase _getBattleDeckUseCase;
  final SubmitMatchResultUseCase _submitMatchResultUseCase;
  final SubmitBattleRewardUseCase _submitBattleRewardUseCase;
  final SubmitWordProfilesUseCase _submitWordProfilesUseCase;
  final DeviceUidService _deviceUidService;
  final SocketService _socketService;
  final BattleQuestionDataMapper _questionMapper;

  Timer? _countdownTimer;
  Timer? _botTimer;
  Timer? _nextRoundTimer;
  StreamSubscription<SocketEvent>? _socketSubscription;
  final Random _random = Random();
  int _localRoundStartTime = 0;

  @override
  Future<void> close() async {
    _countdownTimer?.cancel();
    _botTimer?.cancel();
    _nextRoundTimer?.cancel();
    await _socketSubscription?.cancel();
    _socketSubscription = null;
    if (!state.isBotOpponent && state.roomCode != null) {
      if (_socketService.isConnected) {
        _socketService.sendLeave();
      }
      await _socketService.disconnect();
    }
    return super.close();
  }

  FutureOr<void> _onInitDeck(
    _InitDeck event,
    Emitter<VocabularyState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      action: () async {
        _countdownTimer?.cancel();
        _botTimer?.cancel();
        _nextRoundTimer?.cancel();
        await _socketSubscription?.cancel();
        _socketSubscription = null;

        emit(
          state.copyWith(
            isLoading: true,
            errorMessage: null,
            reward: null,
            isSavingReward: false,
            roomCode: event.roomCode,
            opponentName: event.initialOpponentName ?? state.opponentName,
            opponentAvatar: event.initialOpponentAvatar ?? state.opponentAvatar,
            isBotOpponent: event.isBotOpponent,
            isOpponentLeft: false,
            opponentLeftMessage: null,
            isGameOver: false,
          ),
        );

        final uid = event.uid ?? await _deviceUidService.getDeviceUid();

        // 1. Chế độ Đấu Online (Dùng Backend làm Single Source of Truth)
        if (!event.isBotOpponent && event.roomCode != null) {
          emit(
            state.copyWith(
              isWaitingForReady: true,
              currentUid: uid,
            ),
          );

          await _socketService.connectRoom(
            roomCode: event.roomCode!,
            uid: uid,
          );

          if (isClosed) {
            _socketService.disconnect();
            return;
          }

          _socketSubscription = _socketService.eventStream.listen((sEvent) {
            if (isClosed) return;
            switch (sEvent) {
              case final RoomConnectedEvent e:
                add(
                  VocabularyEvent.socketConnected(
                    playerIndex: e.playerIndex,
                    rivalName: e.rivalName,
                    rivalAvatar: e.rivalAvatar,
                  ),
                );
              case final RoomPlayerJoinedEvent e:
                add(
                  VocabularyEvent.socketPlayerJoined(
                    name: e.name,
                    avatar: e.avatar,
                  ),
                );
              case final RoomMatchStartEvent e:
                add(
                  VocabularyEvent.socketMatchStart(
                    rawDeck: e.deck,
                    playerIndex: e.playerIndex,
                    rivalName: e.rivalName,
                    rivalAvatar: e.rivalAvatar,
                    matchRound: e.matchRound,
                  ),
                );
              case final RoomSyncStateEvent e:
                add(
                  VocabularyEvent.socketSyncState(
                    roundIndex: e.roundIndex,
                    startedAt: e.startedAt,
                    scores: e.scores,
                    streaks: e.streaks,
                  ),
                );
              case final RoomAnswerResultEvent e:
                add(
                  VocabularyEvent.socketAnswerResult(
                    playerIndex: e.playerIndex,
                    optionId: e.optionId,
                    isCorrect: e.isCorrect,
                    scores: e.scores,
                    revealTime: e.revealTime,
                  ),
                );
              case final RoomRoundTimeoutEvent _:
                add(const VocabularyEvent.socketRoundTimeout());
              case final RoomNextRoundEvent e:
                add(
                  VocabularyEvent.socketNextRound(
                    roundIndex: e.roundIndex,
                    startedAt: e.startedAt,
                    scores: e.scores,
                  ),
                );
              case final RoomMatchFinishedEvent e:
                add(
                  VocabularyEvent.socketMatchFinished(
                    winner: e.winner,
                    scores: e.scores,
                  ),
                );
              case RoomPlayerLeftEvent _:
                add(const VocabularyEvent.socketOpponentLeft());
              default:
                break;
            }
          });

          // Bộ đề online được cung cấp trực tiếp qua RoomMatchStartEvent
          return;
        }

        // 2. Chế độ Chơi với Bot (Offline)
        final output = await _getBattleDeckUseCase.execute(
          GetBattleDeckInput(
            topic: event.topic,
            uid: uid,
          ),
        );

        final deck = output.deck;
        final questions = deck.deck;

        if (questions.isEmpty) {
          emit(
            state.copyWith(
              isLoading: false,
              errorMessage: 'Không thể tải bộ câu hỏi từ máy chủ',
            ),
          );
          return;
        }

        final initialOptionsP1 = _shuffleOptions(questions[0]);
        final initialOptionsP2 = _shuffleOptions(questions[0]);

        emit(
          state.copyWith(
            isLoading: false,
            deckEntity: deck,
            questions: questions,
            currentQuestionIndex: 0,
            player1Score: 0,
            player2Score: 0,
            correctCountP1: 0,
            remainingSeconds: 10,
            isRoundLocked: false,
            selectedWordP1: null,
            selectedWordP2: null,
            isGameOver: false,
            optionsP1: initialOptionsP1,
            optionsP2: initialOptionsP2,
            isBotOpponent: event.isBotOpponent,
            topic: event.topic,
            currentUid: uid,
            answersP1: const {},
          ),
        );

        _startRoundTimer();
        _scheduleBotAction();
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: e.toString(),
          ),
        );
      },
    );
  }

  void _onSelectAnswer(
    _SelectAnswer event,
    Emitter<VocabularyState> emit,
  ) {
    if (state.isRoundLocked || state.isGameOver || state.questions.isEmpty) {
      return;
    }

    final currentQ = state.currentQuestion;
    if (currentQ == null) return;

    // 1. Chế độ Đấu Online (Gửi optionId lên Backend theo quy tắc SSOT)
    if (!state.isBotOpponent && event.isPlayer1) {
      final selectedOpt = currentQ.options.firstWhere(
        (o) => o.en == event.selectedWord || o.vi == event.selectedWord,
        orElse: () => currentQ.options.first,
      );

      _socketService.sendMatchAnswer(
        matchRound: state.matchRound,
        roundIndex: state.currentQuestionIndex,
        optionId: selectedOpt.id,
      );

      emit(
        state.copyWith(
          selectedWordP1: event.selectedWord,
          selectedOptionIdP1: selectedOpt.id,
          isRoundLocked: true,
        ),
      );
      return;
    }

    // 2. Chế độ Chơi với Bot (Offline)
    final isCorrect =
        event.selectedWord == currentQ.en || event.selectedWord == currentQ.vi;

    if (event.isPlayer1) {
      final updatedAnswers = Map<String, bool>.from(state.answersP1);
      if (updatedAnswers[currentQ.id] != true) {
        updatedAnswers[currentQ.id] = isCorrect;
      }

      emit(
        state.copyWith(
          selectedWordP1: event.selectedWord,
          answersP1: updatedAnswers,
        ),
      );
      if (isCorrect) {
        _countdownTimer?.cancel();
        _botTimer?.cancel();
        emit(
          state.copyWith(
            isRoundLocked: true,
            player1Score: state.player1Score + 100,
            correctCountP1: state.correctCountP1 + 1,
          ),
        );
        _scheduleNextRound();
      }
    } else {
      emit(state.copyWith(selectedWordP2: event.selectedWord));
      if (isCorrect) {
        _countdownTimer?.cancel();
        _botTimer?.cancel();
        emit(
          state.copyWith(
            isRoundLocked: true,
            player2Score: state.player2Score + 100,
          ),
        );
        _scheduleNextRound();
      }
    }
  }

  void _onTick(
    _Tick event,
    Emitter<VocabularyState> emit,
  ) {
    if (state.isRoundLocked || state.isGameOver) {
      _countdownTimer?.cancel();
      return;
    }

    if (!state.isBotOpponent) {
      final elapsedMs =
          DateTime.now().millisecondsSinceEpoch - _localRoundStartTime;
      final remainingSeconds = ((12000 - elapsedMs) / 1000).ceil().clamp(0, 12);
      if (remainingSeconds != state.remainingSeconds) {
        emit(state.copyWith(remainingSeconds: remainingSeconds));
      }
      if (remainingSeconds <= 0) {
        emit(state.copyWith(remainingSeconds: 0, isRoundLocked: true));
        _countdownTimer?.cancel();
      }
      return;
    }

    final elapsedMs =
        DateTime.now().millisecondsSinceEpoch - _localRoundStartTime;
    final remainingSeconds = ((10000 - elapsedMs) / 1000).ceil().clamp(0, 10);
    if (remainingSeconds != state.remainingSeconds) {
      emit(state.copyWith(remainingSeconds: remainingSeconds));
    }
    if (remainingSeconds <= 0) {
      emit(state.copyWith(remainingSeconds: 0, isRoundLocked: true));
      _countdownTimer?.cancel();
      _botTimer?.cancel();
      _scheduleNextRound();
    }
  }

  void _onNextQuestion(
    _NextQuestion event,
    Emitter<VocabularyState> emit,
  ) {
    _countdownTimer?.cancel();
    _botTimer?.cancel();

    final nextIndex = state.currentQuestionIndex + 1;
    if (nextIndex >= state.questions.length) {
      add(const VocabularyEvent.finishGame());
      return;
    }

    // Không gửi next_round — BE tự quản lý flow và gửi RoomNextRoundEvent.

    final nextQuestion = state.questions[nextIndex];
    final optionsP1 = _shuffleOptions(nextQuestion);
    final optionsP2 = _shuffleOptions(nextQuestion);

    emit(
      state.copyWith(
        currentQuestionIndex: nextIndex,
        remainingSeconds: 10,
        isRoundLocked: false,
        selectedWordP1: null,
        selectedWordP2: null,
        optionsP1: optionsP1,
        optionsP2: optionsP2,
      ),
    );

    _startRoundTimer();
    _scheduleBotAction();
  }

  void _onBotAnswer(
    _BotAnswer event,
    Emitter<VocabularyState> emit,
  ) {
    if (state.isRoundLocked || state.isGameOver) return;
    final currentQ = state.currentQuestion;
    if (currentQ == null || state.optionsP2.isEmpty) return;

    final shouldPickCorrect = _random.nextDouble() < 0.7;
    String chosenWord;

    if (shouldPickCorrect) {
      chosenWord = currentQ.en;
    } else {
      final wrongOptions = state.optionsP2
          .where((w) => w != currentQ.en)
          .toList();
      chosenWord = wrongOptions.isNotEmpty
          ? wrongOptions[_random.nextInt(wrongOptions.length)]
          : state.optionsP2.first;
    }

    add(
      VocabularyEvent.selectAnswer(
        isPlayer1: false,
        selectedWord: chosenWord,
      ),
    );
  }

  FutureOr<void> _onFinishGame(
    _FinishGame event,
    Emitter<VocabularyState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      action: () async {
        _countdownTimer?.cancel();
        _botTimer?.cancel();

        emit(
          state.copyWith(
            isGameOver: true,
            isRoundLocked: true,
            isSavingReward: true,
          ),
        );

        final uid = state.currentUid ?? await _deviceUidService.getDeviceUid();
        final isWin = state.player1Score >= state.player2Score;

        // 1. Gọi API nhận thưởng (XP, Level, Streak, Win Streak)
        final rewardOutput = await _submitBattleRewardUseCase.execute(
          SubmitBattleRewardInput(
            uid: uid,
            isWin: isWin,
            correctCount: state.correctCountP1,
            points: state.player1Score,
          ),
        );

        // 2. Ghi nhận lịch sử trận đấu vào database
        final matchId = 'match_${DateTime.now().millisecondsSinceEpoch}_$uid';
        await _submitMatchResultUseCase.execute(
          SubmitMatchResultInput(
            MatchRecord(
              id: matchId,
              uid: uid,
              topicId: state.topic,
              scores: [state.player1Score, state.player2Score],
              winner: isWin ? uid : (state.isBotOpponent ? 'bot' : 'player_2'),
              matchData: {
                'mode': state.isBotOpponent ? 'bot' : 'local_pvp',
                'correctCount': state.correctCountP1,
                'totalRounds': state.questions.length,
              },
              createdAt: DateTime.now(),
            ),
          ),
        );

        // 3. Đồng bộ tiến trình học SRS của 15 từ vựng (Phase 3)
        final nowMs = DateTime.now().millisecondsSinceEpoch;
        final profiles = state.questions.map((q) {
          final isP1Correct = state.answersP1[q.id] == true;
          final interval = isP1Correct ? 6 : 1;
          return WordProfile(
            wordId: q.id,
            familiarity: isP1Correct ? 3 : 1,
            interval: interval,
            easeFactor: isP1Correct ? 2.6 : 2.4,
            nextReview: nowMs + (interval * 24 * 60 * 60 * 1000),
            lapses: isP1Correct ? 0 : 1,
          );
        }).toList();

        await _submitWordProfilesUseCase.execute(
          SubmitWordProfilesInput(
            uid: uid,
            profiles: profiles,
          ),
        );

        emit(
          state.copyWith(
            isSavingReward: false,
            reward: rewardOutput.reward,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isSavingReward: false,
            errorMessage: e.toString(),
          ),
        );
      },
    );
  }

  void _onRestartGame(
    _RestartGame event,
    Emitter<VocabularyState> emit,
  ) {
    add(
      VocabularyEvent.initDeck(
        topic: state.topic,
        uid: state.currentUid,
        roomCode: state.roomCode,
        isBotOpponent: state.isBotOpponent,
        initialOpponentName: state.opponentName,
        initialOpponentAvatar: state.opponentAvatar,
      ),
    );
  }

  void _onSocketConnected(
    _SocketConnected event,
    Emitter<VocabularyState> emit,
  ) {
    emit(
      state.copyWith(
        playerIndex: event.playerIndex,
        opponentName: event.rivalName.isNotEmpty
            ? event.rivalName
            : state.opponentName,
        opponentAvatar: event.rivalAvatar.isNotEmpty
            ? event.rivalAvatar
            : state.opponentAvatar,
      ),
    );
  }

  void _onSocketPlayerJoined(
    _SocketPlayerJoined event,
    Emitter<VocabularyState> emit,
  ) {
    emit(
      state.copyWith(
        opponentName: event.name.isNotEmpty ? event.name : state.opponentName,
        opponentAvatar: event.avatar.isNotEmpty
            ? event.avatar
            : state.opponentAvatar,
      ),
    );
  }

  void _onSocketMatchStart(
    _SocketMatchStart event,
    Emitter<VocabularyState> emit,
  ) {
    try {
      final questions = event.rawDeck
          .map(
            (item) => _questionMapper.mapToEntity(
              BattleQuestionData.fromJson(
                Map<String, dynamic>.from(item as Map),
              ),
            ),
          )
          .toList();

      emit(
        state.copyWith(
          isLoading: false,
          questions: questions,
          playerIndex: event.playerIndex,
          matchRound: event.matchRound,
          opponentName: event.rivalName.isNotEmpty
              ? event.rivalName
              : state.opponentName,
          opponentAvatar: event.rivalAvatar.isNotEmpty
              ? event.rivalAvatar
              : state.opponentAvatar,
          isWaitingForReady: true,
          currentQuestionIndex: 0,
          player1Score: 0,
          player2Score: 0,
          correctCountP1: 0,
          isGameOver: false,
          errorMessage: null,
        ),
      );

      // Gửi ngay bản tin sẵn sàng lên Backend theo Handshake protocol
      _socketService.sendReady(matchRound: event.matchRound);
    } on Object catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          errorMessage: 'Lỗi đồng bộ bộ đề từ máy chủ: $e',
        ),
      );
    }
  }

  void _onSocketSyncState(
    _SocketSyncState event,
    Emitter<VocabularyState> emit,
  ) {
    if (state.questions.isEmpty) return;

    final roundIdx = event.roundIndex;
    final currentQ = roundIdx < state.questions.length
        ? state.questions[roundIdx]
        : null;
    final options = currentQ != null
        ? currentQ.options.map((o) => o.en.isNotEmpty ? o.en : o.vi).toList()
        : <String>[];

    final myScore = event.scores.length > state.playerIndex
        ? event.scores[state.playerIndex]
        : 0;
    final rivalScore = event.scores.length > (1 - state.playerIndex)
        ? event.scores[1 - state.playerIndex]
        : 0;

    emit(
      state.copyWith(
        isWaitingForReady: false,
        isRoundLocked: false,
        startedAt: event.startedAt,
        currentQuestionIndex: roundIdx,
        player1Score: myScore,
        player2Score: rivalScore,
        optionsP1: options,
        optionsP2: options,
        selectedWordP1: null,
        selectedWordP2: null,
        selectedOptionIdP1: null,
        selectedOptionIdP2: null,
        isP1Correct: null,
        isP2Correct: null,
        remainingSeconds: 12,
      ),
    );

    _startRoundTimer();
  }

  void _onSocketAnswerResult(
    _SocketAnswerResult event,
    Emitter<VocabularyState> emit,
  ) {
    final isMe = event.playerIndex == state.playerIndex;
    final myScore = event.scores.length > state.playerIndex
        ? event.scores[state.playerIndex]
        : state.player1Score;
    final rivalScore = event.scores.length > (1 - state.playerIndex)
        ? event.scores[1 - state.playerIndex]
        : state.player2Score;

    if (isMe) {
      final updatedAnswers = Map<String, bool>.from(state.answersP1);
      final currentQ = state.currentQuestion;
      if (currentQ != null) {
        updatedAnswers[currentQ.id] = event.isCorrect;
      }

      emit(
        state.copyWith(
          player1Score: myScore,
          player2Score: rivalScore,
          selectedOptionIdP1: event.optionId,
          isP1Correct: event.isCorrect,
          correctCountP1: event.isCorrect
              ? state.correctCountP1 + 1
              : state.correctCountP1,
          answersP1: updatedAnswers,
        ),
      );
    } else {
      emit(
        state.copyWith(
          player1Score: myScore,
          player2Score: rivalScore,
          selectedOptionIdP2: event.optionId,
          isP2Correct: event.isCorrect,
        ),
      );
    }

    // Nếu trả lời đúng, khóa lượt và dừng timer chờ hiệu ứng reveal 1.35s
    if (event.isCorrect) {
      _countdownTimer?.cancel();
      emit(state.copyWith(isRoundLocked: true));
    }
  }

  void _onSocketRoundTimeout(
    _SocketRoundTimeout event,
    Emitter<VocabularyState> emit,
  ) {
    _countdownTimer?.cancel();
    emit(
      state.copyWith(
        remainingSeconds: 0,
        isRoundLocked: true,
      ),
    );
  }

  void _onSocketNextRound(
    _SocketNextRound event,
    Emitter<VocabularyState> emit,
  ) {
    final roundIdx = event.roundIndex;
    if (roundIdx >= state.questions.length) return;

    final currentQ = state.questions[roundIdx];
    final options = currentQ.options
        .map((o) => o.en.isNotEmpty ? o.en : o.vi)
        .toList();

    final myScore = event.scores.length > state.playerIndex
        ? event.scores[state.playerIndex]
        : state.player1Score;
    final rivalScore = event.scores.length > (1 - state.playerIndex)
        ? event.scores[1 - state.playerIndex]
        : state.player2Score;

    emit(
      state.copyWith(
        currentQuestionIndex: roundIdx,
        startedAt: event.startedAt,
        isRoundLocked: false,
        selectedWordP1: null,
        selectedWordP2: null,
        selectedOptionIdP1: null,
        selectedOptionIdP2: null,
        isP1Correct: null,
        isP2Correct: null,
        optionsP1: options,
        optionsP2: options,
        player1Score: myScore,
        player2Score: rivalScore,
        remainingSeconds: 12,
      ),
    );

    _startRoundTimer();
  }

  void _onSocketMatchFinished(
    _SocketMatchFinished event,
    Emitter<VocabularyState> emit,
  ) {
    _countdownTimer?.cancel();
    _botTimer?.cancel();
    _nextRoundTimer?.cancel();

    final myScore = event.scores.length > state.playerIndex
        ? event.scores[state.playerIndex]
        : state.player1Score;
    final rivalScore = event.scores.length > (1 - state.playerIndex)
        ? event.scores[1 - state.playerIndex]
        : state.player2Score;

    emit(
      state.copyWith(
        player1Score: myScore,
        player2Score: rivalScore,
        isRoundLocked: true,
      ),
    );

    add(const VocabularyEvent.finishGame());
  }

  void _onSocketOpponentAnswer(
    _SocketOpponentAnswer event,
    Emitter<VocabularyState> emit,
  ) {
    if (state.isGameOver || state.questions.isEmpty) return;

    emit(
      state.copyWith(
        selectedWordP2: event.selectedWord,
        player2Score: event.score,
      ),
    );

    if (event.isCorrect) {
      _countdownTimer?.cancel();
      _botTimer?.cancel();
      emit(state.copyWith(isRoundLocked: true));
      _scheduleNextRound();
    }
  }

  void _onSocketRoundSync(
    _SocketRoundSync event,
    Emitter<VocabularyState> emit,
  ) {
    if (event.round > state.currentQuestionIndex && !state.isGameOver) {
      add(const VocabularyEvent.nextQuestion());
    }
  }

  void _onSocketOpponentLeft(
    _SocketOpponentLeft event,
    Emitter<VocabularyState> emit,
  ) {
    _countdownTimer?.cancel();
    _botTimer?.cancel();
    _nextRoundTimer?.cancel();
    _socketSubscription?.cancel();
    _socketSubscription = null;
    _socketService.disconnect();
    emit(
      state.copyWith(
        isOpponentLeft: true,
        opponentLeftMessage: 'Đối thủ đã thoát khỏi trận đấu!',
        isRoundLocked: true,
      ),
    );
  }

  void _startRoundTimer() {
    _countdownTimer?.cancel();
    _localRoundStartTime = DateTime.now().millisecondsSinceEpoch;
    _countdownTimer = Timer.periodic(const Duration(milliseconds: 100), (
      timer,
    ) {
      if (!isClosed) {
        add(const VocabularyEvent.tick());
      } else {
        timer.cancel();
      }
    });
  }

  void _scheduleBotAction() {
    _botTimer?.cancel();
    if (!state.isBotOpponent) return;

    final delayMillis = 2000 + _random.nextInt(2500);
    _botTimer = Timer(Duration(milliseconds: delayMillis), () {
      if (!isClosed) {
        add(const VocabularyEvent.botAnswer());
      }
    });
  }

  void _scheduleNextRound() {
    _nextRoundTimer?.cancel();
    _nextRoundTimer = Timer(const Duration(milliseconds: 900), () {
      if (!isClosed) {
        add(const VocabularyEvent.nextQuestion());
      }
    });
  }

  List<String> _shuffleOptions(BattleQuestion question) {
    final list = question.options.map((o) => o.en).toList()..shuffle(_random);
    return list;
  }
}
