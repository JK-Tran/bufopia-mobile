import 'dart:math';

import 'package:bufopia/core/constants/storage_keys.dart';
import 'package:bufopia/shared/services/device/device_uid_service.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DeviceAuthService {
  /// Lấy khóa bí mật thiết bị (social secret token).
  /// Nếu chưa có, tự động sinh chuỗi UUID v4 chuẩn (36 ký tự)
  /// Thỏa mãn regex backend: ^[a-zA-Z0-9-]{32,80}$
  Future<String> getDeviceSecret();

  /// Đồng bộ khóa bí mật từ bên ngoài
  Future<bool> syncSocialSecret(String secret);

  /// Lấy mã định danh thiết bị (UID)
  Future<String> getDeviceUid();

  /// Xóa khóa bí mật (chỉ dùng cho debug/testing hoặc làm mới danh tính)
  Future<void> clearSecret();
}

@LazySingleton(as: DeviceAuthService)
class DeviceAuthServiceImpl implements DeviceAuthService {
  DeviceAuthServiceImpl(
    this._prefs,
    this._deviceUidService,
  );

  final SharedPreferences _prefs;
  final DeviceUidService _deviceUidService;

  static final RegExp _validSecretRegex = RegExp(r'^[a-zA-Z0-9-]{32,80}$');

  @override
  Future<String> getDeviceSecret() async {
    final existing = _prefs.getString(StorageKeys.socialSecret);
    if (existing != null &&
        existing.isNotEmpty &&
        _validSecretRegex.hasMatch(existing)) {
      return existing;
    }

    final newSecret = _generateUuidV4();
    await _prefs.setString(StorageKeys.socialSecret, newSecret);
    Log.d(
      'Generated new device secret: ${_maskSecret(newSecret)}',
      name: 'DeviceAuthService',
    );
    return newSecret;
  }

  @override
  Future<bool> syncSocialSecret(String secret) async {
    final trimmed = secret.trim();
    if (!_validSecretRegex.hasMatch(trimmed)) {
      Log.e(
        'Invalid secret format for sync: length=${trimmed.length}',
        name: 'DeviceAuthService',
      );
      return false;
    }

    await _prefs.setString(StorageKeys.socialSecret, trimmed);
    Log.d(
      'Synchronized device secret: ${_maskSecret(trimmed)}',
      name: 'DeviceAuthService',
    );
    return true;
  }

  @override
  Future<String> getDeviceUid() => _deviceUidService.getDeviceUid();

  @override
  Future<void> clearSecret() async {
    await _prefs.remove(StorageKeys.socialSecret);
    await _deviceUidService.clearUid();
    Log.d('Cleared device secret and UID', name: 'DeviceAuthService');
  }

  /// Sinh chuỗi UUID v4 chuẩn RFC 4122 (36 ký tự gồm hex và gạch nối)
  /// Ví dụ: "c9a646d3-9c61-4cd7-9a60-26466f2c0022"
  String _generateUuidV4() {
    final random = Random.secure();
    final values = List<int>.generate(16, (_) => random.nextInt(256));

    // Version 4 -> byte 6: 0100xxxx
    values[6] = (values[6] & 0x0f) | 0x40;
    // Variant IETF (RFC 4122) -> byte 8: 10xxxxxx
    values[8] = (values[8] & 0x3f) | 0x80;

    final hex = values.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
    return '${hex.substring(0, 8)}-'
        '${hex.substring(8, 12)}-'
        '${hex.substring(12, 16)}-'
        '${hex.substring(16, 20)}-'
        '${hex.substring(20, 32)}';
  }

  String _maskSecret(String secret) {
    if (secret.length <= 8) return '****';
    return '${secret.substring(0, 4)}...${secret.substring(secret.length - 4)}';
  }
}
