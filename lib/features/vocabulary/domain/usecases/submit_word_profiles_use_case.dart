import 'package:bufopia/features/vocabulary/domain/entities/word_profile.dart';
import 'package:bufopia/features/vocabulary/domain/repositories/vocabulary_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'submit_word_profiles_use_case.freezed.dart';

@freezed
abstract class SubmitWordProfilesInput extends BaseInput
    with _$SubmitWordProfilesInput {
  const factory SubmitWordProfilesInput({
    required String uid,
    required List<WordProfile> profiles,
  }) = _SubmitWordProfilesInput;

  const SubmitWordProfilesInput._();
}

@freezed
abstract class SubmitWordProfilesOutput extends BaseOutput
    with _$SubmitWordProfilesOutput {
  const factory SubmitWordProfilesOutput({
    @Default(true) bool success,
  }) = _SubmitWordProfilesOutput;

  const SubmitWordProfilesOutput._();
}

@lazySingleton
class SubmitWordProfilesUseCase
    extends
        BaseFutureUseCase<SubmitWordProfilesInput, SubmitWordProfilesOutput> {
  const SubmitWordProfilesUseCase(this._repository);

  final VocabularyRepository _repository;

  @override
  Future<SubmitWordProfilesOutput> buildUseCase(
    SubmitWordProfilesInput input,
  ) async {
    final success = await _repository.syncProfiles(
      input.uid,
      input.profiles,
    );
    return SubmitWordProfilesOutput(success: success);
  }
}
