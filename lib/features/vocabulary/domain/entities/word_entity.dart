import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_entity.freezed.dart';

@freezed
abstract class WordEntity with _$WordEntity {
  const factory WordEntity({
    @Default('') String id,
    @Default('') String topic,
    @Default('') String en,
    @Default('') String vi,
  }) = _WordEntity;
}
