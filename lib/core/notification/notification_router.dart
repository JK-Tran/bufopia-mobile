import 'package:bufopia/core/notification/notification_payload.dart';
import 'package:bufopia/core/notification/notification_type.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationRouter {
  static Future<void> route(NotificationPayload payload) async {
    final context = rootNavigatorKey.currentContext;
    if (context == null) return;

    // Mark notification as read if backend sends notificationId in payload
    final notificationId = payload.notificationId;
    if (notificationId != null) {
      try {
        // sl<NotificationBloc>().add(
        //   NotificationEvent.markAsRead([notificationId]),
        // );
      } on Exception catch (e) {
        debugPrint('[NotificationRouter] Cannot mark notification as read: $e');
      }
    }

    switch (payload.type) {
      case NotificationType.leaveRequest:
      case NotificationType.newLeaveRequest:
      case NotificationType.leaveRequestApproved:
      case NotificationType.leaveRequestRejected:
        await context.push('/attendance?tab=leave');
      case NotificationType.feedComment:
      case NotificationType.feedReply:
        final postId = payload.postId;
        final commentId = payload.commentId;
        if (postId != null) {
          final uri = commentId != null
              ? '/feed/detail/$postId?commentId=$commentId'
              : '/feed/detail/$postId';
          await context.push(uri);
        }
      case NotificationType.newMessage:
      case NotificationType.unknown:
        break;
    }
  }
}
