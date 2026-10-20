import 'dart:async';
import 'dart:math';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/auth/domain/usecases/get_cached_user_use_case.dart';
import 'package:bufopia/features/vocabulary/data/mapper/battle_question_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/models/battle_question_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_deck.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_option.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_question.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_reward.dart';
import 'package:bufopia/features/vocabulary/domain/entities/match_record.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_profile.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/get_battle_deck_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/submit_battle_reward_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/submit_match_result_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/submit_word_profiles_use_case.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:bufopia/shared/services/device/device_uid_service.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:bufopia/shared/services/socket/duel_socket_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
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
    this._getCachedUserUseCase,
    this._firebaseAuthService,
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
    on<_SocketRematchWaiting>(_onSocketRematchWaiting);
    on<_CooldownTick>(_onCooldownTick);
  }

  final GetBattleDeckUseCase _getBattleDeckUseCase;
  final SubmitMatchResultUseCase _submitMatchResultUseCase;
  final SubmitBattleRewardUseCase _submitBattleRewardUseCase;
  final SubmitWordProfilesUseCase _submitWordProfilesUseCase;
  final DeviceUidService _deviceUidService;
  final GetCachedUserUseCase _getCachedUserUseCase;
  final FirebaseAuthService _firebaseAuthService;
  final DuelSocketService _socketService;
  final BattleQuestionDataMapper _questionMapper;

  /// Helper giải quyết UID chuẩn:
  /// ưu tiên providedUid -> cached user -> Firebase UID -> DeviceUid
  Future<String> _resolveUid(String? providedUid) async {
    if (providedUid != null && providedUid.isNotEmpty) {
      return providedUid;
    }
    final cachedUser = _getCachedUserUseCase.execute();
    if (cachedUser != null && cachedUser.uid.isNotEmpty) {
      return cachedUser.uid;
    }
    final fbUid = _firebaseAuthService.currentUid;
    if (fbUid != null && fbUid.isNotEmpty) {
      return fbUid;
    }
    return _deviceUidService.getDeviceUid();
  }

  Timer? _countdownTimer;
  Timer? _botTimer;
  Timer? _nextRoundTimer;
  Timer? _pendingAnswerTimer;
  Timer? _cooldownTimerP1;
  Timer? _cooldownTimerP2;
  int _lockedUntilMs = 0;
  int _rematchContinueAtMs = 0;
  Timer? _rematchRetryTimer;
  StreamSubscription<SocketEvent>? _socketSubscription;
  final Random _random = Random();
  int _localRoundStartTime = 0;

  void _startCooldownP1([int seconds = 2]) {
    _cooldownTimerP1?.cancel();
    add(
      VocabularyEvent.cooldownTick(
        isPlayer1: true,
        remainingSeconds: seconds,
      ),
    );
    var current = seconds;
    _cooldownTimerP1 = Timer.periodic(const Duration(seconds: 1), (timer) {
      current--;
      if (current <= 0) {
        timer.cancel();
        add(
          const VocabularyEvent.cooldownTick(
            isPlayer1: true,
            remainingSeconds: 0,
          ),
        );
      } else {
        add(
          VocabularyEvent.cooldownTick(
            isPlayer1: true,
            remainingSeconds: current,
          ),
        );
      }
    });
  }

  void _startCooldownP2([int seconds = 2]) {
    _cooldownTimerP2?.cancel();
    add(
      VocabularyEvent.cooldownTick(
        isPlayer1: false,
        remainingSeconds: seconds,
      ),
    );
    var current = seconds;
    _cooldownTimerP2 = Timer.periodic(const Duration(seconds: 1), (timer) {
      current--;
      if (current <= 0) {
        timer.cancel();
        add(
          const VocabularyEvent.cooldownTick(
            isPlayer1: false,
            remainingSeconds: 0,
          ),
        );
      } else {
        add(
          VocabularyEvent.cooldownTick(
            isPlayer1: false,
            remainingSeconds: current,
          ),
        );
      }
    });
  }

  void _onCooldownTick(
    _CooldownTick event,
    Emitter<VocabularyState> emit,
  ) {
    if (event.isPlayer1) {
      safeEmit(state.copyWith(cooldownSecondsP1: event.remainingSeconds));
    } else {
      safeEmit(state.copyWith(cooldownSecondsP2: event.remainingSeconds));
    }
  }

  @override
  Future<void> close() async {
    _countdownTimer?.cancel();
    _botTimer?.cancel();
    _nextRoundTimer?.cancel();
    _pendingAnswerTimer?.cancel();
    _cooldownTimerP1?.cancel();
    _cooldownTimerP2?.cancel();
    _rematchRetryTimer?.cancel();
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
        _pendingAnswerTimer?.cancel();
        _cooldownTimerP1?.cancel();
        _cooldownTimerP2?.cancel();
        _lockedUntilMs = 0;
        await _socketSubscription?.cancel();
        _socketSubscription = null;

        safeEmit(
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

        final uid = await _resolveUid(event.uid);

        // 1. Chế độ Đấu Online (Dùng Backend làm Single Source of Truth)
        if (!event.isBotOpponent && event.roomCode != null) {
          safeEmit(
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
                    matchRound: e.matchRound,
                    continueAt: e.continueAt,
                  ),
                );
              case final RoomRematchWaitingEvent e:
                add(
                  VocabularyEvent.socketRematchWaiting(
                    matchRound: e.matchRound,
                    readyPlayers: e.readyPlayers,
                  ),
                );
              case final RoomPlayerLeftEvent e:
                add(VocabularyEvent.socketOpponentLeft(message: e.message));
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
          safeEmit(
            state.copyWith(
              isLoading: false,
              errorMessage: 'Không thể tải bộ câu hỏi từ máy chủ',
            ),
          );
          return;
        }

        final initialOptionsP1 = _shuffleOptions(questions[0]);
        final initialOptionsP2 = _shuffleOptions(questions[0]);

        safeEmit(
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
        if (event.isBotOpponent) {
          _scheduleBotAction();
        }
      },
      doOnError: (e) {
        safeEmit(
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

    // Trong thời gian phạt Cooldown sau khi chọn sai:
    // tạm thời khóa không cho nhấn
    if (event.isPlayer1 && state.cooldownSecondsP1 > 0) return;
    if (!event.isPlayer1 && state.cooldownSecondsP2 > 0) return;

    final currentQ = state.currentQuestion;
    if (currentQ == null) return;

    // 1. Chế độ Đấu Online (Gửi optionId lên Backend theo quy tắc SSOT)
    final isOnline = !state.isBotOpponent && state.roomCode != null;
    if (isOnline && event.isPlayer1) {
      final selectedOpt = currentQ.options.firstWhere(
        (o) => o.en == event.selectedWord || o.vi == event.selectedWord,
        orElse: () => currentQ.options.first,
      );

      _socketService.sendMatchAnswer(
        matchRound: state.matchRound,
        roundIndex: state.currentQuestionIndex,
        optionId: selectedOpt.id,
      );

      // Nếu người chơi vừa trả lời sai cách đây < 2s (server lock 2000ms),
      // Server sẽ drop request. Ta tự động gửi lại ngay khi hết lock để người
      // chơi chỉ cần nhấn đúng 1 lần duy nhất!
      _pendingAnswerTimer?.cancel();
      final now = DateTime.now().millisecondsSinceEpoch;
      final remainingLockMs = _lockedUntilMs - now;
      if (remainingLockMs > 0) {
        final targetRound = state.currentQuestionIndex;
        final targetMatchRound = state.matchRound;
        final targetOptId = selectedOpt.id;
        _pendingAnswerTimer = Timer(
          Duration(milliseconds: remainingLockMs + 80),
          () {
            if (!state.isGameOver &&
                !state.isRoundLocked &&
                state.currentQuestionIndex == targetRound) {
              _socketService.sendMatchAnswer(
                matchRound: targetMatchRound,
                roundIndex: targetRound,
                optionId: targetOptId,
              );
            }
          },
        );
      }

      safeEmit(
        state.copyWith(
          selectedWordP1: event.selectedWord,
          selectedOptionIdP1: selectedOpt.id,
          isP1Correct: null,
        ),
      );
      return;
    }

    // 2. Chế độ Chơi với Bot (Offline)
    final isCorrect =
        event.selectedWord == currentQ.en || event.selectedWord == currentQ.vi;

    if (event.isPlayer1) {
      if (isCorrect) {
        SoundManager.playCorrect();
        _countdownTimer?.cancel();
        _botTimer?.cancel();

        final updatedAnswers = Map<String, bool>.from(state.answersP1);
        if (updatedAnswers[currentQ.id] != true) {
          updatedAnswers[currentQ.id] = true;
        }

        safeEmit(
          state.copyWith(
            selectedWordP1: event.selectedWord,
            isP1Correct: true,
            isRoundLocked: true,
            player1Score: state.player1Score + 100,
            correctCountP1: state.correctCountP1 + 1,
            answersP1: updatedAnswers,
          ),
        );
        _scheduleNextRound();
      } else {
        SoundManager.playWrong();
        final updatedWrong = List<String>.from(state.wrongWordsP1);
        if (!updatedWrong.contains(event.selectedWord)) {
          updatedWrong.add(event.selectedWord);
        }

        safeEmit(
          state.copyWith(
            selectedWordP1: event.selectedWord,
            isP1Correct: false,
            wrongWordsP1: updatedWrong,
            isRoundLocked: false,
          ),
        );
        _startCooldownP1();
      }
    } else {
      final selectedOpt = currentQ.options.firstWhere(
        (o) => o.en == event.selectedWord || o.vi == event.selectedWord,
        orElse: () => const BattleOption(),
      );

      if (isCorrect) {
        SoundManager.playCorrect();
        _countdownTimer?.cancel();
        _botTimer?.cancel();

        safeEmit(
          state.copyWith(
            selectedWordP2: event.selectedWord,
            selectedOptionIdP2:
                selectedOpt.id.isNotEmpty ? selectedOpt.id : null,
            isP2Correct: true,
            isRoundLocked: true,
            player2Score: state.player2Score + 100,
          ),
        );
        _scheduleNextRound();
      } else {
        SoundManager.playWrong();
        final updatedWrong = List<String>.from(state.wrongWordsP2);
        if (!updatedWrong.contains(event.selectedWord)) {
          updatedWrong.add(event.selectedWord);
        }

        safeEmit(
          state.copyWith(
            selectedWordP2: event.selectedWord,
            selectedOptionIdP2:
                selectedOpt.id.isNotEmpty ? selectedOpt.id : null,
            isP2Correct: false,
            wrongWordsP2: updatedWrong,
            isRoundLocked: false,
          ),
        );
        _startCooldownP2();

        if (state.isBotOpponent) {
          _scheduleBotAction();
        }
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

    final isOnline = !state.isBotOpponent && state.roomCode != null;
    if (isOnline) {
      final elapsedMs =
          DateTime.now().millisecondsSinceEpoch - _localRoundStartTime;
      final remainingSeconds = ((12000 - elapsedMs) / 1000).ceil().clamp(0, 12);
      if (remainingSeconds != state.remainingSeconds) {
        safeEmit(state.copyWith(remainingSeconds: remainingSeconds));
        if (remainingSeconds <= 5 && remainingSeconds > 0) {
          SoundManager.playClick();
        }
      }
      if (remainingSeconds <= 0) {
        SoundManager.playWrong();
        safeEmit(state.copyWith(remainingSeconds: 0, isRoundLocked: true));
        _countdownTimer?.cancel();
      }
      return;
    }

    final elapsedMs =
        DateTime.now().millisecondsSinceEpoch - _localRoundStartTime;
    final remainingSeconds = ((10000 - elapsedMs) / 1000).ceil().clamp(0, 10);
    if (remainingSeconds != state.remainingSeconds) {
      safeEmit(state.copyWith(remainingSeconds: remainingSeconds));
      if (remainingSeconds <= 5 && remainingSeconds > 0) {
        SoundManager.playClick();
      }
    }
    if (remainingSeconds <= 0) {
      SoundManager.playWrong();
      safeEmit(state.copyWith(remainingSeconds: 0, isRoundLocked: true));
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
    _cooldownTimerP1?.cancel();
    _cooldownTimerP2?.cancel();

    final nextIndex = state.currentQuestionIndex + 1;
    if (nextIndex >= state.questions.length) {
      add(const VocabularyEvent.finishGame());
      return;
    }

    // Không gửi next_round — BE tự quản lý flow và gửi RoomNextRoundEvent.

    final nextQuestion = state.questions[nextIndex];
    final optionsP1 = _shuffleOptions(nextQuestion);
    final optionsP2 = _shuffleOptions(nextQuestion);

    safeEmit(
      state.copyWith(
        currentQuestionIndex: nextIndex,
        remainingSeconds: 10,
        isRoundLocked: false,
        selectedWordP1: null,
        selectedWordP2: null,
        selectedOptionIdP1: null,
        selectedOptionIdP2: null,
        isP1Correct: null,
        isP2Correct: null,
        optionsP1: optionsP1,
        optionsP2: optionsP2,
        wrongWordsP1: const [],
        wrongWordsP2: const [],
        cooldownSecondsP1: 0,
        cooldownSecondsP2: 0,
      ),
    );

    _startRoundTimer();
    if (state.isBotOpponent) {
      _scheduleBotAction();
    }
  }

  void _onBotAnswer(
    _BotAnswer event,
    Emitter<VocabularyState> emit,
  ) {
    if (state.isRoundLocked || state.isGameOver) return;
    final currentQ = state.currentQuestion;
    if (currentQ == null || state.optionsP2.isEmpty) return;

    final availableOptions = state.optionsP2
        .where((w) => !state.wrongWordsP2.contains(w))
        .toList();
    if (availableOptions.isEmpty) return;

    final shouldPickCorrect = _random.nextDouble() < 0.7;
    String chosenWord;

    if (shouldPickCorrect && availableOptions.contains(currentQ.en)) {
      chosenWord = currentQ.en;
    } else {
      final wrongAvailable = availableOptions
          .where((w) => w != currentQ.en)
          .toList();
      chosenWord = wrongAvailable.isNotEmpty
          ? wrongAvailable[_random.nextInt(wrongAvailable.length)]
          : availableOptions.first;
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

        safeEmit(
          state.copyWith(
            isGameOver: true,
            isRoundLocked: true,
            isSavingReward: true,
          ),
        );

        final uid = await _resolveUid(state.currentUid);
        final isWin = state.player1Score >= state.player2Score;
        if (isWin) {
          SoundManager.playWin();
        }

        BattleReward? finalReward;
        try {
          // 1. Gọi API nhận thưởng (XP, Level, Streak, Win Streak)
          final rewardOutput = await _submitBattleRewardUseCase.execute(
            SubmitBattleRewardInput(
              uid: uid,
              isWin: isWin,
              correctCount: state.correctCountP1,
              points: state.player1Score,
            ),
          );
          finalReward = rewardOutput.reward;
        } on Object catch (_) {
          // Fallback reward tính toán cục bộ nếu API trả lỗi
          finalReward = BattleReward(
            gainedXp: isWin ? 25 : 10,
            streak: 2,
            winStreak: isWin ? 1 : 0,
          );
        }

        safeEmit(
          state.copyWith(
            isSavingReward: false,
            reward: finalReward,
          ),
        );

        // 2. Ghi nhận lịch sử trận đấu vào database (chạy an toàn ngầm)
        try {
          final matchId = 'match_${DateTime.now().millisecondsSinceEpoch}_$uid';
          await _submitMatchResultUseCase.execute(
            SubmitMatchResultInput(
              MatchRecord(
                id: matchId,
                uid: uid,
                topicId: state.topic,
                scores: [state.player1Score, state.player2Score],
                winner: isWin
                    ? uid
                    : (state.isBotOpponent ? 'bot' : 'player_2'),
                matchData: {
                  'mode': state.isBotOpponent ? 'bot' : 'local_pvp',
                  'correctCount': state.correctCountP1,
                  'totalRounds': state.questions.length,
                },
                createdAt: DateTime.now(),
              ),
            ),
          );
        } on Object catch (_) {}

        // 3. Đồng bộ tiến trình học SRS của 15 từ vựng (Phase 3)
        try {
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
        } on Object catch (_) {}
      },
      doOnError: (e) {
        safeEmit(
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
    if (!state.isBotOpponent &&
        state.roomCode != null &&
        _socketService.isConnected) {
      safeEmit(
        state.copyWith(
          isRematchRequested: true,
        ),
      );

      final now = DateTime.now().millisecondsSinceEpoch;
      final waitMs = _rematchContinueAtMs - now;

      _rematchRetryTimer?.cancel();
      if (waitMs > 0) {
        // Tự động bắn gói rematch ngay khi vừa hết 5s cooldown bảng điểm
        _rematchRetryTimer = Timer(Duration(milliseconds: waitMs + 150), () {
          if (!isClosed && state.isGameOver && _socketService.isConnected) {
            _socketService.sendRematch(matchRound: state.matchRound);
          }
        });
      } else {
        _socketService.sendRematch(matchRound: state.matchRound);
      }
      return;
    }

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
    safeEmit(
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

    // Nếu người chơi là chủ phòng (Host - index 0), gửi đề thi cho phòng
    if (event.playerIndex == 0) {
      _socketService.sendInitDeck(topicId: state.topic);
    }
  }

  void _onSocketPlayerJoined(
    _SocketPlayerJoined event,
    Emitter<VocabularyState> emit,
  ) {
    safeEmit(
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
    _rematchRetryTimer?.cancel();
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

      safeEmit(
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
          isRematchRequested: false,
          isOpponentWantRematch: false,
          rematchReadyPlayers: const [],
          answersP1: const {},
          wrongWordsP1: const [],
          wrongWordsP2: const [],
          cooldownSecondsP1: 0,
          cooldownSecondsP2: 0,
          isRoundLocked: false,
          errorMessage: null,
        ),
      );

      // Gửi ngay bản tin sẵn sàng lên Backend theo Handshake protocol
      _socketService.sendReady(matchRound: event.matchRound);
    } on Object catch (e) {
      safeEmit(
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
    _lockedUntilMs = 0;
    _pendingAnswerTimer?.cancel();
    _cooldownTimerP1?.cancel();
    _cooldownTimerP2?.cancel();
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

    safeEmit(
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
        wrongWordsP1: const [],
        wrongWordsP2: const [],
        cooldownSecondsP1: 0,
        cooldownSecondsP2: 0,
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

    final currentQ = state.currentQuestion;
    final answeredWord = currentQ?.options.firstWhere(
      (o) => o.id == event.optionId,
      orElse: () => const BattleOption(),
    );
    final wordText = (answeredWord?.en.isNotEmpty == true)
        ? answeredWord!.en
        : (answeredWord?.vi ?? '');

    if (isMe) {
      if (!event.isCorrect) {
        SoundManager.playWrong();
        _lockedUntilMs = DateTime.now().millisecondsSinceEpoch + 2000;
        _startCooldownP1();
      } else {
        SoundManager.playCorrect();
        _lockedUntilMs = 0;
        _pendingAnswerTimer?.cancel();
        _cooldownTimerP1?.cancel();
      }

      final updatedAnswers = Map<String, bool>.from(state.answersP1);
      if (currentQ != null) {
        updatedAnswers[currentQ.id] = event.isCorrect;
      }

      final wrongList = List<String>.from(state.wrongWordsP1);
      if (!event.isCorrect &&
          wordText.isNotEmpty &&
          !wrongList.contains(wordText)) {
        wrongList.add(wordText);
      }

      safeEmit(
        state.copyWith(
          player1Score: myScore,
          player2Score: rivalScore,
          selectedOptionIdP1: event.optionId,
          selectedWordP1: wordText.isNotEmpty ? wordText : state.selectedWordP1,
          isP1Correct: event.isCorrect,
          correctCountP1: event.isCorrect
              ? state.correctCountP1 + 1
              : state.correctCountP1,
          answersP1: updatedAnswers,
          wrongWordsP1: wrongList,
          cooldownSecondsP1: event.isCorrect ? 0 : state.cooldownSecondsP1,
          isRoundLocked: event.isCorrect || state.isRoundLocked,
        ),
      );
    } else {
      if (!event.isCorrect) {
        SoundManager.playWrong();
        _startCooldownP2();
      } else {
        SoundManager.playCorrect();
        _cooldownTimerP2?.cancel();
      }

      final wrongList = List<String>.from(state.wrongWordsP2);
      if (!event.isCorrect &&
          wordText.isNotEmpty &&
          !wrongList.contains(wordText)) {
        wrongList.add(wordText);
      }

      safeEmit(
        state.copyWith(
          player1Score: myScore,
          player2Score: rivalScore,
          selectedOptionIdP2: event.optionId,
          selectedWordP2: wordText.isNotEmpty ? wordText : state.selectedWordP2,
          isP2Correct: event.isCorrect,
          wrongWordsP2: wrongList,
          cooldownSecondsP2: event.isCorrect ? 0 : state.cooldownSecondsP2,
          isRoundLocked: event.isCorrect || state.isRoundLocked,
        ),
      );
    }

    // Nếu bất kỳ ai trả lời đúng, khóa lượt và dừng timer chờ hiệu ứng reveal
    if (event.isCorrect) {
      _countdownTimer?.cancel();
      safeEmit(state.copyWith(isRoundLocked: true));
    }
  }

  void _onSocketRoundTimeout(
    _SocketRoundTimeout event,
    Emitter<VocabularyState> emit,
  ) {
    SoundManager.playWrong();
    _countdownTimer?.cancel();
    _pendingAnswerTimer?.cancel();
    _cooldownTimerP1?.cancel();
    _cooldownTimerP2?.cancel();
    _lockedUntilMs = 0;
    safeEmit(
      state.copyWith(
        remainingSeconds: 0,
        isRoundLocked: true,
        cooldownSecondsP1: 0,
        cooldownSecondsP2: 0,
      ),
    );
  }

  void _onSocketNextRound(
    _SocketNextRound event,
    Emitter<VocabularyState> emit,
  ) {
    _countdownTimer?.cancel();
    _pendingAnswerTimer?.cancel();
    _cooldownTimerP1?.cancel();
    _cooldownTimerP2?.cancel();
    _lockedUntilMs = 0;
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

    safeEmit(
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
        wrongWordsP1: const [],
        wrongWordsP2: const [],
        player1Score: myScore,
        player2Score: rivalScore,
        cooldownSecondsP1: 0,
        cooldownSecondsP2: 0,
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
    _rematchRetryTimer?.cancel();
    _rematchContinueAtMs =
        event.continueAt ?? (DateTime.now().millisecondsSinceEpoch + 5000);

    final myScore = event.scores.length > state.playerIndex
        ? event.scores[state.playerIndex]
        : state.player1Score;
    final rivalScore = event.scores.length > (1 - state.playerIndex)
        ? event.scores[1 - state.playerIndex]
        : state.player2Score;

    safeEmit(
      state.copyWith(
        player1Score: myScore,
        player2Score: rivalScore,
        matchRound: event.matchRound,
        isRoundLocked: true,
        isRematchRequested: false,
        isOpponentWantRematch: false,
        rematchReadyPlayers: const [],
      ),
    );

    add(const VocabularyEvent.finishGame());
  }

  void _onSocketOpponentAnswer(
    _SocketOpponentAnswer event,
    Emitter<VocabularyState> emit,
  ) {
    if (state.isGameOver || state.questions.isEmpty) return;

    safeEmit(
      state.copyWith(
        selectedWordP2: event.selectedWord,
        player2Score: event.score,
      ),
    );

    if (event.isCorrect) {
      _countdownTimer?.cancel();
      _botTimer?.cancel();
      safeEmit(state.copyWith(isRoundLocked: true));
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

  void _onSocketRematchWaiting(
    _SocketRematchWaiting event,
    Emitter<VocabularyState> emit,
  ) {
    final myIndex = state.playerIndex;
    final myServerReady =
        event.readyPlayers.length > myIndex && event.readyPlayers[myIndex];
    final oppIndex = 1 - myIndex;
    final oppReady =
        event.readyPlayers.length > oppIndex && event.readyPlayers[oppIndex];

    // Nếu người chơi đã bấm "Chơi lại", giữ nguyên trạng thái sẵn sàng.
    if (state.isRematchRequested && !myServerReady) {
      final now = DateTime.now().millisecondsSinceEpoch;
      if (_rematchContinueAtMs - now <= 0) {
        _socketService.sendRematch(matchRound: state.matchRound);
      }
    }

    safeEmit(
      state.copyWith(
        isRematchRequested: state.isRematchRequested || myServerReady,
        isOpponentWantRematch: oppReady,
        rematchReadyPlayers: event.readyPlayers,
      ),
    );
  }

  void _onSocketOpponentLeft(
    _SocketOpponentLeft event,
    Emitter<VocabularyState> emit,
  ) {
    SoundManager.playWin();
    _countdownTimer?.cancel();
    _botTimer?.cancel();
    _nextRoundTimer?.cancel();
    _rematchRetryTimer?.cancel();
    // Giữ socket mở để nhận session_reward trao thưởng từ server.
    // Socket sẽ được đóng an toàn khi rời màn hình (close()).
    safeEmit(
      state.copyWith(
        isOpponentLeft: true,
        opponentLeftMessage: event.message ?? 'Đối thủ đã thoát khỏi trận đấu!',
        isRoundLocked: true,
        isRematchRequested: false,
        isOpponentWantRematch: false,
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
