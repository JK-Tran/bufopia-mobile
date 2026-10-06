part of 'vocabulary_bloc.dart';

@freezed
abstract class VocabularyEvent with _$VocabularyEvent {
  const factory VocabularyEvent.initDeck({
    @Default('daily') String topic,
    String? uid,
    @Default(true) bool isBotOpponent,
    String? roomCode,
    String? initialOpponentName,
    String? initialOpponentAvatar,
  }) = _InitDeck;

  const factory VocabularyEvent.selectAnswer({
    required bool isPlayer1,
    required String selectedWord,
  }) = _SelectAnswer;

  const factory VocabularyEvent.tick() = _Tick;

  const factory VocabularyEvent.nextQuestion() = _NextQuestion;

  const factory VocabularyEvent.botAnswer() = _BotAnswer;

  const factory VocabularyEvent.finishGame() = _FinishGame;

  const factory VocabularyEvent.restartGame() = _RestartGame;

  const factory VocabularyEvent.socketConnected({
    required int playerIndex,
    required String rivalName,
    required String rivalAvatar,
  }) = _SocketConnected;

  const factory VocabularyEvent.socketPlayerJoined({
    required String name,
    required String avatar,
  }) = _SocketPlayerJoined;

  const factory VocabularyEvent.socketMatchStart({
    required List<Map<String, dynamic>> rawDeck,
    required int playerIndex,
    required String rivalName,
    required String rivalAvatar,
    required int matchRound,
  }) = _SocketMatchStart;

  const factory VocabularyEvent.socketSyncState({
    required int roundIndex,
    required int startedAt,
    required List<int> scores,
    @Default([]) List<int> streaks,
  }) = _SocketSyncState;

  const factory VocabularyEvent.socketAnswerResult({
    required int playerIndex,
    required String optionId,
    required bool isCorrect,
    required List<int> scores,
    @Default(1350) int revealTime,
  }) = _SocketAnswerResult;

  const factory VocabularyEvent.socketRoundTimeout() = _SocketRoundTimeout;

  const factory VocabularyEvent.socketNextRound({
    required int roundIndex,
    required int startedAt,
    @Default([]) List<int> scores,
  }) = _SocketNextRound;

  const factory VocabularyEvent.socketMatchFinished({
    required dynamic winner,
    @Default([]) List<int> scores,
  }) = _SocketMatchFinished;

  const factory VocabularyEvent.socketOpponentAnswer({
    required int questionIndex,
    required String selectedWord,
    required bool isCorrect,
    required int score,
  }) = _SocketOpponentAnswer;

  const factory VocabularyEvent.socketRoundSync({
    required int round,
  }) = _SocketRoundSync;

  const factory VocabularyEvent.socketOpponentLeft() = _SocketOpponentLeft;
}
