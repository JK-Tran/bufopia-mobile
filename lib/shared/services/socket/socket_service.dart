import 'dart:async';
import 'dart:convert';

import 'package:bufopia/shared/constants/url_constants.dart';
import 'package:bufopia/shared/services/device/device_auth_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract class SocketService {
  Stream<SocketEvent> get eventStream;
  SocketConnectionState get connectionState;
  Stream<SocketConnectionState> get connectionStateStream;
  bool get isConnected;

  Future<void> connectMatchmake({
    required String uid,
    String? token,
    String topic = 'auto',
    String? name,
    String? avatar,
  });

  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    String? token,
    String? name,
    String? avatar,
  });

  void sendReady({int matchRound = 1});
  void sendMatchAnswer({
    required int matchRound,
    required int roundIndex,
    required String optionId,
  });

  /// Gửi cancel để hủy tìm trận (chỉ dùng trong Matchmaker)
  void sendCancel();

  void sendRematch();
  void sendLeave();
  void sendRaw(Map<String, dynamic> data);

  Future<void> disconnect();
  Future<void> dispose();
}

@LazySingleton(as: SocketService)
class SocketServiceImpl implements SocketService {
  SocketServiceImpl(this._deviceAuthService);

  final DeviceAuthService _deviceAuthService;

  WebSocketChannel? _channel;
  // Subscription is managed across connection lifecycles and cancelled in
  // disconnect().
  // ignore: cancel_subscriptions
  StreamSubscription<dynamic>? _channelSubscription;
  Timer? _heartbeatTimer;

  final _eventController = StreamController<SocketEvent>.broadcast();
  final _stateController = StreamController<SocketConnectionState>.broadcast();

  SocketConnectionState _connectionState = SocketConnectionState.disconnected;

  int _sessionId = 0;
  String? _lastConnectedUrl;
  bool _isManuallyClosed = false;

  /// Flag báo WS đóng theo chuối bình thường (server đóng sau `matched`)
  /// — không cần reconnect trong trường hợp này.
  bool _isNormalServerClose = false;

  int _reconnectAttempts = 0;
  static const int _maxReconnectAttempts = 3;
  Timer? _reconnectTimer;

  @override
  Stream<SocketEvent> get eventStream => _eventController.stream;

  @override
  SocketConnectionState get connectionState => _connectionState;

  @override
  Stream<SocketConnectionState> get connectionStateStream =>
      _stateController.stream;

  @override
  bool get isConnected =>
      _connectionState == SocketConnectionState.connected && _channel != null;

  /// Helper trích xuất secret token tránh lặp code (DRY)
  Future<String> _resolveToken(String? token) async {
    if (token != null && token.isNotEmpty) {
      return token;
    }
    return _deviceAuthService.getDeviceSecret();
  }

  @override
  Future<void> connectMatchmake({
    required String uid,
    String? token,
    String topic = 'auto',
    String? name,
    String? avatar,
  }) async {
    final effectiveToken = await _resolveToken(token);
    final url = UrlConstants.matchmakeWsUrl(
      uid: uid,
      token: effectiveToken,
      topic: topic,
      name: name,
      avatar: avatar,
    );
    await _connect(url);
  }

  @override
  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    String? token,
    String? name,
    String? avatar,
  }) async {
    final effectiveToken = await _resolveToken(token);
    final url = UrlConstants.roomWsUrl(
      roomCode: roomCode,
      uid: uid,
      token: effectiveToken,
      name: name,
      avatar: avatar,
    );
    await _connect(url);
  }

  Future<void> _connect(String url, {bool isReconnecting = false}) async {
    if (!isReconnecting) {
      await disconnect();
      _isManuallyClosed = false;
      _reconnectAttempts = 0;
      _lastConnectedUrl = url;
    } else {
      _stopHeartbeat();
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
    _updateState(
      isReconnecting
          ? SocketConnectionState.reconnecting
          : SocketConnectionState.connecting,
    );
    Log.d(
      'Connecting to WebSocket: $url (reconnect: $isReconnecting)',
      name: 'SocketService',
    );

    try {
      final uri = Uri.parse(url);
      final newChannel = WebSocketChannel.connect(uri);

      await newChannel.ready;

      // Nếu trong lúc chờ kết nối, người dùng đã hủy hoặc có kết nối khác
      if (_sessionId != currentSession || _isManuallyClosed) {
        try {
          await newChannel.sink.close();
        } on Object catch (_) {}
        return;
      }

      _channel = newChannel;
      _updateState(SocketConnectionState.connected);
      Log.d('WebSocket connected successfully', name: 'SocketService');

      if (isReconnecting) {
        _reconnectAttempts = 0;
        _emitEvent(const SocketReconnectedEvent());
      }

      _startHeartbeat();

      _channelSubscription = _channel?.stream.listen(
        _handleIncomingMessage,
        onError: _handleError,
        onDone: _handleDone,
        cancelOnError: true,
      );
    } on Object catch (e, stackTrace) {
      if (_sessionId != currentSession || _isManuallyClosed) return;
      Log.e(
        'WebSocket connection error: $e',
        name: 'SocketService',
        errorObject: e,
        stackTrace: stackTrace,
      );
      if (isReconnecting) {
        _scheduleReconnect();
      } else {
        final message = e.toString().contains('was not upgraded to websocket')
            ? 'Máy chủ từ chối kết nối WebSocket (Lỗi xác thực hoặc 401/403)'
            : e.toString();
        _emitEvent(SocketErrorEvent(message: message, error: e));
      }
    }
  }

  void _handleIncomingMessage(dynamic raw) {
    try {
      Log.d('WebSocket Received: $raw', name: 'SocketService');
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
        case 'queued':
          _emitEvent(MatchmakeQueuedEvent.fromJson(json));
        case 'matched':
          // Server tự đóng WS sau khi gửi `matched` — đây là normal close.
          _isNormalServerClose = true;
          _emitEvent(MatchmakeMatchedEvent.fromJson(json));

        case 'connected':
          _emitEvent(RoomConnectedEvent.fromJson(json));
        case 'player_joined':
          _emitEvent(RoomPlayerJoinedEvent.fromJson(json));

        case 'match_start':
          _emitEvent(RoomMatchStartEvent.fromJson(json));
        case 'game_start':
          _emitEvent(RoomGameStartEvent.fromJson(json));

        case 'sync_state':
          _emitEvent(RoomSyncStateEvent.fromJson(json));

        case 'answer_result':
          _emitEvent(RoomAnswerResultEvent.fromJson(json));

        case 'round_timeout':
          _emitEvent(RoomRoundTimeoutEvent.fromJson(json));

        case 'next_round':
          _emitEvent(RoomNextRoundEvent.fromJson(json));

        case 'match_finished':
          _emitEvent(RoomMatchFinishedEvent.fromJson(json));
        case 'game_over':
          _emitEvent(RoomGameOverEvent.fromJson(json));

        case 'player_left':
        case 'player_disconnected':
          _emitEvent(RoomPlayerLeftEvent.fromJson(json));

        case 'error':
          final message = json['message'] as String? ?? 'Lỗi từ máy chủ';
          final code = json['code'] as String?;
          _emitEvent(
            SocketErrorEvent(
              message: code != null ? '[$code] $message' : message,
            ),
          );

        case 'pong':
        // Heartbeat ack — không cần xử lý

        case 'ready_ack':
        // Server xác nhận ready — chờ sync_state

        default:
          _emitEvent(SocketRawMessageEvent(json));
      }
    } on Exception catch (e) {
      Log.e('Error decoding WebSocket message: $e', name: 'SocketService');
    }
  }

  void _handleError(Object error) {
    Log.e('WebSocket stream error: $error', name: 'SocketService');
    _stopHeartbeat();
    _updateState(SocketConnectionState.error);
    _emitEvent(
      SocketErrorEvent(message: error.toString(), error: error),
    );
    if (!_isManuallyClosed && _lastConnectedUrl != null) {
      _scheduleReconnect();
    }
  }

  void _handleDone() {
    Log.d('WebSocket stream closed', name: 'SocketService');
    _stopHeartbeat();
    // Nếu server đóng WS sau `matched` (normal close) hoặc đã manually close
    // — không reconnect.
    if (_isNormalServerClose ||
        _isManuallyClosed ||
        _lastConnectedUrl == null) {
      _isNormalServerClose = false;
      _updateState(SocketConnectionState.disconnected);
    } else {
      _scheduleReconnect();
    }
  }

  void _scheduleReconnect() {
    _reconnectTimer?.cancel();
    if (_reconnectAttempts < _maxReconnectAttempts && !_isManuallyClosed) {
      _reconnectAttempts++;
      // Delay tối thiểu 3s để tránh vượt rate limit 20 kết nối/phút
      final delaySeconds = (_reconnectAttempts * 3).clamp(3, 30);
      _updateState(SocketConnectionState.reconnecting);
      _emitEvent(
        SocketReconnectingEvent(
          attempt: _reconnectAttempts,
          maxAttempts: _maxReconnectAttempts,
          delaySeconds: delaySeconds,
        ),
      );
      Log.d(
        'Scheduling WebSocket reconnect attempt '
        '$_reconnectAttempts/$_maxReconnectAttempts in ${delaySeconds}s...',
        name: 'SocketService',
      );
      _reconnectTimer = Timer(Duration(seconds: delaySeconds), () {
        if (!_isManuallyClosed && _lastConnectedUrl != null) {
          _connect(_lastConnectedUrl!, isReconnecting: true);
        }
      });
    } else {
      _updateState(SocketConnectionState.disconnected);
      _emitEvent(
        const SocketErrorEvent(
          message: 'Không thể kết nối lại với máy chủ. Vui lòng thử lại sau.',
        ),
      );
    }
  }

  void _startHeartbeat() {
    _stopHeartbeat();
    // Tài liệu BE khuyến nghị ping mỗi 5–10 giây.
    _heartbeatTimer = Timer.periodic(const Duration(seconds: 8), (_) {
      if (_connectionState == SocketConnectionState.connected) {
        sendRaw({'type': 'ping'});
      }
    });
  }

  void _stopHeartbeat() {
    _heartbeatTimer?.cancel();
    _heartbeatTimer = null;
  }

  void _updateState(SocketConnectionState state) {
    _connectionState = state;
    if (!_stateController.isClosed) {
      _stateController.add(state);
    }
    _emitEvent(SocketConnectionChangedEvent(state));
  }

  void _emitEvent(SocketEvent event) {
    if (!_eventController.isClosed) {
      _eventController.add(event);
    }
  }

  @override
  void sendReady({int matchRound = 1}) {
    sendRaw({
      'type': 'ready',
      'matchRound': matchRound,
    });
  }

  @override
  void sendMatchAnswer({
    required int matchRound,
    required int roundIndex,
    required String optionId,
  }) {
    sendRaw({
      'type': 'answer',
      'matchRound': matchRound,
      'roundIndex': roundIndex,
      'optionId': optionId,
    });
  }

  /// Gửi cancel để hủy matchmaking (chỉ dùng trong Matchmaker WS)
  @override
  void sendCancel() {
    sendRaw({'type': 'cancel'});
  }

  @override
  void sendRematch() {
    sendRaw({
      'type': 'rematch',
      'deck': <Map<String, dynamic>>[],
      'topicId': 'auto',
    });
  }

  @override
  void sendLeave() {
    sendRaw({'type': 'leave'});
  }

  @override
  void sendRaw(Map<String, dynamic> data) {
    if (!isConnected) {
      Log.d(
        'Cannot send message: WebSocket is not connected or closing',
        name: 'SocketService',
      );
      return;
    }
    try {
      final payload = jsonEncode(data);
      Log.d('WebSocket Sending: $payload', name: 'SocketService');
      _channel?.sink.add(payload);
    } on Object catch (e, stackTrace) {
      Log.e(
        'Error sending WebSocket message: $e',
        name: 'SocketService',
        errorObject: e,
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> disconnect() async {
    _isManuallyClosed = true;
    _isNormalServerClose = false;
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
    _reconnectAttempts = 0;
    _lastConnectedUrl = null;

    _stopHeartbeat();
    _sessionId++;
    final channelToClose = _channel;
    final subToCancel = _channelSubscription;
    _channel = null;
    _channelSubscription = null;

    try {
      await subToCancel?.cancel();
    } on Object catch (e) {
      Log.d(
        'Warning cancelling WebSocket subscription: $e',
        name: 'SocketService',
      );
    }

    try {
      await channelToClose?.sink.close();
    } on Object catch (e) {
      Log.d(
        'Warning closing WebSocket sink: $e',
        name: 'SocketService',
      );
    } finally {
      if (_connectionState != SocketConnectionState.disconnected) {
        _updateState(SocketConnectionState.disconnected);
      }
    }
  }

  @override
  Future<void> dispose() async {
    await disconnect();
    await _eventController.close();
    await _stateController.close();
  }
}
