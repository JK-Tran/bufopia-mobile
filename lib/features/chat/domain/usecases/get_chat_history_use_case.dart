import 'package:bufopia/features/chat/domain/entities/chat.dart';
import 'package:bufopia/features/chat/domain/repositories/chat_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/empty_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/stream/base_stream_use_case.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetChatHistoryUseCase extends BaseStreamUseCase<EmptyInput, List<Chat>> {
  const GetChatHistoryUseCase(this._repository);

  final ChatRepository _repository;

  @override
  Stream<List<Chat>> buildUseCase(EmptyInput input) {
    return _repository.chatHistoryStream;
  }
}
