import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_info_data.freezed.dart';
part 'word_info_data.g.dart';

@freezed
abstract class WordInfoData with _$WordInfoData {
  const factory WordInfoData({
    @JsonKey(name: 'index') int? index,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'masked') String? masked,
    @JsonKey(name: 'vi') String? vi,
    @JsonKey(name: 'phonetic') String? phonetic,
    @JsonKey(name: 'length') int? length,
    @JsonKey(name: 'revealedCount') int? revealedCount,
    @JsonKey(name: 'en') String? en,
    @JsonKey(name: 'example') String? example,
  }) = _WordInfoData;

  const WordInfoData._();

  factory WordInfoData.fromJson(Map<String, dynamic> json) =>
      _$WordInfoDataFromJson(json);
}
