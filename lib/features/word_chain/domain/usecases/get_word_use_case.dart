import 'package:bufopia/features/word_chain/domain/entities/word.dart';
import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_word_use_case.freezed.dart';

@freezed
abstract class GetWordInput extends BaseInput with _$GetWordInput {
  const factory GetWordInput({
    required String word,
    @Default('chain-v3') String lexicon,
    @Default(1) int details,
    @Default('en') String lang,
  }) = _GetWordInput;

  const GetWordInput._();
}

@freezed
abstract class GetWordOutput extends BaseOutput with _$GetWordOutput {
  const factory GetWordOutput(Word word) = _GetWordOutput;

  const GetWordOutput._();
}

@lazySingleton
class GetWordUseCase extends BaseFutureUseCase<GetWordInput, GetWordOutput> {
  const GetWordUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<GetWordOutput> buildUseCase(GetWordInput input) async {
    final word = await _repository.lookupWord(
      input.word,
      lexicon: input.lexicon,
      details: input.details,
      lang: input.lang,
    );
    return GetWordOutput(word);
  }
}
