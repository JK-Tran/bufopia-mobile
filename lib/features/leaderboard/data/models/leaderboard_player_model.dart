import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_player_model.freezed.dart';
part 'leaderboard_player_model.g.dart';

@freezed
abstract class LeaderboardPlayerModel with _$LeaderboardPlayerModel {
  const factory LeaderboardPlayerModel({
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'xp') int? xp,
    @JsonKey(name: 'level') int? level,
    @JsonKey(name: 'streak') int? streak,
    @JsonKey(name: 'win_streak') int? winStreak,
    @JsonKey(name: 'value') int? value,
    @JsonKey(name: 'rank') int? rank,
  }) = _LeaderboardPlayerModel;

  const LeaderboardPlayerModel._();

  factory LeaderboardPlayerModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardPlayerModelFromJson(json);
}
