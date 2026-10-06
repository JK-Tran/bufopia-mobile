import 'package:bufopia/core/constants/storage_keys.dart';
import 'package:bufopia/shared/services/local_storage/app_preferences.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: AppPreferences)
class AppPreferencesImpl implements AppPreferences {
  AppPreferencesImpl(this._prefs);

  final SharedPreferences _prefs;

  @override
  bool get isDarkMode => _prefs.getBool(StorageKeys.isDarkMode) ?? false;

  @override
  Future<bool> saveIsDarkMode({required bool isDarkMode}) =>
      _prefs.setBool(StorageKeys.isDarkMode, isDarkMode);

  @override
  String get appTheme => _prefs.getString(StorageKeys.appTheme) ?? 'paper';

  @override
  Future<bool> saveAppTheme(String theme) =>
      _prefs.setString(StorageKeys.appTheme, theme);

  @override
  bool get isMusicEnabled => _prefs.getBool(StorageKeys.isMusicEnabled) ?? true;

  @override
  Future<bool> saveIsMusicEnabled({required bool isMusicEnabled}) =>
      _prefs.setBool(StorageKeys.isMusicEnabled, isMusicEnabled);

  @override
  bool get isSfxEnabled => _prefs.getBool(StorageKeys.isSfxEnabled) ?? true;

  @override
  Future<bool> saveIsSfxEnabled({required bool isSfxEnabled}) =>
      _prefs.setBool(StorageKeys.isSfxEnabled, isSfxEnabled);

  @override
  String get languageCode => _prefs.getString(StorageKeys.locale) ?? 'vi';

  @override
  Future<bool> saveLanguageCode(String code) =>
      _prefs.setString(StorageKeys.locale, code);

  @override
  String get deviceToken => _prefs.getString(StorageKeys.deviceToken) ?? '';

  @override
  Future<bool> saveDeviceToken(String token) =>
      _prefs.setString(StorageKeys.deviceToken, token);

  @override
  bool get isFirstLogin => _prefs.getBool(StorageKeys.isFirstLogin) ?? true;

  @override
  Future<bool> saveIsFirstLogin({required bool isFirstLogin}) =>
      _prefs.setBool(StorageKeys.isFirstLogin, isFirstLogin);

  @override
  bool get isFirstLaunchApp =>
      _prefs.getBool(StorageKeys.isFirstLaunchApp) ?? true;

  @override
  Future<bool> saveIsFirsLaunchApp({required bool isFirstLaunchApp}) =>
      _prefs.setBool(StorageKeys.isFirstLaunchApp, isFirstLaunchApp);

  @override
  String? get subUser => _prefs.getString(StorageKeys.subUser);

  @override
  String? get currentUser => _prefs.getString(StorageKeys.userData);

  @override
  Future<bool> saveCurrentUser(String user) =>
      _prefs.setString(StorageKeys.userData, user);

  @override
  Future<String> get accessToken async =>
      _prefs.getString(StorageKeys.accessToken) ?? '';

  @override
  Future<void> saveAccessToken(String token) =>
      _prefs.setString(StorageKeys.accessToken, token);

  @override
  Future<String> get refreshToken async =>
      _prefs.getString(StorageKeys.refreshToken) ?? '';

  @override
  Future<void> saveRefreshToken(String token) =>
      _prefs.setString(StorageKeys.refreshToken, token);

  @override
  bool get isLoggedIn => _prefs.getBool(StorageKeys.isLoggedIn) ?? false;

  @override
  Future<String> get zaloAccessToken async =>
      _prefs.getString(StorageKeys.zaloAccessToken) ?? '';

  @override
  Future<void> saveZaloAccessToken(String token) =>
      _prefs.setString(StorageKeys.zaloAccessToken, token);

  @override
  Future<String> get zaloRefreshToken async =>
      _prefs.getString(StorageKeys.zaloRefreshToken) ?? '';

  @override
  Future<void> saveZaloRefreshToken(String token) =>
      _prefs.setString(StorageKeys.zaloRefreshToken, token);

  @override
  Future<void> clearCurrentUserData() async {
    await _prefs.remove(StorageKeys.accessToken);
    await _prefs.remove(StorageKeys.refreshToken);
    await _prefs.remove(StorageKeys.userData);
    await _prefs.remove(StorageKeys.isLoggedIn);
  }

  @override
  String? get socialSecret => _prefs.getString(StorageKeys.socialSecret);

  @override
  Future<bool> saveSocialSecret(String secret) =>
      _prefs.setString(StorageKeys.socialSecret, secret);
}
