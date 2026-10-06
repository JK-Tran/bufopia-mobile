import 'package:bufopia/features/vocabulary/domain/entities/vocabulary_entity.dart';
import 'package:bufopia/features/vocabulary/domain/repositories/vocabulary_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_vocabulary_use_case.freezed.dart';

@freezed
abstract class GetVocabularyInput extends BaseInput with _$GetVocabularyInput {
  const factory GetVocabularyInput() = _GetVocabularyInput;

  const GetVocabularyInput._();
}

@freezed
abstract class GetVocabularyOutput extends BaseOutput
    with _$GetVocabularyOutput {
  const factory GetVocabularyOutput(VocabularyEntity vocabulary) =
      _GetVocabularyOutput;

  const GetVocabularyOutput._();
}

@lazySingleton
class GetVocabularyUseCase
    extends BaseFutureUseCase<GetVocabularyInput, GetVocabularyOutput> {
  const GetVocabularyUseCase(this._repository);

  final VocabularyRepository _repository;

  @override
  Future<GetVocabularyOutput> buildUseCase(GetVocabularyInput input) async {
    final vocabulary = await _repository.getVocabulary();
    return GetVocabularyOutput(vocabulary);
  }
}
