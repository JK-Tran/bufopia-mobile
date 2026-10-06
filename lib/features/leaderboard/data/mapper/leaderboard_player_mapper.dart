import 'package:bufopia/features/leaderboard/data/models/leaderboard_player_model.dart';
import 'package:bufopia/features/leaderboard/domain/entities/leaderboard_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class LeaderboardPlayerMapper
    extends BaseDataMapper<LeaderboardPlayerModel, LeaderboardPlayerEntity>
    with DataMapperMixin<LeaderboardPlayerModel, LeaderboardPlayerEntity> {
  const LeaderboardPlayerMapper();

  @override
  LeaderboardPlayerEntity mapToEntity(LeaderboardPlayerModel? data) {
    return LeaderboardPlayerEntity(
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
  LeaderboardPlayerModel mapToData(LeaderboardPlayerEntity entity) {
    return LeaderboardPlayerModel(
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
