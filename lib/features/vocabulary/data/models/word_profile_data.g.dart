// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordProfileData _$WordProfileDataFromJson(Map<String, dynamic> json) =>
    _WordProfileData(
      wordId: json['word_id'] as String,
      seen: (json['seen'] as num?)?.toInt(),
      last: (json['last'] as num?)?.toInt(),
      status: json['status'] as String?,
      gameMode: json['game_mode'] as String?,
      familiarity: (json['familiarity'] as num?)?.toInt(),
      interval: (json['interval'] as num?)?.toInt(),
      easeFactor: (json['ease_factor'] as num?)?.toDouble(),
      nextReview: (json['next_review'] as num?)?.toInt(),
      lapses: (json['lapses'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WordProfileDataToJson(_WordProfileData instance) =>
    <String, dynamic>{
      'word_id': instance.wordId,
      'seen': instance.seen,
      'last': instance.last,
      'status': instance.status,
      'game_mode': instance.gameMode,
      'familiarity': instance.familiarity,
      'interval': instance.interval,
      'ease_factor': instance.easeFactor,
      'next_review': instance.nextReview,
      'lapses': instance.lapses,
    };

_SyncProfilesRequestData _$SyncProfilesRequestDataFromJson(
  Map<String, dynamic> json,
) => _SyncProfilesRequestData(
  profiles: (json['profiles'] as List<dynamic>)
      .map((e) => WordProfileData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SyncProfilesRequestDataToJson(
  _SyncProfilesRequestData instance,
) => <String, dynamic>{'profiles': instance.profiles};
