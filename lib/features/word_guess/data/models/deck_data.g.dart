// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeckData _$DeckDataFromJson(Map<String, dynamic> json) => _DeckData(
  success: json['success'] as bool?,
  practiceSessionId: json['practiceSessionId'] as String?,
  topic: json['topic'] as String?,
  count: (json['count'] as num?)?.toInt(),
  deck: (json['deck'] as List<dynamic>?)
      ?.map((e) => WordData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DeckDataToJson(_DeckData instance) => <String, dynamic>{
  'success': instance.success,
  'practiceSessionId': instance.practiceSessionId,
  'topic': instance.topic,
  'count': instance.count,
  'deck': instance.deck,
};
