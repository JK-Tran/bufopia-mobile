import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_data.freezed.dart';
part 'chat_data.g.dart';

@freezed
abstract class ChatData with _$ChatData {
  const factory ChatData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'actor') int? actor,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'time') num? time,
  }) = _ChatData;

  const ChatData._();

  factory ChatData.fromJson(Map<String, dynamic> json) =>
      _$ChatDataFromJson(json);
}
