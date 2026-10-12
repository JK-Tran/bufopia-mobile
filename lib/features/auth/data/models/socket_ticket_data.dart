/// Model phản hồi lấy vé kết nối WebSocket (POST /api/session/socket-ticket)
class SocketTicketData {
  const SocketTicketData({
    required this.ticket,
    this.expiresAt,
  });

  factory SocketTicketData.fromJson(Map<String, dynamic> json) {
    return SocketTicketData(
      ticket: json['ticket'] as String? ?? '',
      expiresAt: (json['expiresAt'] as num?)?.toInt(),
    );
  }

  final String ticket;
  final int? expiresAt;

  Map<String, dynamic> toJson() => {
    'ticket': ticket,
    if (expiresAt != null) 'expiresAt': expiresAt,
  };
}
