// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'round_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoundResultData _$RoundResultDataFromJson(Map<String, dynamic> json) =>
    _RoundResultData(
      index: (json['index'] as num?)?.toInt(),
      word: json['word'] as String?,
      vi: json['vi'] as String?,
      phonetic: json['phonetic'] as String?,
      example: json['example'] as String?,
      solverUid: json['solverUid'] as String?,
      isSkipped: json['isSkipped'] as bool?,
      gainedScore: (json['gainedScore'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RoundResultDataToJson(_RoundResultData instance) =>
    <String, dynamic>{
      'index': instance.index,
      'word': instance.word,
      'vi': instance.vi,
      'phonetic': instance.phonetic,
      'example': instance.example,
      'solverUid': instance.solverUid,
      'isSkipped': instance.isSkipped,
      'gainedScore': instance.gainedScore,
    };
