import 'package:freezed_annotation/freezed_annotation.dart';

part 'round_result_data.freezed.dart';
part 'round_result_data.g.dart';

@freezed
abstract class RoundResultData with _$RoundResultData {
  const factory RoundResultData({
    @JsonKey(name: 'index') int? index,
    @JsonKey(name: 'word') String? word,
    @JsonKey(name: 'vi') String? vi,
    @JsonKey(name: 'phonetic') String? phonetic,
    @JsonKey(name: 'example') String? example,
    @JsonKey(name: 'solverUid') String? solverUid,
    @JsonKey(name: 'isSkipped') bool? isSkipped,
    @JsonKey(name: 'gainedScore') int? gainedScore,
  }) = _RoundResultData;

  const RoundResultData._();

  factory RoundResultData.fromJson(Map<String, dynamic> json) =>
      _$RoundResultDataFromJson(json);
}
