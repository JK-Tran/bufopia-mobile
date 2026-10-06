import 'package:bufopia/core/notification/notification_type.dart';

class NotificationPayload {
  NotificationPayload({
    required this.type,
    required this.rawData,
    this.title,
    this.body,
    this.postId,
    this.commentId,
    this.notificationId,
  });
  factory NotificationPayload.fromData(
    Map<String, dynamic> data, {
    String? defaultTitle,
    String? defaultBody,
  }) {
    final type = NotificationType.fromString(data['type']?.toString());
    final notificationId = int.tryParse(
      data['notificationId']?.toString() ?? '',
    );

    return NotificationPayload(
      type: type,
      title: data['title']?.toString() ?? defaultTitle,
      body: data['body']?.toString() ?? defaultBody,
      postId: data['postId']?.toString(),
      commentId: data['commentId']?.toString(),
      notificationId: notificationId,
      rawData: data,
    );
  }
  final NotificationType type;
  final String? title;
  final String? body;
  final String? postId;
  final String? commentId;
  final int? notificationId;
  final Map<String, dynamic> rawData;
}
