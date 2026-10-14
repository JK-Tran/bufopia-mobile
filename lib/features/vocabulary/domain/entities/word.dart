import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';

@freezed
abstract class Word with _$Word {
  const factory Word({
    @Default('') String id,
    @Default('') String topic,
    @Default('') String en,
    @Default('') String vi,
  }) = _Word;
}
