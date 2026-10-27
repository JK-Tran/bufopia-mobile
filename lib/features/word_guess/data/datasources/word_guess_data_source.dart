import 'package:bufopia/features/word_guess/data/models/deck_data.dart';
import 'package:bufopia/features/word_guess/data/models/practice_result_data.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:bufopia/shared/model/typedef.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class WordGuessDataSource {
  WordGuessDataSource(this._apiClient);

  final NoneAuthAppServerApiClient _apiClient;

  Options? _buildAuthOptions(String? token) {
    if (token == null || token.isEmpty) return null;
    return Options(
      headers: {
        'Authorization': 'Bearer $token',
        'X-Account-Token': token,
      },
    );
  }

  /// Lấy bộ đề luyện tập đoán từ (GET /api/deck)
  /// - `activity=word-guess`: Kích hoạt bộ lọc isWordGuessEligible trên BE
  ///   (3-14 ký tự, có id và vi).
  /// - `reward=1`: Yêu cầu tạo practiceSessionId trong DB
  ///   bufo_practice_sessions.
  Future<DeckData?> getDeck({
    required String topic,
    String? uid,
    int count = 20,
    String? recent,
    String? token,
    String? difficulty,
  }) async {
    return _apiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/deck',
      options: _buildAuthOptions(token),
      queryParameters: {
        'topic': topic,
        'activity': 'word-guess',
        'reward': 1,
        'count': count,
        if (uid != null && uid.isNotEmpty) 'uid': uid,
        if (recent != null && recent.isNotEmpty) 'recent': recent,
        if (difficulty != null && difficulty.isNotEmpty)
          'difficulty': difficulty,
      },
      decoder: (data) => DeckData.fromJson(data! as JSON),
    );
  }

  /// Xác thực đáp án luyện tập Solo & cộng XP (POST /api/practice)
  /// Body: { uid, sessionId, index, answer, activity: 'word-guess' }
  /// Trả lời đúng được cộng 5 XP (rewardService.js)
  Future<PracticeResultData?> verifyPracticeWord({
    required String uid,
    required String sessionId,
    required int index,
    required String answer,
    String? token,
  }) async {
    return _apiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/practice',
      options: _buildAuthOptions(token),
      body: {
        'uid': uid,
        'activity': 'word-guess',
        'sessionId': sessionId,
        'index': index,
        'answer': answer,
      },
      decoder: (data) => PracticeResultData.fromJson(data! as JSON),
    );
  }

  /// Tra cứu phòng chơi: GET /api/room-lookup/:roomCode?game=guess&uid={uid}
  Future<Map<String, dynamic>?> lookupRoom({
    required String roomCode,
    required String uid,
    String? token,
  }) async {
    return _apiClient.request<Map<String, dynamic>, Map<String, dynamic>>(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/room-lookup/$roomCode',
      options: _buildAuthOptions(token),
      queryParameters: {
        'game': 'guess',
        'uid': uid,
      },
      decoder: (data) =>
          data is Map<String, dynamic> ? data : <String, dynamic>{},
    );
  }

  /// Lưu kết quả trận đấu: POST /api/matches
  Future<bool> saveMatch({
    required Map<String, dynamic> matchPayload,
    String? token,
  }) async {
    final response = await _apiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/matches',
      options: _buildAuthOptions(token),
      body: matchPayload,
    );
    return response != null;
  }

  /// Lưu từ vựng vào kho cá nhân theo Bộ bài (Deck): POST /api/vault
  Future<bool> saveToVault({
    required String uid,
    required String title,
    required List<Map<String, dynamic>> words,
    String? description,
    String? token,
  }) async {
    final response = await _apiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/vault',
      options: _buildAuthOptions(token),
      body: {
        'uid': uid,
        'title': title,
        'description': description ?? 'Từ vựng Word Guess',
        'words': words,
      },
    );
    return response != null;
  }

  /// Tra cứu từ điển: Định tuyến URL theo path GET /api/dictionary/{word}
  /// (KHÔNG dùng query parameter ?word={word} để tránh lỗi 400 từ BE)
  Future<Map<String, dynamic>?> lookupDictionary(
    String word, {
    int details = 1,
    String lang = 'en',
  }) async {
    return _apiClient.request<Map<String, dynamic>, Map<String, dynamic>>(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/dictionary/$word',
      queryParameters: {
        'details': details,
        'lang': lang,
      },
      decoder: (data) =>
          data is Map<String, dynamic> ? data : <String, dynamic>{},
    );
  }
}
