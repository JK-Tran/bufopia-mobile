import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

/// Interface kiểm tra và theo dõi trạng thái kết nối mạng
/// chuẩn Clean Architecture
abstract class NetworkService {
  /// Trạng thái kết nối nhanh trong bộ nhớ (O(1)), không làm nghẽn API
  bool get isConnectedFast;

  /// Kiểm tra tức thời thiết bị có thực sự ra được Internet hay không
  Future<bool> get isConnected;

  /// Stream phát ra trạng thái Internet theo thời gian thực
  /// (true: online, false: offline)
  Stream<bool> get onConnectivityChanged;

  /// Giải phóng tài nguyên stream và subscription
  void dispose();
}

@LazySingleton(as: NetworkService)
class NetworkInfoImpl implements NetworkService {
  NetworkInfoImpl(this._connectivity) {
    _initStream();
  }

  /// Named constructor hỗ trợ inject custom connectivity cho unit test
  NetworkInfoImpl.withClients({
    required this._connectivity,
  }) {
    _initStream();
  }

  final Connectivity _connectivity;

  static const String _checkHost = 'google.com';
  static const Duration _checkTimeout = Duration(seconds: 3);

  final BehaviorSubject<bool> _connectivitySubject =
      BehaviorSubject<bool>.seeded(true);
  StreamSubscription<dynamic>? _connectivitySubscription;

  void _initStream() {
    _checkAndEmit();

    // Event-driven: Chỉ kiểm tra khi phần cứng mạng thay đổi (Wi-Fi/4G/Airplane)
    // Debounce 500ms để triệt tiêu hiện tượng nhảy sóng chập chờn
    _connectivitySubscription = _connectivity.onConnectivityChanged
        .debounceTime(const Duration(milliseconds: 500))
        .listen((_) => _checkAndEmit());
  }

  Future<void> _checkAndEmit() async {
    final hasInternet = await isConnected;
    _updateStatus(hasInternet);
  }

  void _updateStatus(bool isOnline) {
    if (_connectivitySubject.isClosed) return;

    if (_connectivitySubject.value != isOnline) {
      _connectivitySubject.add(isOnline);
    }
  }

  @override
  bool get isConnectedFast => _connectivitySubject.value;

  @override
  Future<bool> get isConnected async {
    try {
      final results = await _connectivity.checkConnectivity();
      if (results.contains(ConnectivityResult.none) || results.isEmpty) {
        return false;
      }

      // DNS lookup chuẩn của OS: tương thích 100% Android 10-15 & Private DNS
      final lookup = await InternetAddress.lookup(
        _checkHost,
      ).timeout(_checkTimeout);
      return lookup.isNotEmpty && lookup[0].rawAddress.isNotEmpty;
    } on Object {
      return false;
    }
  }

  @override
  Stream<bool> get onConnectivityChanged =>
      _connectivitySubject.distinct().asBroadcastStream();

  @override
  @disposeMethod
  void dispose() {
    _connectivitySubscription?.cancel();
    _connectivitySubscription = null;
    _connectivitySubject.close();
  }
}
