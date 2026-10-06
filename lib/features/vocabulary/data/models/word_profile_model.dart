import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_profile_model.freezed.dart';
part 'word_profile_model.g.dart';

@freezed
abstract class WordProfileModel with _$WordProfileModel {
  const factory WordProfileModel({
    @JsonKey(name: 'word_id') required String wordId,
    @JsonKey(name: 'familiarity') int? familiarity,
    @JsonKey(name: 'interval') int? interval,
    @JsonKey(name: 'ease_factor') double? easeFactor,
    @JsonKey(name: 'next_review') int? nextReview,
    @JsonKey(name: 'lapses') int? lapses,
  }) = _WordProfileModel;

  const WordProfileModel._();

  factory WordProfileModel.fromJson(Map<String, dynamic> json) =>
      _$WordProfileModelFromJson(json);
}

@freezed
abstract class WordProfilesResponseModel with _$WordProfilesResponseModel {
  const factory WordProfilesResponseModel({
    @JsonKey(name: 'uid') String? uid,
    @JsonKey(name: 'profiles') List<WordProfileModel>? profiles,
  }) = _WordProfilesResponseModel;

  const WordProfilesResponseModel._();

  factory WordProfilesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WordProfilesResponseModelFromJson(json);
}

@freezed
abstract class SyncProfilesRequestModel with _$SyncProfilesRequestModel {
  const factory SyncProfilesRequestModel({
    @JsonKey(name: 'profiles') required List<WordProfileModel> profiles,
  }) = _SyncProfilesRequestModel;

  const SyncProfilesRequestModel._();

  factory SyncProfilesRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SyncProfilesRequestModelFromJson(json);
}
