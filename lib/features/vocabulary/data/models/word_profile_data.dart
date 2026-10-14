import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_profile_data.freezed.dart';
part 'word_profile_data.g.dart';

@freezed
abstract class WordProfileData with _$WordProfileData {
  const factory WordProfileData({
    @JsonKey(name: 'word_id') required String wordId,
    @JsonKey(name: 'seen') int? seen,
    @JsonKey(name: 'last') int? last,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'game_mode') String? gameMode,
    @JsonKey(name: 'familiarity') int? familiarity,
    @JsonKey(name: 'interval') int? interval,
    @JsonKey(name: 'ease_factor') double? easeFactor,
    @JsonKey(name: 'next_review') int? nextReview,
    @JsonKey(name: 'lapses') int? lapses,
  }) = _WordProfileData;

  const WordProfileData._();

  factory WordProfileData.fromJson(Map<String, dynamic> json) =>
      _$WordProfileDataFromJson(json);
}

@freezed
abstract class WordProfilesDataResponse with _$WordProfilesDataResponse {
  const factory WordProfilesDataResponse({
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'profiles') List<WordProfileData>? profiles,
  }) = _WordProfilesDataResponse;

  const WordProfilesDataResponse._();

  factory WordProfilesDataResponse.fromJson(Map<String, dynamic> json) {
    final rawProfiles = json['profiles'];
    final list = <WordProfileData>[];

    if (rawProfiles is List) {
      for (final item in rawProfiles) {
        if (item is Map<String, dynamic>) {
          if (item.containsKey('word_id')) {
            list.add(WordProfileData.fromJson(item));
          } else {
            item.forEach((key, val) {
              if (val is Map<String, dynamic>) {
                list.add(
                  WordProfileData.fromJson({
                    'word_id': key,
                    ...val,
                  }),
                );
              }
            });
          }
        }
      }
    } else if (rawProfiles is Map<String, dynamic>) {
      rawProfiles.forEach((key, val) {
        if (val is Map<String, dynamic>) {
          list.add(
            WordProfileData.fromJson({
              'word_id': key,
              ...val,
            }),
          );
        }
      });
    }

    return WordProfilesDataResponse(
      uid: json['uid'] as String?,
      profiles: list,
    );
  }
}

@freezed
abstract class SyncProfilesRequestData with _$SyncProfilesRequestData {
  const factory SyncProfilesRequestData({
    @JsonKey(name: 'profiles') required List<WordProfileData> profiles,
  }) = _SyncProfilesRequestData;

  const SyncProfilesRequestData._();

  factory SyncProfilesRequestData.fromJson(Map<String, dynamic> json) =>
      _$SyncProfilesRequestDataFromJson(json);
}
