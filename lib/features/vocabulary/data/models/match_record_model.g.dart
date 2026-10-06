// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchRecordModel _$MatchRecordModelFromJson(Map<String, dynamic> json) =>
    _MatchRecordModel(
      id: json['id'] as String,
      uid: json['uid'] as String,
      topicId: json['topic_id'] as String?,
      scores: (json['scores'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      winner: json['winner'] as String?,
      matchData: json['match_data'] as Map<String, dynamic>?,
      createdAt: (json['created_at'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MatchRecordModelToJson(_MatchRecordModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'topic_id': instance.topicId,
      'scores': instance.scores,
      'winner': instance.winner,
      'match_data': instance.matchData,
      'created_at': instance.createdAt,
    };
