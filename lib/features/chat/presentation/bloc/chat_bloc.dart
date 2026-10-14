import 'dart:async';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/chat/domain/entities/chat.dart';
import 'package:bufopia/features/chat/domain/usecases/get_chat_history_use_case.dart';
import 'package:bufopia/features/chat/domain/usecases/get_chat_stream_use_case.dart';
import 'package:bufopia/features/chat/domain/usecases/submit_chat_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_bloc.freezed.dart';
part 'chat_event.dart';
part 'chat_state.dart';

@injectable
class ChatBloc extends BaseBloc<ChatEvent, ChatState> {
  ChatBloc(
    this._submitChatUseCase,
    this._getChatStreamUseCase,
    this._getChatHistoryUseCase,
  ) : super(const ChatState()) {
    on<_SendChat>(_onSendChat);
    on<_ChatReceived>(_onChatReceived);
    on<_ChatHistoryLoaded>(_onChatHistoryLoaded);
    on<_OpenChat>(_onOpenChat);
    on<_CloseChat>(_onCloseChat);
    on<_ClearChat>(_onClearChat);
    on<_PlayerIndexUpdated>(_onPlayerIndexUpdated);

    _initStreamListeners();
  }

  final SubmitChatUseCase _submitChatUseCase;
  final GetChatStreamUseCase _getChatStreamUseCase;
  final GetChatHistoryUseCase _getChatHistoryUseCase;

  StreamSubscription<Chat>? _chatStreamSubscription;
  StreamSubscription<List<Chat>>? _historyStreamSubscription;
  Timer? _botReplyTimer;

  int _currentPlayerIndex = 0;

  void _initStreamListeners() {
    _chatStreamSubscription = _getChatStreamUseCase
        .execute(const EmptyInput())
        .listen((msg) {
          add(
            ChatEvent.chatReceived(
              message: msg,
              myPlayerIndex: _currentPlayerIndex,
            ),
          );
        });

    _historyStreamSubscription = _getChatHistoryUseCase
        .execute(const EmptyInput())
        .listen((messages) {
          add(
            ChatEvent.chatHistoryLoaded(
              messages: messages,
              myPlayerIndex: _currentPlayerIndex,
            ),
          );
        });
  }

  FutureOr<void> _onSendChat(
    _SendChat event,
    Emitter<ChatState> emit,
  ) {
    _currentPlayerIndex = event.myPlayerIndex;
    final text = event.text.trim();
    if (text.isEmpty) return null;

    final trimmedText = text.length > 300 ? text.substring(0, 300) : text;

    if (event.isBotMode) {
      final myMsg = Chat(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        actor: event.myPlayerIndex,
        text: trimmedText,
        isMine: true,
        time: DateTime.now().millisecondsSinceEpoch,
      );
      add(
        ChatEvent.chatReceived(
          message: myMsg,
          myPlayerIndex: event.myPlayerIndex,
        ),
      );

      _botReplyTimer?.cancel();
      _botReplyTimer = Timer(const Duration(milliseconds: 1000), () {
        final botMsg = Chat(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          actor: 1 - event.myPlayerIndex,
          name: event.rivalName ?? 'Bot',
          avatar: event.rivalAvatar,
          text: 'Cố lên nhé! Mình cùng luyện nối từ nào.',
          time: DateTime.now().millisecondsSinceEpoch,
        );
        add(
          ChatEvent.chatReceived(
            message: botMsg,
            myPlayerIndex: event.myPlayerIndex,
          ),
        );
      });
      return null;
    } else {
      return runBlocCatching(
        handleLoading: false,
        action: () async {
          await _submitChatUseCase.execute(
            SubmitChatInput(message: trimmedText),
          );
        },
      );
    }
  }

  void _onChatReceived(
    _ChatReceived event,
    Emitter<ChatState> emit,
  ) {
    if (event.myPlayerIndex != 0) {
      _currentPlayerIndex = event.myPlayerIndex;
    }
    final isMine = event.message.actor == _currentPlayerIndex;
    final updatedMsg = event.message.copyWith(isMine: isMine);

    final currentList = List<Chat>.from(state.messages)..add(updatedMsg);
    final trimmed = currentList.length > 100
        ? currentList.sublist(currentList.length - 100)
        : currentList;

    final newUnread = (!isMine && !state.isOpen)
        ? state.unreadCount + 1
        : state.unreadCount;

    safeEmit(
      state.copyWith(
        messages: trimmed,
        unreadCount: newUnread,
      ),
    );
  }

  void _onPlayerIndexUpdated(
    _PlayerIndexUpdated event,
    Emitter<ChatState> emit,
  ) {
    _currentPlayerIndex = event.myPlayerIndex;
    final remapped = state.messages.map((m) {
      return m.copyWith(isMine: m.actor == event.myPlayerIndex);
    }).toList();
    safeEmit(state.copyWith(messages: remapped));
  }

  void _onChatHistoryLoaded(
    _ChatHistoryLoaded event,
    Emitter<ChatState> emit,
  ) {
    if (event.myPlayerIndex != 0) {
      _currentPlayerIndex = event.myPlayerIndex;
    }
    final mapped = event.messages.map((m) {
      return m.copyWith(isMine: m.actor == _currentPlayerIndex);
    }).toList();

    final trimmed = mapped.length > 100
        ? mapped.sublist(mapped.length - 100)
        : mapped;

    safeEmit(state.copyWith(messages: trimmed));
  }

  void _onOpenChat(
    _OpenChat event,
    Emitter<ChatState> emit,
  ) {
    // Cập nhật playerIndex ngay khi mở chat
    _currentPlayerIndex = event.myPlayerIndex;

    // Re-map lại toàn bộ tin nhắn đã có trong state
    // (fix trường hợp tin nhắn đến trước khi biết mình là player mấy)
    final remapped = state.messages.map((m) {
      return m.copyWith(isMine: m.actor == event.myPlayerIndex);
    }).toList();

    safeEmit(
      state.copyWith(
        isOpen: true,
        unreadCount: 0,
        messages: remapped,
      ),
    );
  }

  void _onCloseChat(
    _CloseChat event,
    Emitter<ChatState> emit,
  ) {
    safeEmit(state.copyWith(isOpen: false));
  }

  void _onClearChat(
    _ClearChat event,
    Emitter<ChatState> emit,
  ) {
    _botReplyTimer?.cancel();
    safeEmit(const ChatState());
  }

  @override
  Future<void> close() async {
    _botReplyTimer?.cancel();
    await _chatStreamSubscription?.cancel();
    await _historyStreamSubscription?.cancel();
    return super.close();
  }
}
