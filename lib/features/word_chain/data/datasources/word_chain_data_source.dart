import 'package:bufopia/features/word_chain/data/models/reward_data.dart';
import 'package:bufopia/features/word_chain/data/models/session_data.dart';
import 'package:bufopia/features/word_chain/data/models/word_data.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:bufopia/shared/model/typedef.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class WordChainDataSource {
  WordChainDataSource(this._noneAuthAppServerApiClient);

  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;

  /// Tra cứu từ điển & kiểm tra tính hợp lệ của từ (GET /api/dictionary/:word)
  Future<WordData?> lookupWord(
    String word, {
    String lexicon = 'chain-v3',
    int details = 1,
    String lang = 'en',
  }) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/dictionary/$word',
      queryParameters: {
        'lexicon': lexicon,
        'details': details,
        if (lang != 'en') 'lang': lang,
      },
      decoder: (data) => WordData.fromJson(data! as JSON),
    );
  }

  /// Gợi ý từ cho Bot khi chơi với máy (GET /api/dictionary/suggest)
  Future<WordData?> getBotSuggestion({
    required String letter,
    List<String>? exclude,
    String lang = 'en',
  }) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/dictionary/suggest',
      queryParameters: {
        'letter': letter,
        'lexicon': 'chain-v3',
        if (exclude != null && exclude.isNotEmpty) 'exclude': exclude.join(','),
        if (lang != 'en') 'lang': lang,
      },
      decoder: (data) => WordData.fromJson(data! as JSON),
    );
  }

  /// Khởi tạo phiên luyện tập Solo Bot (POST /api/practice - action: start)
  Future<SessionData?> startPracticeSession({
    required String uid,
    String activity = 'word-chain',
    String language = 'en',
  }) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/practice',
      body: {
        'uid': uid,
        'activity': activity,
        'action': 'start',
        'language': language,
      },
      decoder: (data) => SessionData.fromJson(data! as JSON),
    );
  }

  /// Gửi từ xác nhận & nhận thưởng XP ở chế độ Solo (POST /api/practice)
  Future<RewardData?> verifyPracticeWord({
    required String uid,
    required String sessionId,
    required int index,
    required String answer,
    String? bridgeWord,
  }) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/practice',
      body: {
        'uid': uid,
        'activity': 'word-chain',
        'sessionId': sessionId,
        'index': index,
        'answer': answer,
        if (bridgeWord != null && bridgeWord.isNotEmpty)
          'bridgeWord': bridgeWord,
      },
      decoder: (data) => RewardData.fromJson(data! as JSON),
    );
  }

  /// Lấy danh sách đối thủ gần đây và lời mời thi đấu (GET /api/social/state)
  Future<Map<String, dynamic>?> getSocialState({
    required String uid,
    String activity = 'chain',
    String language = 'vi',
  }) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/social/state',
      queryParameters: {
        'uid': uid,
        'activity': activity,
        'language': language,
      },
    );
    if (response is Map<String, dynamic>) {
      return response;
    }
    return null;
  }

  /// Gửi lời mời thi đấu đến bạn bè/đối thủ (POST /api/social/invite)
  Future<bool> sendSocialInvite({
    required String uid,
    required String targetUid,
    required String roomCode,
    String activity = 'chain',
    String language = 'vi',
  }) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/social/invite',
      queryParameters: {'uid': uid},
      body: {
        'targetUid': targetUid,
        'roomCode': roomCode,
        'activity': activity,
        'language': language,
      },
    );
    return response != null;
  }

  /// Chấp nhận lời mời thi đấu (POST /api/social/accept)
  Future<String?> acceptSocialInvite({
    required String uid,
    required String invitationId,
    String activity = 'chain',
    String language = 'vi',
  }) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/social/accept',
      queryParameters: {'uid': uid},
      body: {
        'id': invitationId,
        'activity': activity,
        'language': language,
      },
    );
    if (response is Map<String, dynamic>) {
      return response['roomCode']?.toString();
    }
    return null;
  }

  /// Bỏ qua / từ chối lời mời (POST /api/social/dismiss)
  Future<bool> dismissSocialInvite({
    required String uid,
    required String invitationId,
  }) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/social/dismiss',
      queryParameters: {'uid': uid},
      body: {
        'id': invitationId,
      },
    );
    return response != null;
  }

  /// Kiểm tra thông tin phòng trước khi vào (GET /api/rooms/:roomCode)
  Future<bool> checkRoom({required String roomCode}) async {
    try {
      final response = await _noneAuthAppServerApiClient.request(
        method: RestMethod.get,
        successResponseMapperType: SuccessResponseMapperType.jsonObject,
        path: '/rooms/$roomCode',
      );
      return response != null;
    } on Object catch (_) {
      return false;
    }
  }
}
