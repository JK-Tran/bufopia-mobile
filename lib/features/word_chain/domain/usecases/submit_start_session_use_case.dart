import 'package:bufopia/features/word_chain/domain/entities/session.dart';
import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_start_session_use_case.freezed.dart';

@freezed
abstract class SubmitStartSessionInput extends BaseInput
    with _$SubmitStartSessionInput {
  const factory SubmitStartSessionInput({
    required String uid,
    @Default('en') String language,
  }) = _SubmitStartSessionInput;

  const SubmitStartSessionInput._();
}

@freezed
abstract class SubmitStartSessionOutput extends BaseOutput
    with _$SubmitStartSessionOutput {
  const factory SubmitStartSessionOutput(Session session) =
      _SubmitStartSessionOutput;

  const SubmitStartSessionOutput._();
}

@lazySingleton
class SubmitStartSessionUseCase
    extends
        BaseFutureUseCase<SubmitStartSessionInput, SubmitStartSessionOutput> {
  const SubmitStartSessionUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<SubmitStartSessionOutput> buildUseCase(
    SubmitStartSessionInput input,
  ) async {
    final session = await _repository.startPractice(
      uid: input.uid,
      language: input.language,
    );
    return SubmitStartSessionOutput(session);
  }
}
