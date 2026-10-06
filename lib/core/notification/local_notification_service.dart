import 'dart:convert';

import 'package:bufopia/core/notification/notification_channels.dart';
import 'package:bufopia/core/notification/notification_payload.dart';
import 'package:bufopia/core/notification/notification_router.dart';
import 'package:bufopia/core/notification/notification_type.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    const initializationSettingsAndroid = AndroidInitializationSettings(
      '@drawable/ic_notification',
    );
    const initializationSettingsDarwin = DarwinInitializationSettings();
    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    await _localNotificationsPlugin.initialize(
      settings: initializationSettings,
      onDidReceiveNotificationResponse: (details) async {
        debugPrint('onDidReceiveNotificationResponse: ${details.payload}');
        if (details.payload != null) {
          try {
            final data = json.decode(details.payload!) as Map<String, dynamic>;
            final payload = NotificationPayload.fromData(data);
            await NotificationRouter.route(payload);
          } on Exception catch (e) {
            debugPrint('Error parsing notification payload: $e');
          }
        }
      },
    );

    await _createChannels();
  }

  static Future<void> _createChannels() async {
    final androidPlugin = _localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    if (androidPlugin != null) {
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          NotificationChannels.defaultChannelId,
          NotificationChannels.defaultChannelName,
          description: NotificationChannels.defaultChannelDescription,
          importance: Importance.max,
        ),
      );
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          NotificationChannels.chatChannelId,
          NotificationChannels.chatChannelName,
          description: NotificationChannels.chatChannelDescription,
          importance: Importance.max,
        ),
      );
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          NotificationChannels.leaveRequestChannelId,
          NotificationChannels.leaveRequestChannelName,
          description: NotificationChannels.leaveRequestChannelDescription,
          importance: Importance.max,
        ),
      );
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          NotificationChannels.feedChannelId,
          NotificationChannels.feedChannelName,
          description: NotificationChannels.feedChannelDescription,
          importance: Importance.max,
        ),
      );
    }
  }

  static Future<void> showNotification(NotificationPayload payload) async {
    if (payload.title == null && payload.body == null) return;

    var channelId = NotificationChannels.defaultChannelId;
    var channelName = NotificationChannels.defaultChannelName;
    var channelDesc = NotificationChannels.defaultChannelDescription;

    switch (payload.type) {
      case NotificationType.newLeaveRequest ||
          NotificationType.leaveRequestApproved ||
          NotificationType.leaveRequestRejected:
        channelId = NotificationChannels.leaveRequestChannelId;
        channelName = NotificationChannels.leaveRequestChannelName;
        channelDesc = NotificationChannels.leaveRequestChannelDescription;
      case NotificationType.newMessage:
        channelId = NotificationChannels.chatChannelId;
        channelName = NotificationChannels.chatChannelName;
        channelDesc = NotificationChannels.chatChannelDescription;
      case NotificationType.leaveRequest ||
          NotificationType.feedComment ||
          NotificationType.feedReply ||
          NotificationType.unknown:
        break;
    }

    final notifId = DateTime.now().millisecondsSinceEpoch.remainder(100000);

    await _localNotificationsPlugin.show(
      id: notifId,
      title: payload.title,
      body: payload.body,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          channelId,
          channelName,
          channelDescription: channelDesc,
          icon: '@drawable/ic_notification',
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: const DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      payload: json.encode(payload.rawData),
    );
  }
}
