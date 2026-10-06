// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_deck_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BattleDeckResponseModel _$BattleDeckResponseModelFromJson(
  Map<String, dynamic> json,
) => _BattleDeckResponseModel(
  success: json['success'] as bool?,
  topic: json['topic'] as String?,
  count: (json['count'] as num?)?.toInt(),
  deck: (json['deck'] as List<dynamic>?)
      ?.map((e) => BattleQuestionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BattleDeckResponseModelToJson(
  _BattleDeckResponseModel instance,
) => <String, dynamic>{
  'success': instance.success,
  'topic': instance.topic,
  'count': instance.count,
  'deck': instance.deck,
};
