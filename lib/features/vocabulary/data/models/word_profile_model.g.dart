// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordProfileModel _$WordProfileModelFromJson(Map<String, dynamic> json) =>
    _WordProfileModel(
      wordId: json['word_id'] as String,
      familiarity: (json['familiarity'] as num?)?.toInt(),
      interval: (json['interval'] as num?)?.toInt(),
      easeFactor: (json['ease_factor'] as num?)?.toDouble(),
      nextReview: (json['next_review'] as num?)?.toInt(),
      lapses: (json['lapses'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WordProfileModelToJson(_WordProfileModel instance) =>
    <String, dynamic>{
      'word_id': instance.wordId,
      'familiarity': instance.familiarity,
      'interval': instance.interval,
      'ease_factor': instance.easeFactor,
      'next_review': instance.nextReview,
      'lapses': instance.lapses,
    };

_WordProfilesResponseModel _$WordProfilesResponseModelFromJson(
  Map<String, dynamic> json,
) => _WordProfilesResponseModel(
  uid: json['uid'] as String?,
  profiles: (json['profiles'] as List<dynamic>?)
      ?.map((e) => WordProfileModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$WordProfilesResponseModelToJson(
  _WordProfilesResponseModel instance,
) => <String, dynamic>{'uid': instance.uid, 'profiles': instance.profiles};

_SyncProfilesRequestModel _$SyncProfilesRequestModelFromJson(
  Map<String, dynamic> json,
) => _SyncProfilesRequestModel(
  profiles: (json['profiles'] as List<dynamic>)
      .map((e) => WordProfileModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SyncProfilesRequestModelToJson(
  _SyncProfilesRequestModel instance,
) => <String, dynamic>{'profiles': instance.profiles};
