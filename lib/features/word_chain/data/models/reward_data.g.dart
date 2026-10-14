// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RewardData _$RewardDataFromJson(Map<String, dynamic> json) => _RewardData(
  gainedXp: (json['gainedXp'] as num?)?.toInt(),
  streak: (json['streak'] as num?)?.toInt(),
  user: json['user'] == null
      ? null
      : UserData.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RewardDataToJson(_RewardData instance) =>
    <String, dynamic>{
      'gainedXp': instance.gainedXp,
      'streak': instance.streak,
      'user': instance.user,
    };
