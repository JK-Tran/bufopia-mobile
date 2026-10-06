abstract class AppPreferences {
  bool get isDarkMode;

  String get appTheme;

  Future<bool> saveAppTheme(String theme);

  bool get isMusicEnabled;

  Future<bool> saveIsMusicEnabled({required bool isMusicEnabled});

  bool get isSfxEnabled;

  Future<bool> saveIsSfxEnabled({required bool isSfxEnabled});

  String get deviceToken;

  String get languageCode;

  Future<bool> saveLanguageCode(String code);

  bool get isFirstLogin;

  bool get isFirstLaunchApp;

  String? get subUser;

  String? get currentUser;

  Future<String> get accessToken;

  Future<String> get refreshToken;

  bool get isLoggedIn;

  Future<bool> saveIsFirstLogin({required bool isFirstLogin});

  Future<bool> saveIsFirsLaunchApp({required bool isFirstLaunchApp});

  Future<void> saveAccessToken(String token);

  Future<void> saveRefreshToken(String token);

  Future<String> get zaloAccessToken;

  Future<String> get zaloRefreshToken;

  Future<void> saveZaloAccessToken(String token);

  Future<void> saveZaloRefreshToken(String token);

  Future<bool> saveIsDarkMode({required bool isDarkMode});

  Future<bool> saveDeviceToken(String token);

  Future<void> clearCurrentUserData();

  Future<bool> saveCurrentUser(String user);

  String? get socialSecret;

  Future<bool> saveSocialSecret(String secret);
}
