import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_data.freezed.dart';
part 'word_data.g.dart';

@freezed
abstract class WordData with _$WordData {
  const factory WordData({
    @JsonKey(name: 'word') required String word,
    @JsonKey(name: 'valid') bool? valid,
    @JsonKey(name: 'phonetic') String? phonetic,
    @JsonKey(name: 'partOfSpeech') String? partOfSpeech,
    @JsonKey(name: 'vi') String? vi,
    @JsonKey(name: 'definition') String? definition,
    @JsonKey(name: 'example') String? example,
    @JsonKey(name: 'audio') String? audio,
  }) = _WordData;

  const WordData._();

  factory WordData.fromJson(Map<String, dynamic> json) =>
      _$WordDataFromJson(json);
}
