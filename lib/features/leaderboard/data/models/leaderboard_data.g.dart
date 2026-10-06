// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaderboardPlayerData _$LeaderboardPlayerDataFromJson(
  Map<String, dynamic> json,
) => _LeaderboardPlayerData(
  uid: json['uid'] as String,
  displayName: json['display_name'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  xp: (json['xp'] as num?)?.toInt(),
  level: (json['level'] as num?)?.toInt(),
  streak: (json['streak'] as num?)?.toInt(),
  winStreak: (json['win_streak'] as num?)?.toInt(),
  value: (json['value'] as num?)?.toInt(),
  rank: (json['rank'] as num?)?.toInt(),
);

Map<String, dynamic> _$LeaderboardPlayerDataToJson(
  _LeaderboardPlayerData instance,
) => <String, dynamic>{
  'uid': instance.uid,
  'display_name': instance.displayName,
  'avatar_url': instance.avatarUrl,
  'xp': instance.xp,
  'level': instance.level,
  'streak': instance.streak,
  'win_streak': instance.winStreak,
  'value': instance.value,
  'rank': instance.rank,
};

_LeaderboardDataResponse _$LeaderboardDataResponseFromJson(
  Map<String, dynamic> json,
) => _LeaderboardDataResponse(
  metric: json['metric'] as String?,
  players: (json['players'] as List<dynamic>?)
      ?.map((e) => LeaderboardPlayerData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LeaderboardDataResponseToJson(
  _LeaderboardDataResponse instance,
) => <String, dynamic>{'metric': instance.metric, 'players': instance.players};
