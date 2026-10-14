part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState({
    @Default([]) List<Chat> messages,
    @Default(0) int unreadCount,
    @Default(false) bool isOpen,
    String? errorMessage,
  }) = _ChatState;
}
