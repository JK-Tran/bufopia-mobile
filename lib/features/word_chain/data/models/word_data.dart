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

  factory WordData.fromJson(Map<String, dynamic> json) {
    final vi =
        (json['vi'] as String? ??
                json['meaning'] as String? ??
                json['translation'] as String?)
            ?.trim();
    final definition =
        (json['definition'] as String? ??
                json['meaning'] as String? ??
                json['description'] as String?)
            ?.trim();
    final example = (json['example'] as String? ?? json['exampleEn'] as String?)
        ?.trim();
    final word = (json['word'] as String? ?? json['en'] as String? ?? '')
        .trim();

    return _$WordDataFromJson({
      ...json,
      'word': word,
      if (vi != null && vi.isNotEmpty) 'vi': vi,
      if (definition != null && definition.isNotEmpty) 'definition': definition,
      if (example != null && example.isNotEmpty) 'example': example,
    });
  }
}
