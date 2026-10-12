import 'package:bufopia/shared/constants/url_constants.dart';

/// Helper chuyên biệt xây dựng WebSocket URL và query parameters
/// cho các chế độ game.
class SocketUrlBuilder {
  const SocketUrlBuilder._();

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
    final uri = Uri.parse('${UrlConstants.webSocketBaseUrl}/matchmake').replace(
      queryParameters: query,
    );
    return uri.toString();
  }

  /// URL phòng thi đấu Vocabulary Duel / Quick Battle (/ws/room/:roomCode)
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
    final uri = Uri.parse('${UrlConstants.webSocketBaseUrl}/room/$roomCode')
        .replace(
          queryParameters: query,
        );
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
    final uri = Uri.parse('${UrlConstants.webSocketBaseUrl}/chain-matchmake')
        .replace(
          queryParameters: query,
        );
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
    final uri = Uri.parse('${UrlConstants.webSocketBaseUrl}/chain/$roomCode')
        .replace(
          queryParameters: query,
        );
    return uri.toString();
  }
}
