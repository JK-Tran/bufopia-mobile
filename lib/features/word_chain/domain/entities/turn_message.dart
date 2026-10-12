import 'package:bufopia/features/word_chain/domain/entities/word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'turn_message.freezed.dart';

@freezed
abstract class TurnMessage with _$TurnMessage {
  const factory TurnMessage({
    required int actor,
    required Word entry,
    @Default(0) int time,
  }) = _TurnMessage;
}
