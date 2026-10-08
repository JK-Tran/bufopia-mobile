import 'package:bufopia/shared/constants/format/number_format_constants.dart';
import 'package:intl/intl.dart';

class NumberFormatUtils {
  NumberFormatUtils._();

  static final NumberFormat _defaultFormatter = NumberFormat(
    NumberFormatConstants.defaultFormat,
  );

  /// Formatter mặc định ('#,###')
  static NumberFormat get defaultFormatter => _defaultFormatter;

  /// Định dạng số theo chuẩn '#,###' (ví dụ: 15,645)
  static String formatNumber(num number) {
    return _defaultFormatter.format(number);
  }

  static String formatScore(String scoreStr) {
    final scoreValue = double.tryParse(scoreStr) ?? 0.0;
    final normalizedScore = scoreValue <= 10 ? scoreValue * 10 : scoreValue;
    return normalizedScore.ceil().toString();
  }
}
