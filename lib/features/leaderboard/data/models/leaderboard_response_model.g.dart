// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaderboardResponseModel _$LeaderboardResponseModelFromJson(
  Map<String, dynamic> json,
) => _LeaderboardResponseModel(
  metric: json['metric'] as String?,
  players: (json['players'] as List<dynamic>?)
      ?.map((e) => LeaderboardPlayerModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LeaderboardResponseModelToJson(
  _LeaderboardResponseModel instance,
) => <String, dynamic>{'metric': instance.metric, 'players': instance.players};
