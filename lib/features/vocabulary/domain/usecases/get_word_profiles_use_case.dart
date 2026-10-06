import 'package:bufopia/features/vocabulary/domain/entities/word_profile_entity.dart';
import 'package:bufopia/features/vocabulary/domain/repositories/vocabulary_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_word_profiles_use_case.freezed.dart';

@freezed
abstract class GetWordProfilesInput extends BaseInput
    with _$GetWordProfilesInput {
  const factory GetWordProfilesInput({
    required String uid,
  }) = _GetWordProfilesInput;

  const GetWordProfilesInput._();
}

@freezed
abstract class GetWordProfilesOutput extends BaseOutput
    with _$GetWordProfilesOutput {
  const factory GetWordProfilesOutput({
    @Default([]) List<WordProfileEntity> profiles,
  }) = _GetWordProfilesOutput;

  const GetWordProfilesOutput._();
}

@lazySingleton
class GetWordProfilesUseCase
    extends BaseFutureUseCase<GetWordProfilesInput, GetWordProfilesOutput> {
  const GetWordProfilesUseCase(this._repository);

  final VocabularyRepository _repository;

  @override
  Future<GetWordProfilesOutput> buildUseCase(
    GetWordProfilesInput input,
  ) async {
    final profiles = await _repository.getProfiles(input.uid);
    return GetWordProfilesOutput(profiles: profiles);
  }
}
