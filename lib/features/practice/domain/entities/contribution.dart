import 'package:freezed_annotation/freezed_annotation.dart';

part 'contribution.freezed.dart';

@freezed
abstract class Contribution with _$Contribution {
  const factory Contribution({
    @Default('') String id,
    @Default('') String wordEn,
    @Default('') String meaningVi,
    @Default('') String topicId,
    @Default('') String partOfSpeech,
    @Default('') String phonetic,
    @Default('') String exampleEn,
    @Default('') String exampleVi,
    @Default('pending') String status,
    String? reviewNote,
    @Default('') String aiState,
    int? createdAt,
  }) = _Contribution;
}
