part of 'leaderboard_bloc.dart';

@freezed
abstract class LeaderboardEvent with _$LeaderboardEvent {
  const factory LeaderboardEvent.loaded({
    @Default('xp') String metric,
    @Default(50) int limit,
  }) = _LeaderboardLoaded;

  const factory LeaderboardEvent.metricChanged(String metric) =
      _LeaderboardMetricChanged;
}
