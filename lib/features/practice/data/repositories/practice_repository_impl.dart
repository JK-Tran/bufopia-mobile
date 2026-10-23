import 'dart:io';

import 'package:bufopia/features/practice/data/datasources/practice_data_source.dart';
import 'package:bufopia/features/practice/data/mapper/contribution_data_mapper.dart';
import 'package:bufopia/features/practice/data/mapper/dictionary_detail_data_mapper.dart';
import 'package:bufopia/features/practice/data/mapper/pronunciation_assessment_data_mapper.dart';
import 'package:bufopia/features/practice/data/mapper/word_memory_data_mapper.dart';
import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/features/practice/domain/entities/dictionary_detail.dart';
import 'package:bufopia/features/practice/domain/entities/pronunciation_assessment.dart';
import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/features/practice/domain/repositories/practice_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PracticeRepository)
class PracticeRepositoryImpl implements PracticeRepository {
  PracticeRepositoryImpl(
    this._dataSource,
    this._wordMemoryMapper,
    this._dictionaryDetailMapper,
    this._pronunciationMapper,
    this._contributionMapper,
  );

  final PracticeDataSource _dataSource;
  final WordMemoryDataMapper _wordMemoryMapper;
  final DictionaryDetailDataMapper _dictionaryDetailMapper;
  final PronunciationAssessmentDataMapper _pronunciationMapper;
  final ContributionDataMapper _contributionMapper;

  @override
  Future<Map<String, WordMemory>> getProfiles({
    required String uid,
    String? token,
  }) async {
    final response = await _dataSource.getProfiles(uid: uid, token: token);
    return _wordMemoryMapper.mapToEntityMap(response?.profiles);
  }

  @override
  Future<List<WordMemory>> getWeakWords({
    required String uid,
    String? token,
  }) async {
    final response = await _dataSource.getProfiles(uid: uid, token: token);
    final entities = _wordMemoryMapper.mapToEntityList(response?.profiles);
    return entities.where((item) => item.status == 'Weak').toList();
  }

  @override
  Future<bool> submitProfile({
    required String uid,
    required WordMemory memory,
    String? token,
  }) async {
    final existingMap = await getProfiles(uid: uid, token: token);
    existingMap[memory.wordId] = memory;
    return submitProfiles(
      uid: uid,
      memories: existingMap.values.toList(),
      token: token,
    );
  }

  @override
  Future<bool> submitBatchProfiles({
    required String uid,
    required List<WordMemory> memories,
    String? token,
  }) async {
    final existingMap = await getProfiles(uid: uid, token: token);
    for (final memory in memories) {
      existingMap[memory.wordId] = memory;
    }
    return submitProfiles(
      uid: uid,
      memories: existingMap.values.toList(),
      token: token,
    );
  }

  @override
  Future<bool> submitProfiles({
    required String uid,
    required List<WordMemory> memories,
    String? token,
  }) async {
    final models = memories.map(_wordMemoryMapper.mapToData).toList();
    return _dataSource.syncProfiles(
      uid: uid,
      memories: models,
      token: token,
    );
  }

  @override
  Future<DictionaryDetail> getDictionaryDetail({
    required String word,
    String lexicon = 'chain-v3',
    int details = 1,
    int phonetics = 2,
    int meaning = 1,
  }) async {
    final response = await _dataSource.getDictionaryDetail(
      word: word,
      lexicon: lexicon,
      details: details,
      phonetics: phonetics,
      meaning: meaning,
    );
    return _dictionaryDetailMapper.mapToEntity(response);
  }

  @override
  Future<PronunciationAssessment> assessPronunciation({
    required String uid,
    required File audioFile,
    required String referenceText,
    String language = 'en-US',
    String? token,
  }) async {
    final response = await _dataSource.assessPronunciation(
      uid: uid,
      audioFile: audioFile,
      referenceText: referenceText,
      language: language,
      token: token,
    );
    return _pronunciationMapper.mapToEntity(response);
  }

  @override
  Future<List<Contribution>> getContributions({
    required String uid,
    String? token,
  }) async {
    final response = await _dataSource.getContributions(
      uid: uid,
      token: token,
    );
    return _contributionMapper.mapToEntityList(response?.contributions);
  }

  @override
  Future<Contribution> submitContribution({
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
    final response = await _dataSource.submitContribution(
      uid: uid,
      contributorName: contributorName,
      wordEn: wordEn,
      meaningVi: meaningVi,
      topicId: topicId,
      partOfSpeech: partOfSpeech,
      phonetic: phonetic,
      exampleEn: exampleEn,
      exampleVi: exampleVi,
      token: token,
    );
    return _contributionMapper.mapToEntity(response?.contribution);
  }

  @override
  Future<Contribution> updateContribution({
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
    final response = await _dataSource.updateContribution(
      id: id,
      uid: uid,
      contributorName: contributorName,
      wordEn: wordEn,
      meaningVi: meaningVi,
      topicId: topicId,
      partOfSpeech: partOfSpeech,
      phonetic: phonetic,
      exampleEn: exampleEn,
      exampleVi: exampleVi,
      token: token,
    );
    return _contributionMapper.mapToEntity(response?.contribution);
  }
}
