part of 'word_guess_bloc.dart';

enum WordGuessGameMode { practice, matchmake, room }

@freezed
abstract class WordGuessState with _$WordGuessState {
  const factory WordGuessState({
    // Trạng thái chung
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default(false) bool isDelayingNextRound,
    String? errorMessage,
    String? infoMessage,
    String? lastWrongGuess,

    // Chế độ chơi & cấu hình
    @Default(WordGuessGameMode.practice) WordGuessGameMode mode,
    @Default('daily') String topicId,
    @Default('medium') String difficulty,
    @Default('') String myUid,
    @Default('') String myName,
    @Default('') String myAvatar,
    String? roomCode,

    // Solo Practice Mode (Luyện tập qua REST API)
    Deck? deck,
    @Default(0) int currentQuestionIndex,
    @Default('') String practiceSessionId,
    @Default('') String practiceMaskedWord,
    @Default([]) List<int> practiceRevealedIndices,
    @Default(0) int practiceCorrectCount,
    @Default(0) int practiceEarnedXp,
    PracticeResult? lastPracticeResult,

    // Online Multiplayer Mode (Qua WebSocket)
    @Default(GameState()) GameState gameState,
    MatchInfo? matchInfo,
    @Default(SocketConnectionState.disconnected)
    SocketConnectionState connectionState,
    @Default(false) bool isQueued,
    @Default([]) List<String> chatMessages,

    // Ô nhập liệu của người chơi
    @Default('') String inputWord,
    @Default(0) int roundTimeLeft,
    @Default(0) int autoHintSecondsLeft,

    // Trạng thái hiển thị banner chúc mừng vòng chơi (Chuẩn Web Screenshot 2)
    String? solvedBannerWord,
    String? solvedBannerSolver,
    @Default(false) bool isSolvedByMe,

    // Trạng thái đối thủ thoát phòng
    String? opponentLeftRivalName,
  }) = _WordGuessState;

  const WordGuessState._();

  /// Lấy từ hiện tại trong chế độ Solo Practice
  Word? get currentPracticeWord {
    if (deck == null || deck!.words.isEmpty) return null;
    if (currentQuestionIndex < 0 ||
        currentQuestionIndex >= deck!.words.length) {
      return null;
    }
    return deck!.words[currentQuestionIndex];
  }

  /// Kiểm tra xem người chơi hiện tại có phải chủ phòng không
  bool get isHost {
    final player = gameState.players.where((p) => p.uid == myUid).firstOrNull;
    return player?.isHost ?? false;
  }

  /// Kiểm tra xem người chơi hiện tại đã sẵn sàng chưa
  bool get isReady {
    final player = gameState.players.where((p) => p.uid == myUid).firstOrNull;
    return player?.isReady ?? false;
  }

  /// Kiểm tra ván đấu đã kết thúc chưa
  bool get isGameOver {
    if (mode == WordGuessGameMode.practice) {
      if (deck == null) return false;
      return currentQuestionIndex >= deck!.words.length &&
          deck!.words.isNotEmpty;
    }
    return gameState.status == 'finished';
  }

  /// Kiểm tra xem có đang chơi chế độ Solo hay không
  bool get isSolo => mode == WordGuessGameMode.practice;

  /// Tổng hợp kết quả ván đấu (Clean Domain Entity)
  WordGuessResult get result {
    final resolvedHistory = _resolveHistory();
    final words = _resolveWords(resolvedHistory);
    final skipped = _resolveSkipped(resolvedHistory);
    final count = isSolo ? practiceCorrectCount : gameState.totalWordsFound;
    final xp = isSolo ? practiceEarnedXp : (count * 5);

    return WordGuessResult(
      wordsPlayed: words,
      history: resolvedHistory,
      skippedWords: skipped,
      foundCount: count,
      earnedXp: xp,
    );
  }

  List<HistoryItem> _resolveHistory() {
    final list = [...gameState.history];
    if (gameState.wordsSummary.isNotEmpty) {
      for (final s in gameState.wordsSummary) {
        final item = s.toSummaryHistoryItem();
        if (item.word.isEmpty) continue;

        final idx = list.indexWhere(
          (h) => h.word.trim().toLowerCase() == item.word.toLowerCase(),
        );
        if (idx == -1) {
          list.add(item);
        } else if (list[idx].playerUid.isEmpty &&
            list[idx].playerName.isEmpty) {
          list[idx] = list[idx].copyWith(
            playerUid: item.playerUid,
            playerName: item.playerName,
          );
        }
      }
    }
    return list;
  }

  List<WordInfo> _resolveWords(List<HistoryItem> history) {
    if (isSolo && deck != null) {
      return deck!.words.asMap().entries.map((e) {
        final w = e.value;
        return WordInfo(
          index: int.tryParse(w.id) ?? e.key,
          en: w.en,
          vi: w.vi,
          phonetic: w.phonetic,
          masked: w.en,
        );
      }).toList();
    }

    if (gameState.wordsSummary.isNotEmpty) {
      return gameState.wordsSummary
          .map((s) => s.toSummaryWordInfo())
          .where((w) => (w.en ?? '').isNotEmpty)
          .toList();
    }

    return history.map((h) => WordInfo(
      en: h.word,
      vi: h.meaning,
      phonetic: h.phonetic,
      masked: h.word,
    )).toList();
  }

  Set<String> _resolveSkipped(List<HistoryItem> history) {
    final skipped = history
        .where((h) => h.skipped || !h.isSuccess)
        .map((h) => h.word.toLowerCase().trim())
        .toSet();

    if (isSolo && deck != null) {
      final solvedWords = history
          .where((h) => h.isSuccess && !h.skipped)
          .map((h) => h.word.toLowerCase().trim())
          .toSet();
      for (final w in deck!.words) {
        final key = w.en.toLowerCase().trim();
        if (!solvedWords.contains(key)) {
          skipped.add(key);
        }
      }
    }
    return skipped;
  }
}

extension _WordSummaryMapX on Map<String, dynamic> {
  String get _summaryWord =>
      (this['en'] as String? ?? this['word'] as String? ?? '').trim();
  String get _summaryMeaning =>
      (this['vi'] as String? ?? this['meaning'] as String? ?? '').trim();
  String get _summaryPhonetic => (this['phonetic'] as String? ?? '').trim();
  String get _summaryExample =>
      (this['example'] as String? ?? this['exampleEn'] as String? ?? '').trim();
  String get _summaryExampleVi => (this['exampleVi'] as String? ?? '').trim();

  bool get _isSummarySkipped =>
      this['skipped'] == true ||
      this['isSkipped'] == true ||
      this['status'] == 'skipped' ||
      this['result'] == 'skipped';

  String get _solverUid =>
      (this['solverUid'] as String? ??
              this['solvedByUid'] as String? ??
              this['playerUid'] as String? ??
              this['uid'] as String? ??
              '')
          .trim();

  String get _solverName =>
      (this['solverName'] as String? ??
              this['solvedByName'] as String? ??
              this['playerName'] as String? ??
              this['name'] as String? ??
              '')
          .trim();

  WordInfo toSummaryWordInfo() {
    final ex = _summaryExampleVi.isNotEmpty
        ? '$_summaryExample\n$_summaryExampleVi'
        : _summaryExample;
    return WordInfo(
      en: _summaryWord,
      vi: _summaryMeaning,
      phonetic: _summaryPhonetic,
      example: ex.isNotEmpty ? ex : null,
      masked: _summaryWord,
    );
  }

  HistoryItem toSummaryHistoryItem() {
    return HistoryItem(
      word: _summaryWord,
      meaning: _summaryMeaning,
      phonetic: _summaryPhonetic,
      playerUid: _solverUid,
      playerName: _solverName,
      isCorrect: !_isSummarySkipped,
      skipped: _isSummarySkipped,
    );
  }
}
