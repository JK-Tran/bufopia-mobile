part of 'word_guess_bloc.dart';

@freezed
abstract class WordGuessEvent with _$WordGuessEvent {
  // ── 1. Solo Practice Mode (REST API) ───────────────────────────
  /// Bắt đầu luyện tập Solo
  const factory WordGuessEvent.startPractice({
    required String topic,
    String? uid,
    @Default(20) int count,
    String? difficulty,
  }) = _StartPractice;

  /// Nộp đáp án trong chế độ Solo
  const factory WordGuessEvent.submitPracticeAnswer() = _SubmitPracticeAnswer;

  /// Bỏ qua từ hiện tại trong chế độ Solo
  const factory WordGuessEvent.skipPracticeQuestion() = _SkipPracticeQuestion;

  /// Timer tự động mở gợi ý chữ cái (mỗi 12 giây mở 1 chữ)
  const factory WordGuessEvent.autoHintTick() = _AutoHintTick;

  // ── 2. Online Multiplayer Mode (WebSocket) ─────────────────────
  /// Bắt đầu tìm trận trực tuyến 1v1 ngẫu nhiên (/ws/guess-matchmake)
  const factory WordGuessEvent.startOnlineMatchmake({
    required String uid,
    required String name,
    required String topic,
    String? avatar,
    String? token,
    String? difficulty,
  }) = _StartOnlineMatchmake;

  /// Hủy tìm trận ngẫu nhiên
  const factory WordGuessEvent.cancelMatchmake() = _CancelMatchmake;

  /// Vào phòng chơi bằng mã phòng (/ws/guess/{roomCode})
  const factory WordGuessEvent.joinRoom({
    required String roomCode,
    required String uid,
    required String name,
    String? avatar,
    String? token,
    String? difficulty,
    @Default(false) bool isMatchmaking,
  }) = _JoinRoom;

  /// Sẵn sàng / Hủy sẵn sàng ở sảnh chờ
  const factory WordGuessEvent.toggleReady() = _ToggleReady;

  /// Chủ phòng bắt đầu ván đấu
  const factory WordGuessEvent.startGame() = _StartGame;

  /// Thay đổi cấu hình phòng
  const factory WordGuessEvent.updateConfig({
    String? topicId,
    int? durationSeconds,
  }) = _UpdateConfig;

  /// Bấm nộp từ đoán trong phòng thi đấu
  const factory WordGuessEvent.submitGuess() = _SubmitGuess;

  /// Đề xuất biểu quyết bỏ qua từ (Skip)
  const factory WordGuessEvent.skipWord() = _SkipWord;

  /// Biểu quyết đồng ý hoặc từ chối Skip
  const factory WordGuessEvent.voteSkip({
    required String proposalId,
    required bool agree,
  }) = _VoteSkip;

  /// Xin kết thúc ván thi đấu (type: "end")
  const factory WordGuessEvent.endGame() = _EndGame;

  /// Gửi tin nhắn trò chuyện
  const factory WordGuessEvent.sendChat(String text) = _SendChat;

  /// Chủ phòng yêu cầu chơi lại khi kết thúc ván
  const factory WordGuessEvent.restartGame() = _RestartGame;

  /// Rời phòng hoặc thoát trận
  const factory WordGuessEvent.leaveGame() = _LeaveGame;

  /// Chuyển từ phòng nhiều người sang tự chơi 1 mình (Solo Practice)
  /// khi đối thủ thoát phòng
  const factory WordGuessEvent.switchToSolo() = _SwitchToSolo;

  // ── 3. Tương tác UI & Bộ đếm thời gian ──────────────────────────
  /// Thay đổi ký tự đang nhập trong ô đoán từ
  const factory WordGuessEvent.inputWordChanged(String word) =
      _InputWordChanged;

  /// Đồng hồ đếm ngược mỗi giây
  const factory WordGuessEvent.tick() = _Tick;

  /// Chuyển câu hỏi sau khi kết thúc độ trễ hiển thị (1800ms)
  const factory WordGuessEvent.delayNextRoundFinished() =
      _DelayNextRoundFinished;

  // ── 4. Xử lý luồng sự kiện Domain Stream (Clean Architecture) ───
  /// Sự kiện nhận từ GameEvent Stream của WebSocket
  const factory WordGuessEvent.gameEventReceived(GameEvent event) =
      _GameEventReceived;
}
