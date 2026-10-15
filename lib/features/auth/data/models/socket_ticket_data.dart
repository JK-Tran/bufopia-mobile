import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_ticket_data.freezed.dart';
part 'socket_ticket_data.g.dart';

/// Model phản hồi lấy vé kết nối WebSocket (POST /api/session/socket-ticket)
@freezed
abstract class SocketTicketData with _$SocketTicketData {
  const factory SocketTicketData({
    @JsonKey(name: 'ticket') @Default('') String ticket,
    @JsonKey(name: 'expiresAt') int? expiresAt,
  }) = _SocketTicketData;

  const SocketTicketData._();

  factory SocketTicketData.fromJson(Map<String, dynamic> json) =>
      _$SocketTicketDataFromJson(json);
}
