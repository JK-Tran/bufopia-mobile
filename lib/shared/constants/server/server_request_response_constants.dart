class ServerRequestResponseConstants {
  const ServerRequestResponseConstants._();

  static const basicAuthorization = 'Authorization';
  static const jwtAuthorization = 'JWT-Authorization';
  static const userAgentKey = 'User-Agent';
  static const currentVersionKey = 'CurrentVersion';
  static const platformKey = 'Platform';
  static const bearer = 'Bearer';

  /// language code
  static const en = 'EN';
  static const vn = 'VN';

  /// gender
  static const male = 1;
  static const female = 2;
  static const other = 3;
  static const unknown = -1;

  //user status
  static const userNew = 1;
  static const userBooked = 2;
  static const userTested = 3;
  static const userTrial = 4;
  static const userActive = 5;
}
