import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_data.freezed.dart';
part 'leaderboard_data.g.dart';

@freezed
abstract class LeaderboardPlayerData with _$LeaderboardPlayerData {
  const factory LeaderboardPlayerData({
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'xp') int? xp,
    @JsonKey(name: 'level') int? level,
    @JsonKey(name: 'streak') int? streak,
    @JsonKey(name: 'win_streak') int? winStreak,
    @JsonKey(name: 'value') int? value,
    @JsonKey(name: 'rank') int? rank,
  }) = _LeaderboardPlayerData;

  const LeaderboardPlayerData._();

  factory LeaderboardPlayerData.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardPlayerDataFromJson(json);
}

@freezed
abstract class LeaderboardDataResponse with _$LeaderboardDataResponse {
  const factory LeaderboardDataResponse({
    @JsonKey(name: 'metric') String? metric,
    @JsonKey(name: 'players') List<LeaderboardPlayerData>? players,
  }) = _LeaderboardDataResponse;

  const LeaderboardDataResponse._();

  factory LeaderboardDataResponse.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardDataResponseFromJson(json);
}
