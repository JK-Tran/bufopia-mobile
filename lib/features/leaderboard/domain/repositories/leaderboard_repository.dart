import 'package:bufopia/features/leaderboard/domain/entities/leaderboard_entity.dart';

abstract class LeaderboardRepository {
  Future<LeaderboardEntity> getLeaderboard({
    String metric = 'xp',
    int limit = 50,
  });
}
