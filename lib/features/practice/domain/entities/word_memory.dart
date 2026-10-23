import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_memory.freezed.dart';

@freezed
abstract class WordMemory with _$WordMemory {
  const factory WordMemory({
    @Default('') String wordId,
    @Default(0) int seen,
    @Default(0) int fast,
    @Default('Learning') String status,
    @Default('') String reason,
    @Default(0.0) double seconds,
    int? last,
    int? due,
  }) = _WordMemory;
}
