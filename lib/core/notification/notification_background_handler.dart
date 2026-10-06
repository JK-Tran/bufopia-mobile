import 'package:bufopia/core/notification/local_notification_service.dart';
import 'package:bufopia/core/notification/notification_payload.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint('Handling a background message: ${message.messageId}');

  if (message.notification == null &&
      (message.data.containsKey('title') || message.data.containsKey('body'))) {
    await LocalNotificationService.initialize();

    final payload = NotificationPayload.fromData(
      message.data,
      defaultTitle: message.notification?.title,
      defaultBody: message.notification?.body,
    );
    await LocalNotificationService.showNotification(payload);
  }
}
