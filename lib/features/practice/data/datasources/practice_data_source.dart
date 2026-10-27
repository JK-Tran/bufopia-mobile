import 'dart:io';

import 'package:bufopia/features/practice/data/models/contribution_data.dart';
import 'package:bufopia/features/practice/data/models/dictionary_detail_data.dart';
import 'package:bufopia/features/practice/data/models/pronunciation_assessment_data.dart';
import 'package:bufopia/features/practice/data/models/word_memory_data.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:bufopia/shared/model/typedef.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class PracticeDataSource {
  PracticeDataSource(this._apiClient);

  final NoneAuthAppServerApiClient _apiClient;

  Options _buildAuthOptions(String? token, {String? uid}) {
    final effectiveToken = (token != null && token.isNotEmpty) ? token : uid;
    return Options(
      headers: {
        if (effectiveToken != null && effectiveToken.isNotEmpty)
          'Authorization': 'Bearer $effectiveToken',
        if (token != null && token.isNotEmpty) 'X-Account-Token': token,
        'Accept': 'application/json',
      },
    );
  }

  /// Lấy toàn bộ tiến độ người chơi (GET /api/profiles/:uid)
  Future<PracticeProfilesResponseData?> getProfiles({
    required String uid,
    String? token,
  }) async {
    return _apiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/profiles/$uid',
      options: _buildAuthOptions(token, uid: uid),
      decoder: (data) => PracticeProfilesResponseData.fromJson(data! as JSON),
    );
  }

  /// Lưu tiến độ người chơi (POST /api/profiles/:uid)

  Future<bool> syncProfiles({
    required String uid,
    required List<WordMemoryData> memories,
    String? token,
  }) async {
    final firstProfileMap = <String, dynamic>{};
    for (final memory in memories) {
      if (memory.wordId != null && memory.wordId!.isNotEmpty) {
        firstProfileMap[memory.wordId!] = memory.toMemoryPayload();
      }
    }

    final response = await _apiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/profiles/$uid',
      options: _buildAuthOptions(token, uid: uid),
      body: {
        'profiles': [
          firstProfileMap,
          <String, dynamic>{},
        ],
      },
    );
    return response != null;
  }

  /// Tra cứu chi tiết từ vựng & âm thanh (GET /api/dictionary/:word)
  Future<DictionaryDetailData?> getDictionaryDetail({
    required String word,
    String lexicon = 'chain-v3',
    int details = 1,
    int phonetics = 2,
    int meaning = 1,
  }) async {
    return _apiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/dictionary/$word',
      queryParameters: {
        'lexicon': lexicon,
        'details': details,
        'phonetics': phonetics,
        'meaning': meaning,
      },
      decoder: (data) => DictionaryDetailData.fromJson(data! as JSON),
    );
  }

  /// Chấm điểm phát âm từ vựng (POST /api/pronunciation/assess?uid=:uid)
  /// Header: multipart/form-data
  /// Audio: File ghi âm chuẩn WAV PCM (16kHz / 16-bit mono)
  Future<PronunciationAssessmentData?> assessPronunciation({
    required String uid,
    required File audioFile,
    required String referenceText,
    String language = 'en-US',
    String? token,
  }) async {
    final fileName = audioFile.path.split(Platform.pathSeparator).last;
    final formData = FormData.fromMap({
      'audio': await MultipartFile.fromFile(
        audioFile.path,
        filename: fileName,
      ),
      'referenceText': referenceText,
      'language': language,
    });

    return _apiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/pronunciation/assess',
      queryParameters: {'uid': uid},
      body: formData,
      options: Options(
        contentType: 'multipart/form-data',
        headers: {
          'Authorization':
              'Bearer ${(token != null && token.isNotEmpty) ? token : uid}',
          if (token != null && token.isNotEmpty) 'X-Account-Token': token,
          'Accept': 'application/json',
        },
      ),
      decoder: (data) => PronunciationAssessmentData.fromJson(data! as JSON),
    );
  }

  /// Tải lịch sử đóng góp của người chơi (GET /api/contributions?uid=:uid)
  Future<ContributionsResponseData?> getContributions({
    required String uid,
    String? token,
  }) async {
    return _apiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/contributions',
      queryParameters: {'uid': uid},
      options: _buildAuthOptions(token, uid: uid),
      decoder: (data) => ContributionsResponseData.fromJson(data! as JSON),
    );
  }

  /// Gửi đóng góp từ mới (POST /api/contributions)
  Future<SubmitContributionResponseData?> submitContribution({
    required String uid,
    required String contributorName,
    required String wordEn,
    required String meaningVi,
    String? topicId,
    String? partOfSpeech,
    String? phonetic,
    String? exampleEn,
    String? exampleVi,
    String? token,
  }) async {
    return _apiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/contributions',
      options: _buildAuthOptions(token, uid: uid),
      body: {
        'uid': uid,
        'contributorName': contributorName,
        'wordEn': wordEn,
        'meaningVi': meaningVi,
        'topicId': topicId,
        'partOfSpeech': partOfSpeech,
        'phonetic': phonetic,
        'exampleEn': exampleEn,
        'exampleVi': exampleVi,
      },
      decoder: (data) => SubmitContributionResponseData.fromJson(data! as JSON),
    );
  }

  /// Sửa lại đóng góp bị yêu cầu chỉnh sửa (PUT /api/contributions/:id)
  Future<SubmitContributionResponseData?> updateContribution({
    required String id,
    required String uid,
    required String contributorName,
    required String wordEn,
    required String meaningVi,
    String? topicId,
    String? partOfSpeech,
    String? phonetic,
    String? exampleEn,
    String? exampleVi,
    String? token,
  }) async {
    return _apiClient.request(
      method: RestMethod.put,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/contributions/$id',
      options: _buildAuthOptions(token, uid: uid),
      body: {
        'uid': uid,
        'contributorName': contributorName,
        'wordEn': wordEn,
        'meaningVi': meaningVi,
        'topicId': topicId,
        'partOfSpeech': partOfSpeech,
        'phonetic': phonetic,
        'exampleEn': exampleEn,
        'exampleVi': exampleVi,
      },
      decoder: (data) => SubmitContributionResponseData.fromJson(data! as JSON),
    );
  }
}
