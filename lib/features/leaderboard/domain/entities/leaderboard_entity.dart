import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_entity.freezed.dart';

@freezed
abstract class LeaderboardEntity with _$LeaderboardEntity {
  const factory LeaderboardEntity({
    @Default('xp') String metric,
    @Default([]) List<LeaderboardPlayerEntity> players,
  }) = _LeaderboardEntity;
}

@freezed
abstract class LeaderboardPlayerEntity with _$LeaderboardPlayerEntity {
  const factory LeaderboardPlayerEntity({
    @Default('') String uid,
    @Default('') String displayName,
    @Default('') String avatarUrl,
    @Default(0) int xp,
    @Default(1) int level,
    @Default(0) int streak,
    @Default(0) int winStreak,
    @Default(0) int value,
    @Default(0) int rank,
  }) = _LeaderboardPlayerEntity;
}
