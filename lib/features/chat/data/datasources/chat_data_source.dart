import 'dart:async';

import 'package:bufopia/features/chat/data/models/chat_data.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/word_chain_socket_service.dart';
import 'package:injectable/injectable.dart';

abstract class ChatDataSource {
  Stream<ChatData> get messageStream;
  Stream<List<ChatData>> get historyStream;
  void sendChat(String text);
  void dispose();
}

@LazySingleton(as: ChatDataSource)
class ChatDataSourceImpl implements ChatDataSource {
  ChatDataSourceImpl(this._socketService) {
    _subscription = _socketService.eventStream.listen(_handleSocketEvent);
  }

  final WordChainSocketService _socketService;
  StreamSubscription<SocketEvent>? _subscription;

  final _messageController = StreamController<ChatData>.broadcast();
  final _historyController = StreamController<List<ChatData>>.broadcast();

  @override
  Stream<ChatData> get messageStream => _messageController.stream;

  @override
  Stream<List<ChatData>> get historyStream => _historyController.stream;

  void _handleSocketEvent(SocketEvent event) {
    if (event is ChainChatMessageEvent) {
      _messageController.add(
        ChatData(
          actor: event.actor,
          text: event.text,
          id: event.id?.toString() ?? '',
          name: event.name,
          avatar: event.avatar,
          time: event.time,
        ),
      );
    } else if (event is ChainChatHistoryEvent) {
      final list = event.messages.map((m) {
        return ChatData(
          actor: m.actor,
          text: m.text,
          id: m.id?.toString() ?? '',
          name: m.name,
          avatar: m.avatar,
          time: m.time,
        );
      }).toList();
      _historyController.add(list);
    }
  }

  @override
  void sendChat(String text) {
    _socketService.sendChat(text);
  }

  @override
  @disposeMethod
  void dispose() {
    _subscription?.cancel();
    _messageController.close();
    _historyController.close();
  }
}
