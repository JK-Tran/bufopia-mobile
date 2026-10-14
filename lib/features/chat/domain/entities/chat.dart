import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

@freezed
abstract class Chat with _$Chat {
  const factory Chat({
    @Default('') String id,
    @Default(0) int actor,
    @Default('') String text,
    String? name,
    String? avatar,
    num? time,
    @Default(false) bool isMine,
  }) = _Chat;
}
