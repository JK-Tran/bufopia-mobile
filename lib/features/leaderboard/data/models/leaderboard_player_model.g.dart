// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaderboardPlayerModel _$LeaderboardPlayerModelFromJson(
  Map<String, dynamic> json,
) => _LeaderboardPlayerModel(
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

Map<String, dynamic> _$LeaderboardPlayerModelToJson(
  _LeaderboardPlayerModel instance,
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
