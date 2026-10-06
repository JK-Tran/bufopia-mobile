// dart format off
// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get counterAppBarTitle => 'Bộ đếm';

  @override
  String get navHome => 'Khám phá';

  @override
  String get navMap => 'Bản đồ';

  @override
  String get navChat => 'Tin nhắn';

  @override
  String get navProfile => 'Cá nhân';

  @override
  String get unknownError => 'Đã xảy ra lỗi không xác định';

  @override
  String get networkError => 'Lỗi kết nối mạng. Vui lòng kiểm tra lại đường truyền.';

  @override
  String get timeoutError => 'Kết nối quá thời gian chờ. Vui lòng thử lại.';

  @override
  String get sessionExpiredError => 'Phiên đăng nhập đã hết hạn. Vui lòng đăng nhập lại.';

  @override
  String get unauthorizedError => 'Không có quyền truy cập. Vui lòng đăng nhập.';

  @override
  String get forbiddenError => 'Truy cập bị từ chối.';

  @override
  String get notFoundError => 'Không tìm thấy dữ liệu yêu cầu.';

  @override
  String get serverError => 'Lỗi máy chủ. Vui lòng thử lại sau.';

  @override
  String get year => 'năm trước';

  @override
  String get month => 'tháng trước';

  @override
  String get day => 'ngày trước';

  @override
  String get hour => 'giờ trước';

  @override
  String get minute => 'phút trước';

  @override
  String get justNow => 'Vừa xong';
}
