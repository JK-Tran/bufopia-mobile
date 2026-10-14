part of 'chat_bloc.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.sendChat({
    required String text,
    @Default(false) bool isBotMode,
    @Default(0) int myPlayerIndex,
    String? rivalName,
    String? rivalAvatar,
  }) = _SendChat;

  const factory ChatEvent.chatReceived({
    required Chat message,
    @Default(0) int myPlayerIndex,
  }) = _ChatReceived;

  const factory ChatEvent.chatHistoryLoaded({
    required List<Chat> messages,
    @Default(0) int myPlayerIndex,
  }) = _ChatHistoryLoaded;

  const factory ChatEvent.openChat({
    @Default(0) int myPlayerIndex,
  }) = _OpenChat;

  const factory ChatEvent.closeChat() = _CloseChat;

  const factory ChatEvent.clearChat() = _ClearChat;

  const factory ChatEvent.playerIndexUpdated({
    required int myPlayerIndex,
  }) = _PlayerIndexUpdated;
}
