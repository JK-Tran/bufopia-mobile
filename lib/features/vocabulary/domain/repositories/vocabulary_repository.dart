import 'package:bufopia/features/vocabulary/data/models/feedback_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_deck.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_reward.dart';
import 'package:bufopia/features/vocabulary/domain/entities/feedback.dart';
import 'package:bufopia/features/vocabulary/domain/entities/match_record.dart';
import 'package:bufopia/features/vocabulary/domain/entities/vocabulary.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_profile.dart';

abstract class VocabularyRepository {
  Future<Vocabulary> getVocabulary();

  Future<BattleDeck> getDeck({
    required String topic,
    String? uid,
    String? opponentUid,
    int count = 15,
    String? recent,
  });

  Future<bool> saveMatch(MatchRecord match);

  Future<BattleReward> claimReward({
    required String uid,
    required bool isWin,
    required int correctCount,
    required int points,
  });

  Future<List<WordProfile>> getProfiles(String uid);

  Future<bool> syncProfiles(
    String uid,
    List<WordProfile> profiles,
  );

  Future<Feedback> sendFeedback(FeedbackData request);
}
