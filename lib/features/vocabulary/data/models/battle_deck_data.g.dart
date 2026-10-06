// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_deck_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BattleDeckDataResponse _$BattleDeckDataResponseFromJson(
  Map<String, dynamic> json,
) => _BattleDeckDataResponse(
  success: json['success'] as bool?,
  topic: json['topic'] as String?,
  count: (json['count'] as num?)?.toInt(),
  deck: (json['deck'] as List<dynamic>?)
      ?.map((e) => BattleQuestionData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BattleDeckDataResponseToJson(
  _BattleDeckDataResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'topic': instance.topic,
  'count': instance.count,
  'deck': instance.deck,
};
