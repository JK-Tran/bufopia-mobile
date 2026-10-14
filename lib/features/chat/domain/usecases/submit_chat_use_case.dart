import 'package:bufopia/features/chat/domain/repositories/chat_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_chat_use_case.freezed.dart';

@freezed
abstract class SubmitChatInput extends BaseInput with _$SubmitChatInput {
  const factory SubmitChatInput({
    required String message,
  }) = _SubmitChatInput;

  const SubmitChatInput._();
}

@freezed
abstract class SubmitChatOutput extends BaseOutput with _$SubmitChatOutput {
  const factory SubmitChatOutput() = _SubmitChatOutput;

  const SubmitChatOutput._();
}

@lazySingleton
class SubmitChatUseCase
    extends BaseFutureUseCase<SubmitChatInput, SubmitChatOutput> {
  const SubmitChatUseCase(this._repository);

  final ChatRepository _repository;

  @override
  Future<SubmitChatOutput> buildUseCase(SubmitChatInput input) async {
    _repository.sendChat(input.message);
    return const SubmitChatOutput();
  }
}
