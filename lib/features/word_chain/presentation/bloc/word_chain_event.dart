part of 'word_chain_bloc.dart';

@freezed
abstract class WordChainEvent with _$WordChainEvent {
  // ── 1. Khởi tạo & Kết nối trận đấu ────────────────────────────
  /// Bắt đầu chơi với Bot (Luyện tập solo qua REST API)
  const factory WordChainEvent.startBotGame({
    required String uid,
    @Default(false) bool relaxed,
    @Default('en') String language,
  }) = _StartBotGame;

  /// Tìm trận 1v1 ngẫu nhiên qua WebSocket (Online Matchmake)
  const factory WordChainEvent.startOnlineMatchmake({
    required String uid,
    required String name,
    String? avatar,
    @Default(false) bool relaxed,
    @Default('en') String language,
  }) = _StartOnlineMatchmake;

  /// Vào phòng chơi bằng mã phòng qua WebSocket (Invite Room)
  const factory WordChainEvent.joinRoom({
    required String roomCode,
    required String uid,
    required String name,
    String? avatar,
    @Default(false) bool relaxed,
    @Default('en') String language,
  }) = _JoinRoom;

  // ── 2. Thao tác của người chơi trong trận ──────────────────────
  /// Thay đổi từ đang gõ trong ô textfield
  const factory WordChainEvent.inputWordChanged(String word) =
      _InputWordChanged;

  /// Bấm nút gửi từ
  const factory WordChainEvent.submitWord() = _SubmitWord;

  /// Gửi emoji hoặc tin nhắn chat
  const factory WordChainEvent.sendChat(String message) = _SendChat;

  /// Đầu hàng / Thoát trận
  const factory WordChainEvent.surrender() = _Surrender;

  /// Người chơi rời tab / ứng dụng (away)
  const factory WordChainEvent.appAway() = _AppAway;

  /// Yêu cầu tái đấu
  const factory WordChainEvent.requestRematch() = _RequestRematch;

  // ── 3. Sự kiện Domain nhận từ Game Stream (Clean Architecture) ───
  /// Cập nhật trạng thái trận đấu từ server
  const factory WordChainEvent.chainStateUpdated(
    ChainStateUpdate update,
  ) = _ChainStateUpdated;

  /// Trạng thái đang kiểm tra từ từ server
  const factory WordChainEvent.wordCheckingChanged({
    required bool isChecking,
  }) = _WordCheckingChanged;

  /// Từ bị từ chối kèm thời gian phạt (giây)
  const factory WordChainEvent.wordRejected({
    required int penalty,
  }) = _WordRejected;

  /// Nhận phần thưởng sau ván đấu
  const factory WordChainEvent.rewardReceived({
    required Reward reward,
    String? sessionId,
  }) = _RewardReceived;

  /// Trạng thái sẵn sàng chơi lại từ server (rematch_waiting)
  const factory WordChainEvent.rematchWaiting({
    required List<bool> readyPlayers,
  }) = _RematchWaiting;

  /// Cập nhật trạng thái kết nối mạng WebSocket
  const factory WordChainEvent.connectionStateChanged(
    SocketConnectionState connectionState,
  ) = _ConnectionStateChanged;

  /// Đối thủ rời trận đấu giữa chừng
  const factory WordChainEvent.opponentLeft([String? message]) =
      _WordChainOpponentLeft;

  /// Lỗi xảy ra trong quá trình kết nối / chơi
  const factory WordChainEvent.errorOccurred(String message) =
      _ErrorOccurred;

  // ── 4. Sự kiện đếm giờ & Bot solo ──────────────────────────────
  /// Đếm ngược đồng hồ mỗi giây (trong chế độ có tính giờ)
  const factory WordChainEvent.tick() = _Tick;

  /// Lượt đi của Bot (khi chơi solo)
  const factory WordChainEvent.botTurn() = _BotTurn;
}
