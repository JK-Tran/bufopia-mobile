import 'dart:math';

import 'package:bufopia/core/constants/storage_keys.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Service quản lý Device UID — tự sinh UUID v4 và lưu SharedPreferences.
@lazySingleton
class DeviceUidService {
  DeviceUidService(this._prefs);

  final SharedPreferences _prefs;

  static final RegExp _validUidRegex = RegExp(r'^[a-zA-Z0-9_-]{6,100}$');

  /// Lấy uid của thiết bị. Nếu chưa có → tự sinh UUID v4 mới và lưu lại.
  Future<String> getDeviceUid() async {
    final existing = _prefs.getString(StorageKeys.deviceUid);
    if (existing != null &&
        existing.isNotEmpty &&
        _validUidRegex.hasMatch(existing)) {
      return existing;
    }

    final newUid = _generateShortUid();
    await _prefs.setString(StorageKeys.deviceUid, newUid);
    Log.d(
      'Generated new device UID: $newUid',
      name: 'DeviceUidService',
    );
    return newUid;
  }

  /// Xóa uid (chỉ dùng cho debug / test — sẽ force tạo uid+token mới).
  Future<void> clearUid() async {
    await _prefs.remove(StorageKeys.deviceUid);
    Log.d('Cleared device UID', name: 'DeviceUidService');
  }

  /// Sinh UID ngắn gọn (12 ký tự hex, đảm bảo ≥6 ký tự theo regex BE).
  /// Format: xxxxxxxxxxxxxxxx (16 ký tự hex lowercase)
  /// Ví dụ: a3f8c2d1e4b07f9a
  String _generateShortUid() {
    final random = Random.secure();
    final bytes = List<int>.generate(8, (_) => random.nextInt(256));
    return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
  }
}
