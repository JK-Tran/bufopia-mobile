part of 'leaderboard_bloc.dart';

@freezed
abstract class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState({
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default('xp') String selectedMetric,
    Leaderboard? leaderboard,
    @Default({}) Map<String, Leaderboard> leaderboardsByMetric,
  }) = _LeaderboardState;
}
