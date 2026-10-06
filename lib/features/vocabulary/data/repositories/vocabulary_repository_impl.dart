import 'package:bufopia/features/vocabulary/data/datasources/vocabulary_data_source.dart';
import 'package:bufopia/features/vocabulary/data/mapper/battle_deck_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/battle_reward_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/match_record_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/vocabulary_mapper.dart';
import 'package:bufopia/features/vocabulary/data/mapper/word_profile_mapper.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_deck_entity.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_reward_entity.dart';
import 'package:bufopia/features/vocabulary/domain/entities/match_record_entity.dart';
import 'package:bufopia/features/vocabulary/domain/entities/vocabulary_entity.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_profile_entity.dart';
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
  );

  final VocabularyDataSource _dataSource;
  final VocabularyMapper _vocabularyMapper;
  final BattleDeckMapper _battleDeckMapper;
  final BattleRewardMapper _battleRewardMapper;
  final MatchRecordMapper _matchRecordMapper;
  final WordProfileMapper _wordProfileMapper;

  @override
  Future<VocabularyEntity> getVocabulary() async {
    final response = await _dataSource.getVocabulary();
    return _vocabularyMapper.mapToEntity(response);
  }

  @override
  Future<BattleDeckEntity> getDeck({
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
  Future<bool> saveMatch(MatchRecordEntity match) async {
    final model = _matchRecordMapper.mapToModel(match);
    return _dataSource.saveMatch(model);
  }

  @override
  Future<BattleRewardEntity> claimReward({
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
  Future<List<WordProfileEntity>> getProfiles(String uid) async {
    final response = await _dataSource.getProfiles(uid);
    return _wordProfileMapper.mapToEntityList(response?.profiles);
  }

  @override
  Future<bool> syncProfiles(
    String uid,
    List<WordProfileEntity> profiles,
  ) async {
    final models = _wordProfileMapper.mapToModelList(profiles);
    return _dataSource.syncProfiles(uid, models);
  }
}
