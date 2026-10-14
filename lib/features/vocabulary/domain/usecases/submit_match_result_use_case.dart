import 'package:bufopia/features/vocabulary/domain/entities/match_record.dart';
import 'package:bufopia/features/vocabulary/domain/repositories/vocabulary_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_match_result_use_case.freezed.dart';

@freezed
abstract class SubmitMatchResultInput extends BaseInput
    with _$SubmitMatchResultInput {
  const factory SubmitMatchResultInput(MatchRecord match) =
      _SubmitMatchResultInput;

  const SubmitMatchResultInput._();
}

@freezed
abstract class SubmitMatchResultOutput extends BaseOutput
    with _$SubmitMatchResultOutput {
  const factory SubmitMatchResultOutput({
    @Default(true) bool success,
  }) = _SubmitMatchResultOutput;

  const SubmitMatchResultOutput._();
}

@lazySingleton
class SubmitMatchResultUseCase
    extends BaseFutureUseCase<SubmitMatchResultInput, SubmitMatchResultOutput> {
  const SubmitMatchResultUseCase(this._repository);

  final VocabularyRepository _repository;

  @override
  Future<SubmitMatchResultOutput> buildUseCase(
    SubmitMatchResultInput input,
  ) async {
    final success = await _repository.saveMatch(input.match);
    return SubmitMatchResultOutput(success: success);
  }
}
