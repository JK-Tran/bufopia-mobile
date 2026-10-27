import 'package:bufopia/features/practice/domain/entities/dictionary_detail.dart';
import 'package:bufopia/features/practice/domain/repositories/practice_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_dictionary_detail_use_case.freezed.dart';

@freezed
abstract class GetDictionaryDetailInput extends BaseInput
    with _$GetDictionaryDetailInput {
  const factory GetDictionaryDetailInput({
    required String word,
    @Default('chain-v3') String lexicon,
    @Default(1) int details,
    @Default(2) int phonetics,
    @Default(1) int meaning,
  }) = _GetDictionaryDetailInput;

  const GetDictionaryDetailInput._();
}

@freezed
abstract class GetDictionaryDetailOutput extends BaseOutput
    with _$GetDictionaryDetailOutput {
  const factory GetDictionaryDetailOutput({
    @Default(DictionaryDetail()) DictionaryDetail detail,
  }) = _GetDictionaryDetailOutput;

  const GetDictionaryDetailOutput._();
}

@lazySingleton
class GetDictionaryDetailUseCase
    extends
        BaseFutureUseCase<GetDictionaryDetailInput, GetDictionaryDetailOutput> {
  const GetDictionaryDetailUseCase(this._repository);

  final PracticeRepository _repository;

  @override
  Future<GetDictionaryDetailOutput> buildUseCase(
    GetDictionaryDetailInput input,
  ) async {
    final detail = await _repository.getDictionaryDetail(
      word: input.word,
      lexicon: input.lexicon,
      details: input.details,
      phonetics: input.phonetics,
      meaning: input.meaning,
    );
    return GetDictionaryDetailOutput(detail: detail);
  }
}
