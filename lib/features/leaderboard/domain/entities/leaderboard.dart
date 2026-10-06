import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard.freezed.dart';

@freezed
abstract class Leaderboard with _$Leaderboard {
  const factory Leaderboard({
    @Default('xp') String metric,
    @Default([]) List<LeaderboardPlayer> players,
  }) = _Leaderboard;
}

@freezed
abstract class LeaderboardPlayer with _$LeaderboardPlayer {
  const factory LeaderboardPlayer({
    @Default('') String uid,
    @Default('') String displayName,
    @Default('') String avatarUrl,
    @Default(0) int xp,
    @Default(1) int level,
    @Default(0) int streak,
    @Default(0) int winStreak,
    @Default(0) int value,
    @Default(0) int rank,
  }) = _LeaderboardPlayer;
}
