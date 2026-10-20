import 'package:bufopia/features/word_guess/domain/entities/deck.dart';
import 'package:bufopia/features/word_guess/domain/entities/game_event.dart';
import 'package:bufopia/features/word_guess/domain/entities/practice_result.dart';

abstract class WordGuessRepository {
  /// Lấy bộ đề luyện tập (GET /api/deck?activity=word-guess)
  Future<Deck> getDeck({
    required String topic,
    String? uid,
    int count = 20,
    String? recent,
  });

  /// Xác thực đáp án luyện tập Solo & nhận XP (POST /api/practice)
  Future<PracticeResult> verifyPracticeWord({
    required String uid,
    required String sessionId,
    required int index,
    required String answer,
  });

  /// Tra cứu từ điển theo path: GET /api/dictionary/{word}
  Future<Map<String, dynamic>?> lookupDictionary(
    String word, {
    int details = 1,
    String lang = 'en',
  });

  /// Tra cứu phòng chơi (GET /api/room-lookup/:roomCode?game=guess&uid={uid})
  Future<Map<String, dynamic>?> lookupRoom({
    required String roomCode,
    required String uid,
    String? token,
  });

  /// Lưu kết quả trận đấu (POST /api/matches)
  Future<bool> saveMatch({
    required Map<String, dynamic> matchPayload,
    String? token,
  });

  /// Lưu bộ từ vựng vào kho cá nhân (POST /api/vault)
  Future<bool> saveToVault({
    required String uid,
    required String title,
    required List<Map<String, dynamic>> words,
    String? description,
    String? token,
  });

  /// Kết nối tìm trận trực tuyến qua WebSocket (/ws/guess-matchmake)
  Future<void> connectMatchmake({
    required String uid,
    required String name,
    required String topic,
    String? token,
    String? avatar,
  });

  /// Tham gia phòng chơi qua WebSocket (/ws/guess/{roomCode})
  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    required String name,
    String? token,
    String? avatar,
  });

  /// Gửi đáp án đoán từ (bắt buộc đúng sessionId và roundIndex trùng
  /// currentFrame)
  void sendGuess({
    required String word,
    required String sessionId,
    required int roundIndex,
  });

  /// Gửi yêu cầu bỏ qua câu hỏi (skip)
  void sendSkip({
    required String sessionId,
    required int roundIndex,
  });

  /// Biểu quyết đồng ý hoặc từ chối skip
  void sendVote({
    required String proposalId,
    required bool agree,
    required String sessionId,
    required int roundIndex,
  });

  /// Sẵn sàng / Hủy sẵn sàng ở sảnh chờ
  void sendToggleReady();

  /// Chủ phòng bắt đầu ván đấu
  void sendStartGame();

  /// Thay đổi cấu hình phòng (chủ phòng)
  void sendUpdateConfig({
    String? topicId,
    int? durationSeconds,
  });

  /// Xin kết thúc ván chơi (type: "end")
  void sendEnd({required String sessionId});

  /// Gửi tin nhắn trò chuyện
  void sendChat(String text);

  /// Chủ phòng yêu cầu chơi lại khi ván kết thúc (sau cooldown 5s)
  void sendRestart({required String sessionId});

  /// Rời phòng
  void sendLeave();

  /// Hủy tìm trận (Matchmaker)
  void sendCancelMatchmake();

  /// Ngắt kết nối WebSocket
  Future<void> disconnect();

  /// Stream nhận sự kiện thời gian thực từ ván đấu
  Stream<GameEvent> get gameEventStream;
}
