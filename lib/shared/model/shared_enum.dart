import 'package:bufopia/shared/constants/locale_constants.dart';
import 'package:bufopia/shared/constants/server/server_request_response_constants.dart';

enum Flavor { develop, qa, staging, production }

enum DeviceType { mobile, tablet }

enum AuthStatus { authenticated, unauthenticated, authenticating, noPermission }

enum Gender {
  male(ServerRequestResponseConstants.male),
  female(ServerRequestResponseConstants.female),
  other(ServerRequestResponseConstants.other),
  unknown(ServerRequestResponseConstants.unknown);

  const Gender(this.serverValue);
  final int serverValue;

  static const Gender defaultValue = unknown;
}

enum UserStatus {
  userNew(ServerRequestResponseConstants.userNew),
  userBooked(ServerRequestResponseConstants.userBooked),
  userTested(ServerRequestResponseConstants.userTested),
  userTrial(ServerRequestResponseConstants.userTrial),
  userActive(ServerRequestResponseConstants.userActive),
  unknown(ServerRequestResponseConstants.unknown);

  const UserStatus(this.serverValue);
  final int serverValue;
}

enum LanguageCode {
  en(
    localeCode: LocaleConstants.en,
    serverValue: ServerRequestResponseConstants.en,
  ),
  vi(
    localeCode: LocaleConstants.vn,
    serverValue: ServerRequestResponseConstants.vn,
  );

  const LanguageCode({required this.localeCode, required this.serverValue});
  final String localeCode;
  final String serverValue;

  static const LanguageCode defaultValue = vi;
}
