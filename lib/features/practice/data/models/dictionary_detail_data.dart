import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_detail_data.freezed.dart';
part 'dictionary_detail_data.g.dart';

@freezed
abstract class DictionaryDetailData with _$DictionaryDetailData {
  const factory DictionaryDetailData({
    @JsonKey(name: 'valid') bool? valid,
    @JsonKey(name: 'word') String? word,
    @JsonKey(name: 'phonetic') String? phonetic,
    @JsonKey(name: 'partOfSpeech') String? partOfSpeech,
    @JsonKey(name: 'meaning') String? meaning,
    @JsonKey(name: 'example') String? example,
    @JsonKey(name: 'exampleTranslation') String? exampleTranslation,
  }) = _DictionaryDetailData;

  const DictionaryDetailData._();

  factory DictionaryDetailData.fromJson(Map<String, dynamic> json) =>
      _$DictionaryDetailDataFromJson(json);
}
