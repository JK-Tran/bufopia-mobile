import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary_detail.freezed.dart';

@freezed
abstract class DictionaryDetail with _$DictionaryDetail {
  const factory DictionaryDetail({
    @Default(false) bool valid,
    @Default('') String word,
    @Default('') String phonetic,
    @Default('') String partOfSpeech,
    @Default('') String meaning,
    @Default('') String example,
    @Default('') String exampleTranslation,
  }) = _DictionaryDetail;
}
