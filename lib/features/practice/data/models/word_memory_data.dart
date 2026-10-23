import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_memory_data.freezed.dart';
part 'word_memory_data.g.dart';

@freezed
abstract class WordMemoryData with _$WordMemoryData {
  const factory WordMemoryData({
    @JsonKey(name: 'word_id') String? wordId,
    @JsonKey(name: 'seen') int? seen,
    @JsonKey(name: 'fast') int? fast,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'seconds') double? seconds,
    @JsonKey(name: 'last') int? last,
    @JsonKey(name: 'due') int? due,
  }) = _WordMemoryData;

  const WordMemoryData._();

  factory WordMemoryData.fromJson(Map<String, dynamic> json) =>
      _$WordMemoryDataFromJson(json);

  Map<String, dynamic> toMemoryPayload() {
    return {
      if (seen != null) 'seen': seen,
      if (fast != null) 'fast': fast,
      if (status != null) 'status': status,
      if (reason != null && reason!.isNotEmpty) 'reason': reason,
      if (seconds != null) 'seconds': seconds,
      if (last != null) 'last': last,
      if (due != null) 'due': due,
    };
  }
}

@freezed
abstract class PracticeProfilesResponseData
    with _$PracticeProfilesResponseData {
  const factory PracticeProfilesResponseData({
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'profiles') List<WordMemoryData>? profiles,
  }) = _PracticeProfilesResponseData;

  const PracticeProfilesResponseData._();

  factory PracticeProfilesResponseData.fromJson(Map<String, dynamic> json) {
    final rawProfiles = json['profiles'];
    final list = <WordMemoryData>[];

    if (rawProfiles is List && rawProfiles.isNotEmpty) {
      final first = rawProfiles.first;
      if (first is Map<String, dynamic>) {
        first.forEach((key, val) {
          if (val is Map<String, dynamic>) {
            list.add(
              WordMemoryData.fromJson({
                'word_id': key,
                ...val,
              }),
            );
          }
        });
      }
    } else if (rawProfiles is Map<String, dynamic>) {
      rawProfiles.forEach((key, val) {
        if (val is Map<String, dynamic>) {
          list.add(
            WordMemoryData.fromJson({
              'word_id': key,
              ...val,
            }),
          );
        }
      });
    }

    return PracticeProfilesResponseData(
      uid: json['uid'] as String?,
      profiles: list,
    );
  }
}
