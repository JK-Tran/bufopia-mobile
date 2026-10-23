import 'package:bufopia/shared/constants/url_constants.dart';

/// Helper chuyên biệt xây dựng WebSocket URL cho 2 hệ thống:
/// 1. Go Realtime Server (First-Frame Handshake qua raw WS)
/// 2. Cloudflare Worker (Ticket-based URL)
class SocketUrlBuilder {
  const SocketUrlBuilder._();

  // ══════════════════════════════════════════════════════════════════
  // 1. GO REALTIME SERVER ENDPOINTS (First-Frame Auth)
  // ══════════════════════════════════════════════════════════════════

  /// URL tìm trận Quiz Battle qua Go Server
  static String goQuizMatchmakeWsUrl() {
    return '${UrlConstants.goRealtimeWsBaseUrl}/api/v1/realtime/ws';
  }

  /// URL phòng thi đấu Quiz Battle qua Go Server (/realtime/quiz/:roomCode)
  static String goQuizRoomWsUrl(String roomCode) {
    final cleanCode = roomCode.trim();
    return '${UrlConstants.goRealtimeWsBaseUrl}'
        '/api/v1/realtime/quiz/$cleanCode';
  }

  /// URL tìm trận Word Chain qua Go Server
  static String goChainMatchmakeWsUrl() {
    return '${UrlConstants.goRealtimeWsBaseUrl}'
        '/api/v1/realtime/chain-matchmake';
  }

  /// URL phòng thi đấu Word Chain qua Go Server (/realtime/chain/:roomCode)
  static String goChainRoomWsUrl(String roomCode) {
    final cleanCode = roomCode.trim();
    return '${UrlConstants.goRealtimeWsBaseUrl}'
        '/api/v1/realtime/chain/$cleanCode';
  }

  /// URL Social Lobby & Presence qua Go Server (/realtime/ws)
  static String goSocialLobbyWsUrl() {
    return '${UrlConstants.goRealtimeWsBaseUrl}/api/v1/realtime/ws';
  }

  // ══════════════════════════════════════════════════════════════════
  // 2. CLOUDFLARE WORKER ENDPOINTS (Ticket-based Auth)
  // ══════════════════════════════════════════════════════════════════

  /// URL tìm trận Vocabulary Duel / Quick Battle (/ws/matchmake)
  static String matchmakeWsUrl({
    required String uid,
    required String ticket,
    String topic = 'auto',
    String? name,
    String? avatar,
  }) {
    final query = <String, String>{
      'uid': uid,
      'ticket': ticket,
      'topic': topic,
      if (name != null && name.isNotEmpty) 'name': name,
      if (avatar != null && avatar.isNotEmpty) 'avatar': avatar,
    };
    final uri = Uri.parse(
      '${UrlConstants.webSocketBaseUrl}/matchmake',
    ).replace(queryParameters: query);
    return uri.toString();
  }

  /// URL phòng thi đấu Vocabulary Duel (/ws/room/:roomCode)
  static String roomWsUrl({
    required String roomCode,
    required String uid,
    required String ticket,
    String topic = 'auto',
    String? name,
    String? avatar,
  }) {
    final query = <String, String>{
      'uid': uid,
      'ticket': ticket,
      'topic': topic,
      if (name != null && name.isNotEmpty) 'name': name,
      if (avatar != null && avatar.isNotEmpty) 'avatar': avatar,
    };
    final uri = Uri.parse(
      '${UrlConstants.webSocketBaseUrl}/room/$roomCode',
    ).replace(queryParameters: query);
    return uri.toString();
  }

  /// URL tìm trận Word Chain (/ws/chain-matchmake)
  static String chainMatchmakeWsUrl({
    required String uid,
    required String name,
    required String ticket,
    bool relaxed = false,
    String lang = 'en',
    String? avatar,
  }) {
    final query = <String, String>{
      'topic': relaxed ? 'word-chain-relaxed' : 'word-chain',
      'uid': uid,
      'name': name,
      'ticket': ticket,
      if (relaxed) 'relaxed': '1',
      if (lang != 'en') 'lang': lang,
      if (avatar != null && avatar.isNotEmpty) 'avatar': avatar,
    };
    final uri = Uri.parse(
      '${UrlConstants.webSocketBaseUrl}/chain-matchmake',
    ).replace(queryParameters: query);
    return uri.toString();
  }

  /// URL phòng thi đấu Word Chain (/ws/chain/:roomCode)
  static String chainRoomWsUrl({
    required String roomCode,
    required String uid,
    required String name,
    required String ticket,
    bool relaxed = false,
    String lang = 'en',
    String? avatar,
  }) {
    final query = <String, String>{
      'uid': uid,
      'name': name,
      'ticket': ticket,
      if (relaxed) 'relaxed': '1',
      if (lang != 'en') 'lang': lang,
      if (avatar != null && avatar.isNotEmpty) 'avatar': avatar,
    };
    final uri = Uri.parse(
      '${UrlConstants.webSocketBaseUrl}/chain/$roomCode',
    ).replace(queryParameters: query);
    return uri.toString();
  }

  /// URL tìm trận Word Guess (/ws/guess-matchmake)
  static String guessMatchmakeWsUrl({
    required String uid,
    required String name,
    required String ticket,
    String topic = 'daily',
    String? avatar,
  }) {
    final query = <String, String>{
      'topic': topic,
      'uid': uid,
      'name': name,
      'ticket': ticket,
      if (avatar != null && avatar.isNotEmpty) 'avatar': avatar,
    };
    final uri = Uri.parse(
      '${UrlConstants.webSocketBaseUrl}/guess-matchmake',
    ).replace(queryParameters: query);
    return uri.toString();
  }

  /// URL phòng thi đấu Word Guess (/ws/guess/:roomCode)
  static String guessRoomWsUrl({
    required String roomCode,
    required String uid,
    required String name,
    required String ticket,
    String? avatar,
  }) {
    final query = <String, String>{
      'uid': uid,
      'name': name,
      'ticket': ticket,
      if (avatar != null && avatar.isNotEmpty) 'avatar': avatar,
    };
    final uri = Uri.parse(
      '${UrlConstants.webSocketBaseUrl}/guess/$roomCode',
    ).replace(queryParameters: query);
    return uri.toString();
  }

  /// URL Radar các trận đang chờ (/ws/matches)
  static String waitingMatchesWsUrl({
    required String uid,
    required String ticket,
  }) {
    final query = <String, String>{
      'uid': uid,
      'ticket': ticket,
    };
    final uri = Uri.parse(
      '${UrlConstants.webSocketBaseUrl}/matches',
    ).replace(queryParameters: query);
    return uri.toString();
  }
}
