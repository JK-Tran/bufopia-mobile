/// JSON date helpers (tên legacy giữ cho generated serializers).
abstract final class FirestoreJson {
  FirestoreJson._();

  static DateTime? toDateTime(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;
    if (value is String && value.isNotEmpty) {
      return DateTime.tryParse(value);
    }
    return null;
  }

  static String? toDateString(dynamic value) {
    if (value == null) return null;
    if (value is String) return value;
    if (value is DateTime) {
      return '${value.year.toString().padLeft(4, '0')}-'
          '${value.month.toString().padLeft(2, '0')}-'
          '${value.day.toString().padLeft(2, '0')}';
    }
    return null;
  }

  static String? dateTimeToFirestore(DateTime? value) =>
      value?.toUtc().toIso8601String();

  static String writeTimestamp() => DateTime.now().toUtc().toIso8601String();
}
