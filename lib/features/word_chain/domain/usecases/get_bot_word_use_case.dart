import 'package:bufopia/features/word_chain/domain/entities/word.dart';
import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_bot_word_use_case.freezed.dart';

@freezed
abstract class GetBotWordInput extends BaseInput with _$GetBotWordInput {
  const factory GetBotWordInput({
    required String letter,
    List<String>? exclude,
    @Default('en') String lang,
  }) = _GetBotWordInput;

  const GetBotWordInput._();
}

@freezed
abstract class GetBotWordOutput extends BaseOutput with _$GetBotWordOutput {
  const factory GetBotWordOutput(Word word) = _GetBotWordOutput;

  const GetBotWordOutput._();
}

@lazySingleton
class GetBotWordUseCase
    extends BaseFutureUseCase<GetBotWordInput, GetBotWordOutput> {
  const GetBotWordUseCase(this._repository);

  final WordChainRepository _repository;

  @override
  Future<GetBotWordOutput> buildUseCase(GetBotWordInput input) async {
    final word = await _repository.getBotSuggestion(
      letter: input.letter,
      exclude: input.exclude,
      lang: input.lang,
    );
    return GetBotWordOutput(word);
  }
}
