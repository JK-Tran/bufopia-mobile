import 'package:bufopia/features/vocabulary/data/models/word_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deck_data.freezed.dart';
part 'deck_data.g.dart';

@freezed
abstract class DeckData with _$DeckData {
  const factory DeckData({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'practiceSessionId') String? practiceSessionId,
    @JsonKey(name: 'topic') String? topic,
    @JsonKey(name: 'count') int? count,
    @JsonKey(name: 'deck') List<WordData>? deck,
  }) = _DeckData;

  const DeckData._();

  factory DeckData.fromJson(Map<String, dynamic> json) =>
      _$DeckDataFromJson(json);
}
