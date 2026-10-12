part of 'word_chain_bloc.dart';

enum WordChainGameMode { bot, online, room }

@freezed
abstract class WordChainState with _$WordChainState {
  const factory WordChainState({
    // Trạng thái chung
    @Default(false) bool isLoading,
    @Default(false) bool isCheckingWord,
    String? errorMessage,
    String? rejectedReason,

    // Cấu hình chế độ chơi
    @Default(WordChainGameMode.bot) WordChainGameMode mode,
    @Default(false) bool relaxed,
    String? roomCode,
    @Default(0) int myPlayerIndex,

    // Trạng thái bàn đấu
    @Default(GameState()) GameState gameState,
    @Default('') String inputWord,
    @Default(20) int remainingSeconds,

    // Đối thủ & Phần thưởng
    @Default('Máy (Bot)') String rivalName,
    @Default('') String rivalAvatar,
    @Default(false) bool isOpponentLeft,
    String? opponentLeftMessage,
    Reward? reward,

    // Kết nối mạng
    @Default(SocketConnectionState.disconnected)
    SocketConnectionState connectionState,

    // Tái đấu & Session
    @Default('') String sessionId,
    @Default(false) bool isRematchPending,
    @Default(false) bool isRivalRematchReady,
  }) = _WordChainState;

  const WordChainState._();

  /// Kiểm tra có phải lượt của mình không
  bool get isMyTurn => gameState.turn == myPlayerIndex;

  /// Kiểm tra ván đấu đã kết thúc chưa
  bool get isGameOver =>
      gameState.status == 'finished' ||
      gameState.winner != null ||
      isOpponentLeft;
}
