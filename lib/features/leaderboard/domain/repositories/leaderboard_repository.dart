import 'package:bufopia/features/leaderboard/domain/entities/leaderboard.dart';

abstract class LeaderboardRepository {
  Future<Leaderboard> getLeaderboard({
    String metric = 'xp',
    int limit = 50,
  });
}
