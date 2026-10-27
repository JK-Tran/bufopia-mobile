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
}
