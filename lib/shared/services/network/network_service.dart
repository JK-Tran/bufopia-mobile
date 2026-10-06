import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:rxdart/rxdart.dart';

/// Interface kiểm tra và theo dõi trạng thái kết nối mạng
/// chuẩn Clean Architecture
abstract class NetworkService {
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
  NetworkInfoImpl()
    : _connectivity = Connectivity(),
      _connectionChecker = InternetConnectionChecker.createInstance(
        checkTimeout: const Duration(seconds: 2),
        checkInterval: const Duration(seconds: 3),
      ) {
    _initStream();
  }

  NetworkInfoImpl.withClients({
    required this._connectivity,
    required this._connectionChecker,
  }) {
    _initStream();
  }

  final Connectivity _connectivity;
  final InternetConnectionChecker _connectionChecker;

  final BehaviorSubject<bool> _connectivitySubject =
      BehaviorSubject<bool>.seeded(true);
  StreamSubscription<dynamic>? _connectivitySubscription;
  StreamSubscription<dynamic>? _checkerSubscription;
  Timer? _pollingTimer;

  void _initStream() {
    // 1. Kiểm tra trạng thái thực tế ngay khi khởi tạo
    _checkAndEmit();

    // 2. Lắng nghe thay đổi phần cứng mạng từ Connectivity Plus
    _connectivitySubscription = _connectivity.onConnectivityChanged
        .debounceTime(const Duration(milliseconds: 300))
        .listen((_) => _checkAndEmit());

    // 3. Lắng nghe thay đổi trạng thái từ InternetConnectionChecker
    _checkerSubscription = _connectionChecker.onStatusChange.listen((status) {
      final isOnline = status == InternetConnectionStatus.connected;
      _updateStatus(isOnline);
    });
  }

  Future<void> _checkAndEmit() async {
    final results = await _connectivity.checkConnectivity();
    if (results.contains(ConnectivityResult.none)) {
      _updateStatus(false);
      return;
    }
    final hasInternet = await _connectionChecker.hasConnection;
    _updateStatus(hasInternet);
  }

  void _updateStatus(bool isOnline) {
    if (_connectivitySubject.isClosed) return;

    if (_connectivitySubject.value != isOnline) {
      _connectivitySubject.add(isOnline);
    }

    // Nếu đang mất mạng, kích hoạt polling kiểm tra mỗi 2s để nhận diện
    // ngay lập tức khi mạng được bật lại (đặc biệt hiệu quả trên máy ảo)
    if (!isOnline) {
      _startPolling();
    } else {
      _stopPolling();
    }
  }

  void _startPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = Timer.periodic(const Duration(seconds: 2), (_) async {
      final hasInternet = await _connectionChecker.hasConnection;
      if (hasInternet) {
        _updateStatus(true);
      }
    });
  }

  void _stopPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }

  @override
  Future<bool> get isConnected async {
    final results = await _connectivity.checkConnectivity();
    if (results.contains(ConnectivityResult.none)) {
      return false;
    }
    return _connectionChecker.hasConnection;
  }

  @override
  Stream<bool> get onConnectivityChanged =>
      _connectivitySubject.distinct().asBroadcastStream();

  @override
  @disposeMethod
  void dispose() {
    _stopPolling();
    _connectivitySubscription?.cancel();
    _connectivitySubscription = null;
    _checkerSubscription?.cancel();
    _checkerSubscription = null;
    _connectivitySubject.close();
  }
}
