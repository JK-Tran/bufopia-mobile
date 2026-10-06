import 'package:bufopia/features/leaderboard/data/models/leaderboard_data.dart';
import 'package:bufopia/features/leaderboard/domain/entities/leaderboard.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class LeaderboardPlayerDataMapper
    extends BaseDataMapper<LeaderboardPlayerData, LeaderboardPlayer>
    with DataMapperMixin<LeaderboardPlayerData, LeaderboardPlayer> {
  const LeaderboardPlayerDataMapper();

  @override
  LeaderboardPlayer mapToEntity(LeaderboardPlayerData? data) {
    return LeaderboardPlayer(
      uid: data?.uid ?? '',
      displayName: data?.displayName ?? '',
      avatarUrl: data?.avatarUrl ?? '',
      xp: data?.xp ?? 0,
      level: data?.level ?? 1,
      streak: data?.streak ?? 0,
      winStreak: data?.winStreak ?? 0,
      value: data?.value ?? 0,
      rank: data?.rank ?? 0,
    );
  }

  @override
  LeaderboardPlayerData mapToData(LeaderboardPlayer entity) {
    return LeaderboardPlayerData(
      uid: entity.uid,
      displayName: entity.displayName,
      avatarUrl: entity.avatarUrl,
      xp: entity.xp,
      level: entity.level,
      streak: entity.streak,
      winStreak: entity.winStreak,
      value: entity.value,
      rank: entity.rank,
    );
  }
}
