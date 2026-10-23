// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_memory_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordMemoryData _$WordMemoryDataFromJson(Map<String, dynamic> json) =>
    _WordMemoryData(
      wordId: json['word_id'] as String?,
      seen: (json['seen'] as num?)?.toInt(),
      fast: (json['fast'] as num?)?.toInt(),
      status: json['status'] as String?,
      reason: json['reason'] as String?,
      seconds: (json['seconds'] as num?)?.toDouble(),
      last: (json['last'] as num?)?.toInt(),
      due: (json['due'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WordMemoryDataToJson(_WordMemoryData instance) =>
    <String, dynamic>{
      'word_id': instance.wordId,
      'seen': instance.seen,
      'fast': instance.fast,
      'status': instance.status,
      'reason': instance.reason,
      'seconds': instance.seconds,
      'last': instance.last,
      'due': instance.due,
    };
