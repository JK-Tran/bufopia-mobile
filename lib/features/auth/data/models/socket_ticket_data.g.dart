// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_ticket_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketTicketData _$SocketTicketDataFromJson(Map<String, dynamic> json) =>
    _SocketTicketData(
      ticket: json['ticket'] as String? ?? '',
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SocketTicketDataToJson(_SocketTicketData instance) =>
    <String, dynamic>{
      'ticket': instance.ticket,
      'expiresAt': instance.expiresAt,
    };
