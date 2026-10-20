// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordInfoData _$WordInfoDataFromJson(Map<String, dynamic> json) =>
    _WordInfoData(
      index: (json['index'] as num?)?.toInt(),
      topic: json['topic'] as String?,
      masked: json['masked'] as String?,
      vi: json['vi'] as String?,
      phonetic: json['phonetic'] as String?,
      length: (json['length'] as num?)?.toInt(),
      revealedCount: (json['revealedCount'] as num?)?.toInt(),
      en: json['en'] as String?,
      example: json['example'] as String?,
    );

Map<String, dynamic> _$WordInfoDataToJson(_WordInfoData instance) =>
    <String, dynamic>{
      'index': instance.index,
      'topic': instance.topic,
      'masked': instance.masked,
      'vi': instance.vi,
      'phonetic': instance.phonetic,
      'length': instance.length,
      'revealedCount': instance.revealedCount,
      'en': instance.en,
      'example': instance.example,
    };
