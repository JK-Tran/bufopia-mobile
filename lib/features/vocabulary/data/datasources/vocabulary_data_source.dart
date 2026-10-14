import 'package:bufopia/features/vocabulary/data/models/battle_deck_data.dart';
import 'package:bufopia/features/vocabulary/data/models/battle_reward_data.dart';
import 'package:bufopia/features/vocabulary/data/models/feedback_data.dart';
import 'package:bufopia/features/vocabulary/data/models/match_record_data.dart';
import 'package:bufopia/features/vocabulary/data/models/vocabulary_data.dart';
import 'package:bufopia/features/vocabulary/data/models/word_profile_data.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:bufopia/shared/model/typedef.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class VocabularyDataSource {
  VocabularyDataSource(this._noneAuthAppServerApiClient);

  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;

  Future<VocabularyDataResponse?> getVocabulary() async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/vocabulary',
      decoder: (data) => VocabularyDataResponse.fromJson(data! as JSON),
    );
  }

  Future<BattleDeckDataResponse?> getDeck({
    required String topic,
    String? uid,
    String? opponentUid,
    int count = 15,
    String? recent,
  }) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/deck',
      queryParameters: {
        'topic': topic,
        if (uid != null && uid.isNotEmpty) 'uid': uid,
        if (opponentUid != null && opponentUid.isNotEmpty)
          'opponentUid': opponentUid,
        'count': count,
        if (recent != null && recent.isNotEmpty) 'recent': recent,
      },
      decoder: (data) => BattleDeckDataResponse.fromJson(data! as JSON),
    );
  }

  Future<bool> saveMatch(MatchRecordData match) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/matches',
      body: match.toJson(),
    );
    return response != null;
  }

  Future<BattleRewardDataResponse?> claimReward({
    required String uid,
    required bool isWin,
    required int correctCount,
    required int points,
  }) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/users/$uid/reward',
      body: {
        'isWin': isWin,
        'correctCount': correctCount,
        'points': points,
      },
      decoder: (data) => BattleRewardDataResponse.fromJson(data! as JSON),
    );
  }

  Future<WordProfilesDataResponse?> getProfiles(String uid) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/profiles/$uid',
      decoder: (data) => WordProfilesDataResponse.fromJson(data! as JSON),
    );
  }

  Future<bool> syncProfiles(
    String uid,
    List<WordProfileData> profiles,
  ) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/profiles/$uid',
      body: SyncProfilesRequestData(profiles: profiles).toJson(),
    );
    return response != null;
  }

  Future<FeedbackDataResponse?> sendFeedback(
    FeedbackData request,
  ) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/feedback',
      body: request.toJson(),
      decoder: (data) => FeedbackDataResponse.fromJson(data! as JSON),
    );
  }
}
