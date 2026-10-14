import 'package:bufopia/features/vocabulary/data/models/feedback_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/feedback.dart';
import 'package:bufopia/features/vocabulary/domain/repositories/vocabulary_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'send_feedback_use_case.freezed.dart';

@freezed
abstract class SendFeedbackInput extends BaseInput with _$SendFeedbackInput {
  const factory SendFeedbackInput({
    required String uid,
    required String userName,
    required String category,
    required String message,
    String? contact,
    String? page,
  }) = _SendFeedbackInput;

  const SendFeedbackInput._();
}

@freezed
abstract class SendFeedbackOutput extends BaseOutput with _$SendFeedbackOutput {
  const factory SendFeedbackOutput(Feedback feedback) = _SendFeedbackOutput;

  const SendFeedbackOutput._();
}

@lazySingleton
class SendFeedbackUseCase
    extends BaseFutureUseCase<SendFeedbackInput, SendFeedbackOutput> {
  const SendFeedbackUseCase(this._repository);

  final VocabularyRepository _repository;

  @override
  Future<SendFeedbackOutput> buildUseCase(SendFeedbackInput input) async {
    final feedback = await _repository.sendFeedback(
      FeedbackData(
        uid: input.uid,
        userName: input.userName,
        category: input.category,
        message: input.message,
        contact: input.contact,
        page: input.page,
      ),
    );
    return SendFeedbackOutput(feedback);
  }
}
