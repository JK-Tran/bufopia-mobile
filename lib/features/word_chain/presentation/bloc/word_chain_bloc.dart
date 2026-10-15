import 'dart:async';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/word_chain/domain/entities/chain_game_event.dart';
import 'package:bufopia/features/word_chain/domain/entities/chain_state_update.dart';
import 'package:bufopia/features/word_chain/domain/entities/game_state.dart';
import 'package:bufopia/features/word_chain/domain/entities/reward.dart';
import 'package:bufopia/features/word_chain/domain/entities/turn_message.dart';
import 'package:bufopia/features/word_chain/domain/entities/word.dart';
import 'package:bufopia/features/word_chain/domain/usecases/connect_chain_matchmake_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/connect_chain_room_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/disconnect_chain_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/get_bot_word_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/get_word_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/observe_chain_game_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/send_chain_away_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/send_chain_rematch_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/send_chain_surrender_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/send_chain_word_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/submit_practice_word_use_case.dart';
import 'package:bufopia/features/word_chain/domain/usecases/submit_start_session_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'word_chain_bloc.freezed.dart';
part 'word_chain_event.dart';
part 'word_chain_state.dart';

@injectable
class WordChainBloc extends BaseBloc<WordChainEvent, WordChainState> {
  WordChainBloc(
    this._submitStartSessionUseCase,
    this._submitPracticeWordUseCase,
    this._getBotWordUseCase,
    this._getWordUseCase,
    this._connectChainMatchmakeUseCase,
    this._connectChainRoomUseCase,
    this._sendChainWordUseCase,
    this._sendChainAwayUseCase,
    this._sendChainSurrenderUseCase,
    this._sendChainRematchUseCase,
    this._disconnectChainUseCase,
    this._observeChainGameUseCase,
  ) : super(const WordChainState()) {
    on<_StartBotGame>(_onStartBotGame);
    on<_StartOnlineMatchmake>(_onStartOnlineMatchmake);
    on<_JoinRoom>(_onJoinRoom);
    on<_InputWordChanged>(_onInputWordChanged);
    on<_SubmitWord>(_onSubmitWord);
    on<_Surrender>(_onSurrender);
    on<_AppAway>(_onAppAway);
    on<_RequestRematch>(_onRequestRematch);
    on<_ChainStateUpdated>(_onChainStateUpdated);
    on<_WordCheckingChanged>(_onWordCheckingChanged);
    on<_WordRejected>(_onWordRejected);
    on<_RewardReceived>(_onRewardReceived);
    on<_RematchWaiting>(_onRematchWaiting);
    on<_ConnectionStateChanged>(_onConnectionStateChanged);
    on<_WordChainOpponentLeft>(_onWordChainOpponentLeft);
    on<_ErrorOccurred>(_onErrorOccurred);
    on<_Tick>(_onTick);
    on<_BotTurn>(_onBotTurn);
  }

  final SubmitStartSessionUseCase _submitStartSessionUseCase;
  final SubmitPracticeWordUseCase _submitPracticeWordUseCase;
  final GetBotWordUseCase _getBotWordUseCase;
  final GetWordUseCase _getWordUseCase;
  final ConnectChainMatchmakeUseCase _connectChainMatchmakeUseCase;
  final ConnectChainRoomUseCase _connectChainRoomUseCase;
  final SendChainWordUseCase _sendChainWordUseCase;
  final SendChainAwayUseCase _sendChainAwayUseCase;
  final SendChainSurrenderUseCase _sendChainSurrenderUseCase;
  final SendChainRematchUseCase _sendChainRematchUseCase;
  final DisconnectChainUseCase _disconnectChainUseCase;
  final ObserveChainGameUseCase _observeChainGameUseCase;

  StreamSubscription<dynamic>? _gameStreamSubscription;
  Timer? _countdownTimer;
  Timer? _botThinkingTimer;

  String? _practiceSessionId;
  int _practiceWordIndex = 1;
  String? _currentUid;
  String _language = 'en';
  int? _serverTimeOffset;
  final Map<String, Word> _wordDetailsCache = {};

  void _subscribeGameStream() {
    _gameStreamSubscription?.cancel();
    _gameStreamSubscription = _observeChainGameUseCase
        .execute(const EmptyInput())
        .listen((gameEvent) {
          gameEvent.map(
            state: (e) => add(WordChainEvent.chainStateUpdated(e.update)),
            wordChecking: (e) => add(
              WordChainEvent.wordCheckingChanged(isChecking: e.isChecking),
            ),
            wordRejected: (e) => add(
              WordChainEvent.wordRejected(penalty: e.penalty),
            ),
            reward: (e) => add(
              WordChainEvent.rewardReceived(
                reward: e.reward,
                sessionId: e.sessionId,
              ),
            ),
            rematchWaiting: (e) => add(
              WordChainEvent.rematchWaiting(readyPlayers: e.readyPlayers),
            ),
            opponentLeft: (e) => add(WordChainEvent.opponentLeft(e.message)),
            connection: (e) => add(
              WordChainEvent.connectionStateChanged(e.state),
            ),
            error: (e) => add(WordChainEvent.errorOccurred(e.message)),
          );
        });
  }

  void _startCountdown() {
    _countdownTimer?.cancel();
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      add(const WordChainEvent.tick());
    });
  }

  void _stopCountdown() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
  }

  Future<void> _onStartBotGame(
    _StartBotGame event,
    Emitter<WordChainState> emit,
  ) {
    _currentUid = event.uid;
    _language = event.language;
    _practiceWordIndex = 1;
    _stopCountdown();
    _botThinkingTimer?.cancel();

    final resetGameState = GameState(
      turnStartedAt: DateTime.now().millisecondsSinceEpoch,
      relaxed: event.relaxed,
    );

    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(
        state.copyWith(
          isLoading: true,
          mode: WordChainGameMode.bot,
          relaxed: event.relaxed,
          myPlayerIndex: 0,
          rivalName: 'Máy (Bot)',
          rivalAvatar: '',
          inputWord: '',
          rejectedReason: null,
          errorMessage: null,
          reward: null,
          remainingSeconds: event.relaxed ? 0 : 20,
          gameState: resetGameState,
          sessionId: '',
          isRematchPending: false,
          isRivalRematchReady: false,
        ),
      ),
      action: () async {
        final output = await _submitStartSessionUseCase.execute(
          SubmitStartSessionInput(
            uid: event.uid,
            language: event.language,
          ),
        );
        _practiceSessionId = output.session.sessionId;

        safeEmit(
          state.copyWith(
            sessionId: output.session.sessionId,
            gameState: resetGameState.copyWith(
              turnStartedAt: DateTime.now().millisecondsSinceEpoch,
            ),
            remainingSeconds: event.relaxed ? 0 : 20,
          ),
        );

        if (!event.relaxed) {
          _startCountdown();
        }
      },
      doOnError: (e) => safeEmit(
        state.copyWith(
          errorMessage: 'Không thể khởi tạo phiên luyện tập: $e',
        ),
      ),
      doOnSuccessOrError: () => safeEmit(state.copyWith(isLoading: false)),
    );
  }

  Future<void> _onStartOnlineMatchmake(
    _StartOnlineMatchmake event,
    Emitter<WordChainState> emit,
  ) async {
    safeEmit(
      state.copyWith(
        isLoading: true,
        mode: WordChainGameMode.online,
        relaxed: event.relaxed,
        errorMessage: null,
        sessionId: '',
        isRematchPending: false,
        isRivalRematchReady: false,
      ),
    );

    _currentUid = event.uid;
    _language = event.language;
    _subscribeGameStream();

    try {
      await _connectChainMatchmakeUseCase.execute(
        ConnectChainMatchmakeInput(
          uid: event.uid,
          name: event.name,
          avatar: event.avatar,
          relaxed: event.relaxed,
          lang: event.language,
        ),
      );
    } on Object catch (e) {
      safeEmit(
        state.copyWith(
          isLoading: false,
          errorMessage: 'Lỗi kết nối tìm trận: $e',
        ),
      );
    }
  }

  Future<void> _onJoinRoom(
    _JoinRoom event,
    Emitter<WordChainState> emit,
  ) async {
    safeEmit(
      state.copyWith(
        isLoading: true,
        mode: WordChainGameMode.room,
        relaxed: event.relaxed,
        roomCode: event.roomCode,
        errorMessage: null,
        sessionId: '',
        isRematchPending: false,
        isRivalRematchReady: false,
      ),
    );

    _currentUid = event.uid;
    _language = event.language;
    _subscribeGameStream();

    try {
      await _connectChainRoomUseCase.execute(
        ConnectChainRoomInput(
          roomCode: event.roomCode,
          uid: event.uid,
          name: event.name,
          avatar: event.avatar,
          relaxed: event.relaxed,
          lang: event.language,
        ),
      );
    } on Object catch (e) {
      safeEmit(
        state.copyWith(
          isLoading: false,
          errorMessage: 'Lỗi vào phòng thi đấu: $e',
        ),
      );
    }
  }

  void _onInputWordChanged(
    _InputWordChanged event,
    Emitter<WordChainState> emit,
  ) {
    safeEmit(state.copyWith(inputWord: event.word, rejectedReason: null));
  }

  static String _normalizeWord(String input) {
    var result = input.trim().toLowerCase().replaceAll('đ', 'd');
    const vietnameseAccents = {
      'a': 'áàảãạăắằẳẵặâấầẩẫậ',
      'e': 'éèẻẽẹêếềểễệ',
      'i': 'íìỉĩị',
      'o': 'óòỏõọôốồổỗộơớờởỡợ',
      'u': 'úùủũụưứừửữự',
      'y': 'ýỳỷỹỵ',
    };
    for (final entry in vietnameseAccents.entries) {
      for (final char in entry.value.split('')) {
        result = result.replaceAll(char, entry.key);
      }
    }
    return result;
  }

  Future<void> _onSubmitWord(
    _SubmitWord event,
    Emitter<WordChainState> emit,
  ) async {
    if (!state.isMyTurn ||
        state.isGameOver ||
        state.isCheckingWord ||
        state.isLoading ||
        state.inputWord.trim().isEmpty) {
      return;
    }

    final word = _normalizeWord(state.inputWord);

    // 1. Kiểm tra định dạng từ: 2 - 32 ký tự chữ cái tiếng Anh
    if (!RegExp(r'^[a-z]{2,32}$').hasMatch(word)) {
      safeEmit(
        state.copyWith(
          rejectedReason:
              'Từ phải gồm từ 2 đến 32 chữ cái và chỉ chứa ký tự chữ cái!',
        ),
      );
      return;
    }

    final requiredLetter = state.gameState.requiredLetter.toLowerCase();

    // 2. Kiểm tra chữ cái bắt đầu nếu ván đấu đã có chữ cái yêu cầu
    if (requiredLetter.isNotEmpty && !word.startsWith(requiredLetter)) {
      safeEmit(
        state.copyWith(
          rejectedReason:
              'Từ phải bắt đầu bằng chữ "${requiredLetter.toUpperCase()}"',
        ),
      );
      return;
    }

    // 3. Kiểm tra từ trùng lặp
    final isUsed = state.gameState.usedWords.any(
      (used) => used.trim().toLowerCase() == word,
    );
    if (isUsed) {
      safeEmit(
        state.copyWith(
          rejectedReason: 'Từ "$word" đã được dùng trước đó!',
        ),
      );
      return;
    }

    // 4. Nếu là chế độ Online hoặc Room ➔ gửi qua WebSocket UseCase
    if (state.mode == WordChainGameMode.online ||
        state.mode == WordChainGameMode.room) {
      return runBlocCatching(
        handleLoading: false,
        doOnSubscribe: () => safeEmit(
          state.copyWith(isCheckingWord: true, rejectedReason: null),
        ),
        action: () async {
          await _sendChainWordUseCase.execute(
            SendChainWordInput(
              word: word,
              turnId: state.gameState.turnId,
            ),
          );
          try {
            final detailOutput = await _getWordUseCase.execute(
              GetWordInput(word: word, lang: _language),
            );
            if (detailOutput.word.valid) {
              _wordDetailsCache[word] = detailOutput.word;
            }
          } on Object catch (_) {}
        },
        doOnError: (_) {
          safeEmit(
            state.copyWith(
              isCheckingWord: false,
              rejectedReason: 'Lỗi gửi từ, vui lòng thử lại!',
            ),
          );
        },
      );
    }

    // 5. Nếu là chế độ Bot ➔ Kiểm tra từ qua REST API UseCase
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () =>
          safeEmit(state.copyWith(isCheckingWord: true, rejectedReason: null)),
      action: () async {
        final lookupOutput = await _getWordUseCase.execute(
          GetWordInput(word: word, lang: _language),
        );
        final wordEntity = lookupOutput.word;

        if (!wordEntity.valid) {
          // Theo quy tắc tài liệu: Nhập sai từ / không có trong từ điển
          // Không mất tim, không chuyển lượt, tăng số lần lỗi (mistakes)
          final currentMistakes = List<int>.from(state.gameState.mistakes);
          currentMistakes[0] = currentMistakes[0] + 1;

          final updatedState = state.gameState.copyWith(
            mistakes: currentMistakes,
          );

          safeEmit(
            state.copyWith(
              isCheckingWord: false,
              gameState: updatedState,
              rejectedReason: 'Từ "$word" không có trong từ điển!',
            ),
          );
          return;
        }

        // Từ hợp lệ: lưu kết quả qua practice word (bắt đầu từ index: 1)
        if (_practiceSessionId != null && _currentUid != null) {
          final lastWord = state.gameState.messages.isNotEmpty
              ? state.gameState.messages.last.entry.word
              : null;
          try {
            await _submitPracticeWordUseCase.execute(
              SubmitPracticeWordInput(
                uid: _currentUid!,
                sessionId: _practiceSessionId!,
                index: _practiceWordIndex++,
                answer: word,
                bridgeWord: lastWord,
              ),
            );
          } on Object catch (_) {
            // Lưu lượt ngầm thất bại không làm hỏng tiến trình trận đấu
          }
        }

        // Cập nhật lượt đi tiếp theo cho Bot
        final lastChar = word.substring(word.length - 1);
        final newUsedWords = [...state.gameState.usedWords, word];
        final newMessage = TurnMessage(
          entry: wordEntity,
          time: DateTime.now().millisecondsSinceEpoch,
        );

        final nextGameState = state.gameState.copyWith(
          turn: 1, // Lượt của Bot
          turnId: state.gameState.turnId + 1,
          requiredLetter: lastChar,
          usedWords: newUsedWords,
          messages: [...state.gameState.messages, newMessage],
        );

        safeEmit(
          state.copyWith(
            isCheckingWord: false,
            inputWord: '',
            gameState: nextGameState,
            remainingSeconds: state.relaxed ? 0 : 20,
          ),
        );

        if (!state.relaxed) {
          _startCountdown();
        }

        // Giả lập bot suy nghĩ từ 1 - 2 giây
        _botThinkingTimer?.cancel();
        _botThinkingTimer = Timer(const Duration(milliseconds: 1500), () {
          add(const WordChainEvent.botTurn());
        });
      },
      doOnError: (e) {
        final currentMistakes = List<int>.from(state.gameState.mistakes);
        currentMistakes[0] = currentMistakes[0] + 1;
        safeEmit(
          state.copyWith(
            isCheckingWord: false,
            gameState: state.gameState.copyWith(mistakes: currentMistakes),
            rejectedReason: 'Từ "$word" không có trong từ điển!',
          ),
        );
      },
    );
  }

  Future<void> _onBotTurn(
    _BotTurn event,
    Emitter<WordChainState> emit,
  ) async {
    if (state.mode != WordChainGameMode.bot || state.isGameOver) {
      return;
    }

    final requiredLetter = state.gameState.requiredLetter;
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        final botOutput = await _getBotWordUseCase.execute(
          GetBotWordInput(
            letter: requiredLetter,
            exclude: state.gameState.usedWords,
            lang: _language,
          ),
        );
        final botWordEntity = botOutput.word;

        if (!botWordEntity.valid || botWordEntity.word.isEmpty) {
          // Bot không tìm được từ: Bot bị trừ mạng
          final currentLives = List<int?>.from(state.gameState.lives);
          final botLife = (currentLives[1] ?? 1) - 1;
          currentLives[1] = botLife;

          final isBotLost = botLife <= 0;
          final updatedState = state.gameState.copyWith(
            lives: currentLives,
            status: isBotLost ? 'finished' : state.gameState.status,
            winner: isBotLost ? 0 : null,
            finishReason: isBotLost ? 'lives_depleted' : null,
            turn: 0,
          );

          safeEmit(state.copyWith(gameState: updatedState));
          if (isBotLost) {
            _stopCountdown();
          }
          return;
        }

        final botWord = botWordEntity.word.toLowerCase();

        // Tra cứu chi tiết từ điển cho Bot (phiên âm, định nghĩa, ví dụ)
        var detailedWordEntity = botWordEntity;
        try {
          final detailOutput = await _getWordUseCase.execute(
            GetWordInput(word: botWord, lang: _language),
          );
          if (detailOutput.word.valid) {
            detailedWordEntity = detailOutput.word;
          }
        } on Object catch (_) {
          // Giữ botWordEntity ban đầu nếu tra cứu chi tiết gặp lỗi mạng
        }

        final lastChar = botWord.substring(botWord.length - 1);
        final newUsedWords = [...state.gameState.usedWords, botWord];
        final newMessage = TurnMessage(
          actor: 1,
          entry: detailedWordEntity,
          time: DateTime.now().millisecondsSinceEpoch,
        );

        final nextGameState = state.gameState.copyWith(
          turn: 0, // Trả lại lượt cho người chơi
          turnId: state.gameState.turnId + 1,
          requiredLetter: lastChar,
          usedWords: newUsedWords,
          messages: [...state.gameState.messages, newMessage],
        );

        safeEmit(
          state.copyWith(
            gameState: nextGameState,
            remainingSeconds: state.relaxed ? 0 : 20,
          ),
        );

        if (!state.relaxed) {
          _startCountdown();
        }
      },
      doOnError: (_) {
        // Trường hợp bot lỗi API: Bot chịu thua lượt này
        final currentLives = List<int?>.from(state.gameState.lives);
        final botLife = (currentLives[1] ?? 3) - 1;
        currentLives[1] = botLife;
        safeEmit(
          state.copyWith(
            gameState: state.gameState.copyWith(
              lives: currentLives,
              turn: 0,
            ),
          ),
        );
      },
    );
  }

  Future<void> _onChainStateUpdated(
    _ChainStateUpdated event,
    Emitter<WordChainState> emit,
  ) async {
    final update = event.update;
    final newGameState = update.state;

    if (update.serverNow != null) {
      _serverTimeOffset =
          update.serverNow! - DateTime.now().millisecondsSinceEpoch;
    }

    // Nếu đối thủ đã rời phòng giữa chừng
    if (newGameState.finishReason == 'left' ||
        newGameState.finishReason == 'abandoned') {
      add(const WordChainEvent.opponentLeft());
      return;
    }

    var remainingSeconds = 20;
    if (state.relaxed) {
      remainingSeconds = 0;
    } else if (newGameState.deadline != null) {
      final now = DateTime.now().millisecondsSinceEpoch;
      final currentServerTime = now + (_serverTimeOffset ?? 0);
      final remainingMs = newGameState.deadline! - currentServerTime;
      final remaining = (remainingMs / 1000).ceil();
      remainingSeconds = remaining.clamp(0, 20);
    }

    final enrichedMessages = newGameState.messages.map((m) {
      final key = m.entry.word.toLowerCase();
      if (_wordDetailsCache.containsKey(key)) {
        return m.copyWith(entry: _wordDetailsCache[key]!);
      }
      return m;
    }).toList();

    final resolvedSessionId =
        (update.sessionId != null && update.sessionId!.isNotEmpty)
        ? update.sessionId!
        : state.sessionId;

    final isNewMatchActive =
        newGameState.status == 'active' || newGameState.status == 'playing';

    safeEmit(
      state.copyWith(
        isLoading: false,
        isCheckingWord: false,
        gameState: newGameState.copyWith(messages: enrichedMessages),
        myPlayerIndex: update.playerIndex,
        rivalName: update.rivalName ?? state.rivalName,
        rivalAvatar: update.rivalAvatar ?? state.rivalAvatar,
        sessionId: resolvedSessionId,
        isRematchPending: !isNewMatchActive && state.isRematchPending,
        isRivalRematchReady: !isNewMatchActive && state.isRivalRematchReady,
        inputWord: isNewMatchActive ? '' : state.inputWord,
        rejectedReason: isNewMatchActive ? null : state.rejectedReason,
        errorMessage: null,
        remainingSeconds: remainingSeconds,
      ),
    );

    if (!state.relaxed &&
        (newGameState.status == 'active' || newGameState.status == 'playing')) {
      _startCountdown();
    } else if (newGameState.status == 'finished') {
      _stopCountdown();
    }

    // Tra cứu chi tiết từ điển cho các từ chưa có đầy đủ thông tin
    _enrichMessagesWithDetails(newGameState.messages);
  }

  Future<void> _enrichMessagesWithDetails(List<TurnMessage> messages) async {
    var hasNewEnrichment = false;
    for (final msg in messages) {
      final wordKey = msg.entry.word.toLowerCase();
      if (wordKey.isEmpty) continue;
      if (!_wordDetailsCache.containsKey(wordKey)) {
        try {
          final detailOutput = await _getWordUseCase.execute(
            GetWordInput(word: wordKey, lang: _language),
          );
          if (detailOutput.word.valid) {
            _wordDetailsCache[wordKey] = detailOutput.word;
            hasNewEnrichment = true;
          }
        } on Object catch (_) {}
      }
    }

    if (hasNewEnrichment && !isClosed) {
      final updatedMessages = state.gameState.messages.map((m) {
        final key = m.entry.word.toLowerCase();
        if (_wordDetailsCache.containsKey(key)) {
          return m.copyWith(entry: _wordDetailsCache[key]!);
        }
        return m;
      }).toList();

      safeEmit(
        state.copyWith(
          gameState: state.gameState.copyWith(messages: updatedMessages),
        ),
      );
    }
  }

  void _onWordCheckingChanged(
    _WordCheckingChanged event,
    Emitter<WordChainState> emit,
  ) {
    safeEmit(state.copyWith(isCheckingWord: event.isChecking));
  }

  void _onWordRejected(
    _WordRejected event,
    Emitter<WordChainState> emit,
  ) {
    safeEmit(
      state.copyWith(
        isCheckingWord: false,
        rejectedReason: event.penalty > 0
            ? 'Từ chưa hợp lệ hoặc đã dùng — '
                  'không mất tim (phạt ${event.penalty}s)!'
            : 'Từ chưa hợp lệ hoặc đã dùng — không mất tim',
      ),
    );
  }

  void _onRewardReceived(
    _RewardReceived event,
    Emitter<WordChainState> emit,
  ) {
    safeEmit(
      state.copyWith(
        reward: event.reward,
        sessionId: (event.sessionId != null && event.sessionId!.isNotEmpty)
            ? event.sessionId!
            : state.sessionId,
      ),
    );
  }

  void _onRematchWaiting(
    _RematchWaiting event,
    Emitter<WordChainState> emit,
  ) {
    final mySeat = state.myPlayerIndex;
    final rivalSeat = 1 - mySeat;
    final readyList = event.readyPlayers;
    final isMyPending = readyList.length > mySeat && readyList[mySeat];
    final isRivalReady = readyList.length > rivalSeat && readyList[rivalSeat];
    safeEmit(
      state.copyWith(
        isRematchPending: isMyPending,
        isRivalRematchReady: isRivalReady,
      ),
    );
  }

  void _onConnectionStateChanged(
    _ConnectionStateChanged event,
    Emitter<WordChainState> emit,
  ) {
    safeEmit(state.copyWith(connectionState: event.connectionState));
  }

  void _onErrorOccurred(
    _ErrorOccurred event,
    Emitter<WordChainState> emit,
  ) {
    safeEmit(
      state.copyWith(
        isLoading: false,
        isCheckingWord: false,
        errorMessage: event.message,
      ),
    );
  }

  void _onTick(
    _Tick event,
    Emitter<WordChainState> emit,
  ) {
    // Đóng băng đếm ngược nếu hệ thống đang kiểm tra từ điển
    if (state.isCheckingWord) return;

    // Trong chế độ Online / Room: Đồng bộ thời gian thực theo deadline của Server
    if (state.mode != WordChainGameMode.bot &&
        !state.relaxed &&
        state.gameState.deadline != null) {
      final now = DateTime.now().millisecondsSinceEpoch;
      final currentServerTime = now + (_serverTimeOffset ?? 0);
      final remainingMs = state.gameState.deadline! - currentServerTime;
      final remaining = (remainingMs / 1000).ceil().clamp(0, 20);
      safeEmit(state.copyWith(remainingSeconds: remaining));
      return;
    }

    if (state.remainingSeconds > 0) {
      safeEmit(state.copyWith(remainingSeconds: state.remainingSeconds - 1));
    } else {
      if (state.mode == WordChainGameMode.bot && state.isMyTurn) {
        // Hết giờ trong lượt chơi với Bot: trừ mạng
        // Theo tài liệu: Bị trừ 1 tim, vẫn giữ lượt và đồng hồ reset 20s
        final currentLives = List<int?>.from(state.gameState.lives);
        final playerLife = (currentLives[0] ?? 3) - 1;
        currentLives[0] = playerLife;

        final isLost = playerLife <= 0;
        safeEmit(
          state.copyWith(
            remainingSeconds: isLost ? 0 : 20,
            gameState: state.gameState.copyWith(
              lives: currentLives,
              status: isLost ? 'finished' : state.gameState.status,
              winner: isLost ? 1 : null,
              finishReason: isLost ? 'timeout' : null,
              turn: 0, // Vẫn giữ lượt theo quy tắc tài liệu!
            ),
          ),
        );
        if (isLost) {
          _stopCountdown();
        }
      }
    }
  }

  void _onWordChainOpponentLeft(
    _WordChainOpponentLeft event,
    Emitter<WordChainState> emit,
  ) {
    _stopCountdown();
    _botThinkingTimer?.cancel();
    // Giữ socket mở để nhận session_reward trao thưởng từ server.
    // Socket sẽ được đóng an toàn khi rời màn hình (close()).
    safeEmit(
      state.copyWith(
        isOpponentLeft: true,
        opponentLeftMessage: event.message ?? 'Đối thủ đã thoát khỏi trận đấu!',
        isCheckingWord: false,
        isLoading: false,
      ),
    );
  }

  FutureOr<void> _onSurrender(
    _Surrender event,
    Emitter<WordChainState> emit,
  ) {
    _stopCountdown();
    _botThinkingTimer?.cancel();
    if (state.mode == WordChainGameMode.bot) {
      safeEmit(
        state.copyWith(
          gameState: state.gameState.copyWith(
            status: 'finished',
            winner: 1,
            finishReason: 'surrender',
          ),
        ),
      );
    } else {
      return runBlocCatching(
        handleLoading: false,
        action: () async {
          await _sendChainSurrenderUseCase.execute(const EmptyInput());
        },
      );
    }
  }

  FutureOr<void> _onAppAway(
    _AppAway event,
    Emitter<WordChainState> emit,
  ) {
    if (state.mode != WordChainGameMode.bot &&
        !state.relaxed &&
        !state.isGameOver) {
      final awayId = DateTime.now().millisecondsSinceEpoch.toString();
      final sessionId = state.sessionId.isNotEmpty
          ? state.sessionId
          : (state.roomCode ?? state.gameState.revision.toString());
      return runBlocCatching(
        handleLoading: false,
        action: () async {
          await _sendChainAwayUseCase.execute(
            SendChainAwayInput(
              sessionId: sessionId,
              awayId: awayId,
            ),
          );
        },
      );
    }
  }

  FutureOr<void> _onRequestRematch(
    _RequestRematch event,
    Emitter<WordChainState> emit,
  ) {
    if (state.mode == WordChainGameMode.bot) {
      final uid =
          _currentUid ?? 'player_${DateTime.now().millisecondsSinceEpoch}';
      add(
        WordChainEvent.startBotGame(
          uid: uid,
          relaxed: state.relaxed,
          language: _language,
        ),
      );
    } else {
      final sessionId = state.sessionId.isNotEmpty
          ? state.sessionId
          : (state.roomCode ?? state.gameState.revision.toString());
      safeEmit(state.copyWith(isRematchPending: true));
      return runBlocCatching(
        handleLoading: false,
        action: () async {
          await _sendChainRematchUseCase.execute(
            SendChainRematchInput(sessionId),
          );
        },
      );
    }
  }

  @override
  Future<void> close() async {
    _stopCountdown();
    _botThinkingTimer?.cancel();
    await _gameStreamSubscription?.cancel();
    try {
      await _disconnectChainUseCase.execute(const EmptyInput());
    } on Object catch (_) {}
    return super.close();
  }
}
