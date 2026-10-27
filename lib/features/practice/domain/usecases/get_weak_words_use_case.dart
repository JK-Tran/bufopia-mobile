import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/features/practice/domain/repositories/practice_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_weak_words_use_case.freezed.dart';

@freezed
abstract class GetWeakWordsInput extends BaseInput with _$GetWeakWordsInput {
  const factory GetWeakWordsInput({
    required String uid,
    String? token,
  }) = _GetWeakWordsInput;

  const GetWeakWordsInput._();
}

@freezed
abstract class GetWeakWordsOutput extends BaseOutput with _$GetWeakWordsOutput {
  const factory GetWeakWordsOutput({
    @Default([]) List<WordMemory> weakWords,
  }) = _GetWeakWordsOutput;

  const GetWeakWordsOutput._();
}

@lazySingleton
class GetWeakWordsUseCase
    extends BaseFutureUseCase<GetWeakWordsInput, GetWeakWordsOutput> {
  const GetWeakWordsUseCase(this._repository);

  final PracticeRepository _repository;

  @override
  Future<GetWeakWordsOutput> buildUseCase(GetWeakWordsInput input) async {
    final weakWords = await _repository.getWeakWords(
      uid: input.uid,
      token: input.token,
    );
    return GetWeakWordsOutput(weakWords: weakWords);
  }
}
