import 'package:bufopia/features/vocabulary/data/models/battle_deck_response_model.dart';
import 'package:bufopia/features/vocabulary/data/models/battle_reward_response_model.dart';
import 'package:bufopia/features/vocabulary/data/models/match_record_model.dart';
import 'package:bufopia/features/vocabulary/data/models/vocabulary_response_model.dart';
import 'package:bufopia/features/vocabulary/data/models/word_profile_model.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:bufopia/shared/model/typedef.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class VocabularyDataSource {
  VocabularyDataSource(this._noneAuthAppServerApiClient);

  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;

  Future<VocabularyResponseModel?> getVocabulary() async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/vocabulary',
      decoder: (data) => VocabularyResponseModel.fromJson(data! as JSON),
    );
  }

  Future<BattleDeckResponseModel?> getDeck({
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
      decoder: (data) => BattleDeckResponseModel.fromJson(data! as JSON),
    );
  }

  Future<bool> saveMatch(MatchRecordModel match) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/matches',
      body: match.toJson(),
    );
    return response != null;
  }

  Future<BattleRewardResponseModel?> claimReward({
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
      decoder: (data) => BattleRewardResponseModel.fromJson(data! as JSON),
    );
  }

  Future<WordProfilesResponseModel?> getProfiles(String uid) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/profiles/$uid',
      decoder: (data) => WordProfilesResponseModel.fromJson(data! as JSON),
    );
  }

  Future<bool> syncProfiles(
    String uid,
    List<WordProfileModel> profiles,
  ) async {
    final response = await _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/profiles/$uid',
      body: SyncProfilesRequestModel(profiles: profiles).toJson(),
    );
    return response != null;
  }
}
