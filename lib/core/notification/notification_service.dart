import 'package:bufopia/core/notification/local_notification_service.dart';
import 'package:bufopia/core/notification/notification_background_handler.dart';
import 'package:bufopia/core/notification/notification_payload.dart';
import 'package:bufopia/core/notification/notification_router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

class NotificationService {
  static bool _hasRequestedPermission = false;

  static Future<void> initialize() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
          alert: true,
          badge: true,
          sound: true,
        );

    await LocalNotificationService.initialize();

    FirebaseMessaging.onMessage.listen((message) async {
      debugPrint('====================================');
      debugPrint('🚨 [FCM] Got a message whilst in the foreground!');
      debugPrint('🚨 [FCM] Message ID: ${message.messageId}');
      debugPrint('🚨 [FCM] Message data: ${message.data}');
      debugPrint(
        '🚨 [FCM] Message notification: '
        '${message.notification?.title} - ${message.notification?.body}',
      );
      debugPrint('====================================');

      // Xử lý riêng cho Chat Message:
      if (message.data.containsKey('conversationId')) {}

      try {
        // sl<NotificationBloc>().add(
        //   const NotificationEvent.incrementUnreadCount(),
        // );
      } on Exception catch (e) {
        debugPrint('Cannot dispatch NotificationEvent: $e');
      }

      if (message.notification != null) {
        debugPrint(
          '🚨 [FCM] Showing local notification from FCM notification block.',
        );
        final payload = NotificationPayload.fromData(
          message.data,
          defaultTitle: message.notification?.title,
          defaultBody: message.notification?.body,
        );
        await LocalNotificationService.showNotification(payload);
      } else if (message.data.containsKey('title') ||
          message.data.containsKey('body')) {
        debugPrint(
          '🚨 [FCM] No notification block, but data has title/body. Creating mock notification.',
        );
        final payload = NotificationPayload.fromData(message.data);
        await LocalNotificationService.showNotification(payload);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) async {
      final payload = NotificationPayload.fromData(message.data);
      await NotificationRouter.route(payload);
    });

    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      Future.delayed(const Duration(milliseconds: 1000), () async {
        final payload = NotificationPayload.fromData(initialMessage.data);
        await NotificationRouter.route(payload);
      });
    }
  }

  static Future<void> requestPermission() async {
    if (_hasRequestedPermission) return;
    _hasRequestedPermission = true;

    final messaging = FirebaseMessaging.instance;

    final settings = await messaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      debugPrint('User granted provisional permission');
    } else {
      debugPrint('User declined or has not accepted permission');
    }
  }
}
