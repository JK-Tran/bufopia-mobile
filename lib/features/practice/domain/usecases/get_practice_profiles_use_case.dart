import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/features/practice/domain/repositories/practice_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_practice_profiles_use_case.freezed.dart';

@freezed
abstract class GetPracticeProfilesInput extends BaseInput
    with _$GetPracticeProfilesInput {
  const factory GetPracticeProfilesInput({
    required String uid,
    String? token,
  }) = _GetPracticeProfilesInput;

  const GetPracticeProfilesInput._();
}

@freezed
abstract class GetPracticeProfilesOutput extends BaseOutput
    with _$GetPracticeProfilesOutput {
  const factory GetPracticeProfilesOutput({
    @Default({}) Map<String, WordMemory> profiles,
  }) = _GetPracticeProfilesOutput;

  const GetPracticeProfilesOutput._();
}

@lazySingleton
class GetPracticeProfilesUseCase
    extends
        BaseFutureUseCase<GetPracticeProfilesInput, GetPracticeProfilesOutput> {
  const GetPracticeProfilesUseCase(this._repository);

  final PracticeRepository _repository;

  @override
  Future<GetPracticeProfilesOutput> buildUseCase(
    GetPracticeProfilesInput input,
  ) async {
    final profiles = await _repository.getProfiles(
      uid: input.uid,
      token: input.token,
    );
    return GetPracticeProfilesOutput(profiles: profiles);
  }
}
