part of 'leaderboard_bloc.dart';

@freezed
abstract class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState({
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default('xp') String selectedMetric,
    LeaderboardEntity? leaderboard,
    @Default({}) Map<String, LeaderboardEntity> leaderboardsByMetric,
  }) = _LeaderboardState;
}
