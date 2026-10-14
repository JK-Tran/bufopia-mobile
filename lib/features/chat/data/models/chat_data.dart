import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_data.freezed.dart';

@freezed
abstract class ChatData with _$ChatData {
  const factory ChatData({
    @Default('') String id,
    @Default(0) int actor,
    @Default('') String text,
    String? name,
    String? avatar,
    num? time,
  }) = _ChatData;

  const ChatData._();
}
