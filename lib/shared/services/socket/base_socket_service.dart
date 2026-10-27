import 'dart:async';
import 'dart:convert';

import 'package:bufopia/features/auth/data/datasources/auth_data_source.dart';
import 'package:bufopia/shared/services/device/device_auth_service.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// Dữ liệu xác thực qua First-Frame Handshake (Go Realtime Server)
class FirstFrameAuth {
  const FirstFrameAuth({
    required this.uid,
    this.token,
    this.deviceSecret,
  });

  final String uid;
  final String? token;
  final String? deviceSecret;

  Map<String, dynamic> toJson() {
    final t = token;
    final ds = deviceSecret;
    return {
      'type': 'authenticate',
      'uid': uid,
      if (t != null && t.isNotEmpty) 'token': t,
      if (ds != null && ds.isNotEmpty) 'deviceSecret': ds,
    };
  }
}

/// Lớp cơ sở trừu tượng quản lý kết nối WebSocket tầng thấp:
/// vòng đời kết nối, heartbeat ping/pong, tự động kết nối lại khi rớt mạng,
/// quản lý stream sự kiện và gửi nhận raw message.
abstract class BaseSocketService {
  BaseSocketService(
    this.deviceAuthService,
    this.authDataSource,
    this.firebaseAuthService,
  );

  final DeviceAuthService deviceAuthService;
  final AuthDataSource authDataSource;
  final FirebaseAuthService firebaseAuthService;

  String get logTag;

  WebSocketChannel? _channel;
  // Subscription is managed across connection lifecycles and cancelled
  // in disconnect().

  StreamSubscription<dynamic>? _channelSubscription;
  Timer? _heartbeatTimer;

  final _eventController = StreamController<SocketEvent>.broadcast();
  final _stateController = StreamController<SocketConnectionState>.broadcast();

  SocketConnectionState _connectionState = SocketConnectionState.disconnected;

  int _sessionId = 0;
  String? _lastConnectedUrl;
  FirstFrameAuth? _lastFirstFrameAuth;
  bool _isManuallyClosed = false;
  bool isNormalServerClose = false;

  int _reconnectAttempts = 0;
  static const int _maxReconnectAttempts = 3;
  Timer? _reconnectTimer;

  Stream<SocketEvent> get eventStream => _eventController.stream;
  SocketConnectionState get connectionState => _connectionState;
  Stream<SocketConnectionState> get connectionStateStream =>
      _stateController.stream;
  bool get isConnected =>
      _connectionState == SocketConnectionState.connected && _channel != null;

  /// Helper giải quyết token xác thực:
  /// (ưu tiên token truyền vào -> Firebase token -> Device secret)
  Future<String> resolveToken(
    String? token, {
    bool forceRefresh = false,
  }) async {
    if (token != null && token.isNotEmpty && !forceRefresh) {
      return token;
    }
    final idToken = await firebaseAuthService.getIdToken(
      forceRefresh: forceRefresh,
    );
    if (idToken != null && idToken.isNotEmpty) {
      return idToken;
    }
    return deviceAuthService.getDeviceSecret();
  }

  /// Kết nối đến WebSocket URL (hỗ trợ cả First-Frame Auth và Ticket Auth)
  Future<void> connectUrl(
    String url, {
    FirstFrameAuth? firstFrameAuth,
    bool isReconnecting = false,
  }) async {
    if (!isReconnecting) {
      await disconnect();
      _isManuallyClosed = false;
      _reconnectAttempts = 0;
      _lastConnectedUrl = url;
      _lastFirstFrameAuth = firstFrameAuth;
    } else {
      stopHeartbeat();
      _sessionId++;
      final channelToClose = _channel;
      final subToCancel = _channelSubscription;
      _channel = null;
      _channelSubscription = null;
      try {
        await subToCancel?.cancel();
      } on Object catch (_) {}
      try {
        await channelToClose?.sink.close();
      } on Object catch (_) {}
    }

    final currentSession = ++_sessionId;
    updateState(
      isReconnecting
          ? SocketConnectionState.reconnecting
          : SocketConnectionState.connecting,
    );
    Log.d(
      'Connecting to WebSocket: $url (reconnect: $isReconnecting, '
      'firstFrame: ${firstFrameAuth != null})',
      name: logTag,
    );

    try {
      final uri = Uri.parse(url);
      final newChannel = WebSocketChannel.connect(uri);

      await newChannel.ready;

      // Nếu trong lúc chờ kết nối, người dùng đã hủy hoặc có kết nối mới
      if (_sessionId != currentSession || _isManuallyClosed) {
        try {
          await newChannel.sink.close();
        } on Object catch (_) {}
        return;
      }

      _channel = newChannel;

      _channelSubscription = _channel?.stream.listen(
        _handleIncomingMessage,
        onError: _handleError,
        onDone: _handleDone,
        cancelOnError: true,
      );

      if (firstFrameAuth != null) {
        // Giao thức Auth B: First-Frame WebSocket Handshake (Go Server)
        final authPayload = jsonEncode(firstFrameAuth.toJson());
        Log.d('Sending First-Frame Authenticate: $authPayload', name: logTag);
        newChannel.sink.add(authPayload);
        // Socket vẫn ở trạng thái connecting cho đến khi nhận được 'welcome'
      } else {
        // Giao thức Auth A: Ticket-based WebSocket (Cloudflare Worker)
        updateState(SocketConnectionState.connected);
        Log.d('WebSocket connected successfully', name: logTag);

        if (isReconnecting) {
          _reconnectAttempts = 0;
          emitEvent(const SocketReconnectedEvent());
        }

        startHeartbeat();
      }
    } on Object catch (e, stackTrace) {
      if (_sessionId != currentSession || _isManuallyClosed) return;
      Log.e(
        'WebSocket connection error: $e',
        name: logTag,
        errorObject: e,
        stackTrace: stackTrace,
      );
      if (isReconnecting) {
        scheduleReconnect();
      } else {
        final message = e.toString().contains('was not upgraded to websocket')
            ? 'Máy chủ từ chối kết nối WebSocket (Lỗi xác thực hoặc 401/403)'
            : e.toString();
        emitEvent(SocketErrorEvent(message: message, error: e));
      }
    }
  }

  Future<void> _handleIncomingMessage(dynamic raw) async {
    try {
      final isHeartbeat =
          raw is String && (raw.contains('"pong"') || raw.contains('"ping"'));
      if (!isHeartbeat) {
        Log.d('WebSocket Received: $raw', name: logTag);
      }
      final Map<String, dynamic> json;
      if (raw is String) {
        final decoded = jsonDecode(raw);
        if (decoded is Map<String, dynamic>) {
          json = decoded;
        } else if (decoded is Map) {
          json = Map<String, dynamic>.from(decoded);
        } else {
          return;
        }
      } else if (raw is Map<String, dynamic>) {
        json = raw;
      } else if (raw is Map) {
        json = Map<String, dynamic>.from(raw);
      } else {
        return;
      }

      final type = json['type'] as String? ?? '';
      switch (type) {
        case 'welcome':
          Log.d('First-Frame Welcome received: $json', name: logTag);
          if (_connectionState != SocketConnectionState.connected) {
            updateState(SocketConnectionState.connected);
            Log.d('WebSocket ready after First-Frame Welcome', name: logTag);
            if (_reconnectAttempts > 0) {
              _reconnectAttempts = 0;
              emitEvent(const SocketReconnectedEvent());
            }
            startHeartbeat();
          }
          await onWelcome(json);
          return;
        case 'pong':
          return;
        case 'ping':
          sendRaw({'type': 'pong'});
          return;
        case 'error':
          final message = json['message'] as String? ?? 'Lỗi từ máy chủ';
          final code = json['code'] as String?;
          emitEvent(
            SocketErrorEvent(
              message: code != null ? '[$code] $message' : message,
            ),
          );
        default:
          await handleGameEvent(type, json);
      }
    } on Exception catch (e) {
      Log.e('Error decoding WebSocket message: $e', name: logTag);
    }
  }

  /// Hàm trừu tượng để lớp con xử lý các sự kiện riêng của từng chế độ game
  FutureOr<void> handleGameEvent(String type, Map<String, dynamic> json);

  /// Hook được gọi sau khi nhận gói tin 'welcome' từ Go Realtime Server
  FutureOr<void> onWelcome(Map<String, dynamic> json) {}

  void _handleError(Object error) {
    Log.e('WebSocket stream error: $error', name: logTag);
    stopHeartbeat();
    updateState(SocketConnectionState.error);
    emitEvent(SocketErrorEvent(message: error.toString(), error: error));
    if (!_isManuallyClosed && _lastConnectedUrl != null) {
      scheduleReconnect();
    }
  }

  void _handleDone() {
    Log.d(
      'WebSocket stream closed. closeCode: ${_channel?.closeCode}, '
      'closeReason: ${_channel?.closeReason}',
      name: logTag,
    );
    stopHeartbeat();
    if (isNormalServerClose || _isManuallyClosed || _lastConnectedUrl == null) {
      isNormalServerClose = false;
      updateState(SocketConnectionState.disconnected);
    } else {
      scheduleReconnect();
    }
  }

  void scheduleReconnect() {
    _reconnectTimer?.cancel();
    if (_reconnectAttempts < _maxReconnectAttempts && !_isManuallyClosed) {
      _reconnectAttempts++;
      final delaySeconds = (_reconnectAttempts * 3).clamp(3, 30);
      updateState(SocketConnectionState.reconnecting);
      emitEvent(
        SocketReconnectingEvent(
          attempt: _reconnectAttempts,
          maxAttempts: _maxReconnectAttempts,
          delaySeconds: delaySeconds,
        ),
      );
      Log.d(
        'Scheduling WebSocket reconnect attempt '
        '$_reconnectAttempts/$_maxReconnectAttempts in ${delaySeconds}s...',
        name: logTag,
      );
      _reconnectTimer = Timer(Duration(seconds: delaySeconds), () {
        if (!_isManuallyClosed) {
          reconnect();
        }
      });
    } else {
      updateState(SocketConnectionState.disconnected);
      emitEvent(
        const SocketErrorEvent(
          message: 'Không thể kết nối lại với máy chủ. Vui lòng thử lại sau.',
        ),
      );
    }
  }

  /// Hook thực hiện kết nối lại. Các lớp con có thể override để xin vé mới
  /// (ticket) trước khi mở lại WebSocket connection.
  Future<void> reconnect() async {
    if (!_isManuallyClosed && _lastConnectedUrl != null) {
      await connectUrl(
        _lastConnectedUrl!,
        firstFrameAuth: _lastFirstFrameAuth,
        isReconnecting: true,
      );
    }
  }

  void startHeartbeat() {
    stopHeartbeat();
    _heartbeatTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      if (_connectionState == SocketConnectionState.connected) {
        sendRaw({'type': 'ping'});
      }
    });
  }

  void stopHeartbeat() {
    _heartbeatTimer?.cancel();
    _heartbeatTimer = null;
  }

  void updateState(SocketConnectionState state) {
    _connectionState = state;
    if (!_stateController.isClosed) {
      _stateController.add(state);
    }
    emitEvent(SocketConnectionChangedEvent(state));
  }

  void emitEvent(SocketEvent event) {
    if (!_eventController.isClosed) {
      _eventController.add(event);
    }
  }

  void sendRaw(Map<String, dynamic> data) {
    if (!isConnected) {
      Log.d(
        'Cannot send message: WebSocket is not connected or closing',
        name: logTag,
      );
      return;
    }
    try {
      final payload = jsonEncode(data);
      if (data['type'] != 'ping') {
        Log.d('WebSocket Sending: $payload', name: logTag);
      }
      _channel?.sink.add(payload);
    } on Object catch (e, stackTrace) {
      Log.e(
        'Error sending WebSocket message: $e',
        name: logTag,
        errorObject: e,
        stackTrace: stackTrace,
      );
    }
  }

  Future<void> disconnect() async {
    _isManuallyClosed = true;
    isNormalServerClose = false;
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
    _reconnectAttempts = 0;
    _lastConnectedUrl = null;
    _lastFirstFrameAuth = null;

    stopHeartbeat();
    _sessionId++;
    final channelToClose = _channel;
    final subToCancel = _channelSubscription;
    _channel = null;
    _channelSubscription = null;

    try {
      await subToCancel?.cancel();
    } on Object catch (e) {
      Log.d('Warning cancelling WebSocket subscription: $e', name: logTag);
    }

    try {
      await channelToClose?.sink.close();
    } on Object catch (e) {
      Log.d('Warning closing WebSocket sink: $e', name: logTag);
    } finally {
      if (_connectionState != SocketConnectionState.disconnected) {
        updateState(SocketConnectionState.disconnected);
      }
    }
  }

  Future<void> dispose() async {
    try {
      await _channelSubscription?.cancel();
    } on Object catch (_) {}
    _channelSubscription = null;
    await disconnect();
    await _eventController.close();
    await _stateController.close();
  }
}
