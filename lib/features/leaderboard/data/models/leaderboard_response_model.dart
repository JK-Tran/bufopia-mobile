import 'package:bufopia/features/leaderboard/data/models/leaderboard_player_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_response_model.freezed.dart';
part 'leaderboard_response_model.g.dart';

@freezed
abstract class LeaderboardResponseModel with _$LeaderboardResponseModel {
  const factory LeaderboardResponseModel({
    @JsonKey(name: 'metric') String? metric,
    @JsonKey(name: 'players') List<LeaderboardPlayerModel>? players,
  }) = _LeaderboardResponseModel;

  const LeaderboardResponseModel._();

  factory LeaderboardResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardResponseModelFromJson(json);
}
