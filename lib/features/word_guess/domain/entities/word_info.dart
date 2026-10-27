import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_info.freezed.dart';

@freezed
abstract class WordInfo with _$WordInfo {
  const factory WordInfo({
    @Default(0) int index,
    @Default('') String topic,
    @Default('') String masked,
    @Default('') String vi,
    @Default('') String phonetic,
    @Default(0) int length,
    @Default(0) int revealedCount,
    String? en,
    String? example,
  }) = _WordInfo;
}
