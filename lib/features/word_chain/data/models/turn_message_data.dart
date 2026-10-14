import 'package:bufopia/features/word_chain/data/models/word_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'turn_message_data.freezed.dart';
part 'turn_message_data.g.dart';

@freezed
abstract class TurnMessageData with _$TurnMessageData {
  const factory TurnMessageData({
    @JsonKey(name: 'actor') required int actor,
    @JsonKey(name: 'entry') required WordData entry,
    @JsonKey(name: 'time') int? time,
  }) = _TurnMessageData;

  const TurnMessageData._();

  factory TurnMessageData.fromJson(Map<String, dynamic> json) =>
      _$TurnMessageDataFromJson(json);
}
