// dart format off
// coverage:ignore-file

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get counterAppBarTitle => 'Counter';

  @override
  String get navHome => 'Explore';

  @override
  String get navMap => 'Map';

  @override
  String get navChat => 'Messages';

  @override
  String get navProfile => 'Profile';

  @override
  String get unknownError => 'An unknown error occurred';

  @override
  String get networkError => 'Network connection error. Please check your internet connection.';

  @override
  String get timeoutError => 'Connection timed out. Please try again.';

  @override
  String get sessionExpiredError => 'Session has expired. Please log in again.';

  @override
  String get unauthorizedError => 'Unauthorized access. Please log in.';

  @override
  String get forbiddenError => 'Access forbidden.';

  @override
  String get notFoundError => 'Requested resource not found.';

  @override
  String get serverError => 'Server error. Please try again later.';

  @override
  String get year => 'year(s) ago';

  @override
  String get month => 'month(s) ago';

  @override
  String get day => 'day(s) ago';

  @override
  String get hour => 'hour(s) ago';

  @override
  String get minute => 'minute(s) ago';

  @override
  String get justNow => 'Just now';
}
