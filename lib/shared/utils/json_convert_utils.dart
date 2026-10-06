import 'package:json_annotation/json_annotation.dart';

/// Tiện ích chuyển giá trị từ JSON (String hoặc int) sang [int], và optional object (int/null/object).

class JsonConvertUtils {
  JsonConvertUtils._();

  /// Parse field JSON có thể là null, int (bỏ qua) hoặc object.
  /// Dùng khi API trả về parent/ref: null, 0 (hoặc số) hoặc object.
  /// - [json] == null → null.
  /// - [json] is int → null (coi như không có object).
  /// - [json] is Map → [fromJson](json).
  /// - còn lại → null.
  static T? optionalObjectFromJson<T>(
    dynamic json,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    if (json == null) {
      return null;
    }
    if (json is int) {
      return null;
    }
    if (json is Map<String, dynamic>) {
      return fromJson(json);
    }
    return null;
  }

  // / Chuyển [value] từ JSON sang [int].
  // / - [int] → trả về nguyên.
  // / - [String] → parse (bỏ khoảng trắng), trả về [int] hoặc [defaultValue] nếu parse lỗi.
  // / - [double] → [truncate].
  // / - [null] / type khác → [defaultValue].
  static int toInt(dynamic value, {int defaultValue = 0}) {
    if (value == null) {
      return defaultValue;
    }
    if (value is int) {
      return value;
    }
    if (value is double) {
      return value.truncate();
    }
    if (value is String) {
      final trimmed = value.trim();
      if (trimmed.isEmpty) {
        return defaultValue;
      }
      return int.tryParse(trimmed) ?? defaultValue;
    }
    return defaultValue;
  }

  // / Chuyển [value] từ JSON sang [int?].
  // / - [int] → trả về nguyên.
  // / - [String] → parse, trả về [int] hoặc null nếu không parse được.
  // / - [double] → [truncate].
  // / - [null] / type khác → null.
  static int? toIntOrNull(dynamic value) {
    if (value == null) {
      return null;
    }
    if (value is int) {
      return value;
    }
    if (value is double) {
      return value.truncate();
    }
    if (value is String) {
      final trimmed = value.trim();
      if (trimmed.isEmpty) {
        return null;
      }
      return int.tryParse(trimmed);
    }
    return null;
  }
}

/// Converter: JSON value (int, String, null) → int?.
class JsonToIntOrNullConverter implements JsonConverter<int?, dynamic> {
  const JsonToIntOrNullConverter();

  @override
  int? fromJson(dynamic json) => JsonConvertUtils.toIntOrNull(json);

  @override
  dynamic toJson(int? object) => object;
}
