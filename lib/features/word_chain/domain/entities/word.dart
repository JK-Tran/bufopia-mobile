import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';

@freezed
abstract class Word with _$Word {
  const factory Word({
    @Default(false) bool valid,
    @Default('') String word,
    String? phonetic,
    String? audio,
    String? partOfSpeech,
    String? definition,
    String? example,
    String? vi,
    String? source,
  }) = _Word;
}
