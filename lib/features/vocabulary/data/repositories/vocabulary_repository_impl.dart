import 'package:bufopia/features/vocabulary/data/datasources/vocabulary_data_source.dart';
import 'package:bufopia/features/vocabulary/data/mapper/battle_deck_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/battle_reward_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/feedback_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/match_record_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/vocabulary_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/word_profile_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/models/feedback_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_deck.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_reward.dart';
import 'package:bufopia/features/vocabulary/domain/entities/feedback.dart';
import 'package:bufopia/features/vocabulary/domain/entities/match_record.dart';
import 'package:bufopia/features/vocabulary/domain/entities/vocabulary.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_profile.dart';
import 'package:bufopia/features/vocabulary/domain/repositories/vocabulary_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: VocabularyRepository)
class VocabularyRepositoryImpl implements VocabularyRepository {
  VocabularyRepositoryImpl(
    this._dataSource,
    this._vocabularyMapper,
    this._battleDeckMapper,
    this._battleRewardMapper,
    this._matchRecordMapper,
    this._wordProfileMapper,
    this._feedbackMapper,
  );

  final VocabularyDataSource _dataSource;
  final VocabularyDataMapper _vocabularyMapper;
  final BattleDeckDataMapper _battleDeckMapper;
  final BattleRewardDataMapper _battleRewardMapper;
  final MatchRecordDataMapper _matchRecordMapper;
  final WordProfileDataMapper _wordProfileMapper;
  final FeedbackDataMapper _feedbackMapper;

  @override
  Future<Vocabulary> getVocabulary() async {
    final response = await _dataSource.getVocabulary();
    return _vocabularyMapper.mapToEntity(response);
  }

  @override
  Future<BattleDeck> getDeck({
    required String topic,
    String? uid,
    String? opponentUid,
    int count = 15,
    String? recent,
  }) async {
    final response = await _dataSource.getDeck(
      topic: topic,
      uid: uid,
      opponentUid: opponentUid,
      count: count,
      recent: recent,
    );
    return _battleDeckMapper.mapToEntity(response);
  }

  @override
  Future<bool> saveMatch(MatchRecord match) async {
    final model = _matchRecordMapper.mapToModel(match);
    return _dataSource.saveMatch(model);
  }

  @override
  Future<BattleReward> claimReward({
    required String uid,
    required bool isWin,
    required int correctCount,
    required int points,
  }) async {
    final response = await _dataSource.claimReward(
      uid: uid,
      isWin: isWin,
      correctCount: correctCount,
      points: points,
    );
    return _battleRewardMapper.mapToEntity(response);
  }

  @override
  Future<List<WordProfile>> getProfiles(String uid) async {
    final response = await _dataSource.getProfiles(uid);
    return _wordProfileMapper.mapToEntityList(response?.profiles);
  }

  @override
  Future<bool> syncProfiles(
    String uid,
    List<WordProfile> profiles,
  ) async {
    final models = _wordProfileMapper.mapToModelList(profiles);
    return _dataSource.syncProfiles(uid, models);
  }

  @override
  Future<Feedback> sendFeedback(FeedbackData request) async {
    final response = await _dataSource.sendFeedback(request);
    return _feedbackMapper.mapToEntity(response);
  }
}
