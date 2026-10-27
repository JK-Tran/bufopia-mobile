// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practice_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PracticeResultData _$PracticeResultDataFromJson(Map<String, dynamic> json) =>
    _PracticeResultData(
      success: json['success'] as bool?,
      correct: json['correct'] as bool?,
      receiptId: json['receiptId'] as String?,
      gainedXp: (json['gainedXp'] as num?)?.toInt(),
      awardedXp: (json['awardedXp'] as num?)?.toInt(),
      leveledUp: json['leveledUp'] as bool?,
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
      error: json['error'] as bool?,
      message: json['message'] as String?,
      retryAfterMs: (json['retryAfterMs'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PracticeResultDataToJson(_PracticeResultData instance) =>
    <String, dynamic>{
      'success': instance.success,
      'correct': instance.correct,
      'receiptId': instance.receiptId,
      'gainedXp': instance.gainedXp,
      'awardedXp': instance.awardedXp,
      'leveledUp': instance.leveledUp,
      'user': instance.user,
      'error': instance.error,
      'message': instance.message,
      'retryAfterMs': instance.retryAfterMs,
    };
