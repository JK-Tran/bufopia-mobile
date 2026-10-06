enum NotificationType {
  leaveRequest('LEAVE_REQUEST'),
  newLeaveRequest('NEW_LEAVE_REQUEST'),
  leaveRequestApproved('LEAVE_REQUEST_APPROVED'),
  leaveRequestRejected('LEAVE_REQUEST_REJECTED'),
  feedComment('FEED_COMMENT'),
  feedReply('FEED_REPLY'),
  newMessage('NEW_MESSAGE'),
  unknown('UNKNOWN');

  const NotificationType(this.value);

  final String value;

  static NotificationType fromString(String? typeStr) {
    if (typeStr == null) return NotificationType.unknown;
    return NotificationType.values.firstWhere(
      (e) => e.value == typeStr,
      orElse: () => NotificationType.unknown,
    );
  }
}
