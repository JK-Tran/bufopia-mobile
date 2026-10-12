import 'package:bufopia/features/word_chain/domain/entities/chain_game_event.dart';
import 'package:bufopia/features/word_chain/domain/entities/reward.dart';
import 'package:bufopia/features/word_chain/domain/entities/session.dart';
import 'package:bufopia/features/word_chain/domain/entities/word.dart';

abstract class WordChainRepository {
  /// Tra cứu từ điển & kiểm tra tính hợp lệ của từ
  Future<Word> lookupWord(
    String word, {
    String lexicon = 'chain-v3',
    int details = 1,
    String lang = 'en',
  });

  /// Gợi ý từ cho Bot
  Future<Word> getBotSuggestion({
    required String letter,
    List<String>? exclude,
    String lang = 'en',
  });

  /// Bắt đầu phiên luyện tập Solo Bot
  Future<Session> startPractice({
    required String uid,
    String language = 'en',
  });

  /// Xác nhận từ & nhận thưởng XP trong phiên Solo Bot
  Future<Reward> verifyPracticeWord({
    required String uid,
    required String sessionId,
    required int index,
    required String answer,
    String? bridgeWord,
  });

  /// Kết nối tìm trận trực tuyến qua WebSocket
  Future<void> connectMatchmake({
    required String uid,
    required String name,
    String? token,
    String? avatar,
    bool relaxed = false,
    String lang = 'en',
  });

  /// Tham gia phòng thi đấu bằng mã phòng qua WebSocket
  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    required String name,
    String? token,
    String? avatar,
    bool relaxed = false,
    String lang = 'en',
  });

  /// Gửi từ nối lên máy chủ qua WebSocket
  void sendWord({required String word, required int turnId});

  /// Gửi tin nhắn hoặc biểu cảm qua WebSocket
  void sendChat(String text);

  /// Gửi sự kiện rời ứng dụng (away forfeit) qua WebSocket
  void sendAway({required String sessionId, required String awayId});

  /// Đầu hàng trận đấu qua WebSocket
  void sendSurrender();

  /// Yêu cầu tái đấu qua WebSocket
  void sendRematch({required String sessionId});

  /// Ngắt kết nối WebSocket
  Future<void> disconnect();

  /// Stream nhận sự kiện thời gian thực từ trận đấu (Domain Stream)
  Stream<ChainGameEvent> get gameEventStream;
}
