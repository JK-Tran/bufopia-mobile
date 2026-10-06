import 'package:bufopia/features/vocabulary/domain/entities/battle_deck_entity.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_reward_entity.dart';
import 'package:bufopia/features/vocabulary/domain/entities/match_record_entity.dart';
import 'package:bufopia/features/vocabulary/domain/entities/vocabulary_entity.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_profile_entity.dart';

abstract class VocabularyRepository {
  Future<VocabularyEntity> getVocabulary();

  Future<BattleDeckEntity> getDeck({
    required String topic,
    String? uid,
    String? opponentUid,
    int count = 15,
    String? recent,
  });

  Future<bool> saveMatch(MatchRecordEntity match);

  Future<BattleRewardEntity> claimReward({
    required String uid,
    required bool isWin,
    required int correctCount,
    required int points,
  });

  Future<List<WordProfileEntity>> getProfiles(String uid);

  Future<bool> syncProfiles(
    String uid,
    List<WordProfileEntity> profiles,
  );
}
