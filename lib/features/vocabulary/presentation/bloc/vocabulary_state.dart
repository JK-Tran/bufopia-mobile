part of 'vocabulary_bloc.dart';

@freezed
abstract class VocabularyState with _$VocabularyState {
  const factory VocabularyState({
    @Default(false) bool isLoading,
    String? errorMessage,
    BattleDeckEntity? deckEntity,
    @Default([]) List<BattleQuestionEntity> questions,
    @Default(0) int currentQuestionIndex,
    @Default(0) int player1Score,
    @Default(0) int player2Score,
    @Default(0) int correctCountP1,
    @Default(10) int remainingSeconds,
    @Default(false) bool isRoundLocked,
    String? selectedWordP1,
    String? selectedWordP2,
    @Default(false) bool isGameOver,
    @Default(false) bool isSavingReward,
    BattleRewardEntity? reward,
    @Default([]) List<String> optionsP1,
    @Default([]) List<String> optionsP2,
    @Default(true) bool isBotOpponent,
    String? roomCode,
    String? opponentName,
    String? opponentAvatar,
    @Default(false) bool isOpponentConnected,
    @Default(false) bool isOpponentLeft,
    String? opponentLeftMessage,
    @Default(0) int playerIndex,
    @Default(1) int matchRound,
    @Default(0) int startedAt,
    String? selectedOptionIdP1,
    String? selectedOptionIdP2,
    bool? isP1Correct,
    bool? isP2Correct,
    @Default(false) bool isWaitingForReady,
    @Default('daily') String topic,
    String? currentUid,
    @Default({}) Map<String, bool> answersP1,
  }) = _VocabularyState;

  const VocabularyState._();

  BattleQuestionEntity? get currentQuestion {
    if (questions.isEmpty || currentQuestionIndex >= questions.length) {
      return null;
    }
    return questions[currentQuestionIndex];
  }

  @override
  String toString() {
    return 'VocabularyState(round: ${currentQuestionIndex + 1}/${questions.length}, '
        '${remainingSeconds}s, '
        'P1: $player1Score, P2: $player2Score, '
        'P1Choice: $selectedWordP1, P2Choice: $selectedWordP2, '
        'locked: $isRoundLocked, over: $isGameOver, '
        'reward: ${reward?.gainedXp}xp)';
  }
}
