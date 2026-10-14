import 'package:bufopia/features/chat/domain/entities/chat.dart';

abstract class ChatRepository {
  Stream<Chat> get chatStream;
  Stream<List<Chat>> get chatHistoryStream;
  void sendChat(String text);
}
