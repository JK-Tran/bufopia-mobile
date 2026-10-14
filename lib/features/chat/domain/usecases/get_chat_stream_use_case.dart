import 'package:bufopia/features/chat/domain/entities/chat.dart';
import 'package:bufopia/features/chat/domain/repositories/chat_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/stream/base_stream_use_case.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetChatStreamUseCase extends BaseStreamUseCase<EmptyInput, Chat> {
  const GetChatStreamUseCase(this._repository);

  final ChatRepository _repository;

  @override
  Stream<Chat> buildUseCase(EmptyInput input) {
    return _repository.chatStream;
  }
}
