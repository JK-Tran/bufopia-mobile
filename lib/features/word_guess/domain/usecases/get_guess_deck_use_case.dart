import 'package:bufopia/features/word_guess/domain/entities/deck.dart';
import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_guess_deck_use_case.freezed.dart';

@freezed
abstract class GetGuessDeckInput extends BaseInput with _$GetGuessDeckInput {
  const factory GetGuessDeckInput({
    required String topic,
    String? uid,
    @Default(20) int count,
    String? recent,
    String? difficulty,
  }) = _GetGuessDeckInput;

  const GetGuessDeckInput._();
}

@freezed
abstract class GetGuessDeckOutput extends BaseOutput with _$GetGuessDeckOutput {
  const factory GetGuessDeckOutput(Deck deck) = _GetGuessDeckOutput;

  const GetGuessDeckOutput._();
}

@lazySingleton
class GetGuessDeckUseCase
    extends BaseFutureUseCase<GetGuessDeckInput, GetGuessDeckOutput> {
  const GetGuessDeckUseCase(this._repository);

  final WordGuessRepository _repository;

  @override
  Future<GetGuessDeckOutput> buildUseCase(GetGuessDeckInput input) async {
    final deck = await _repository.getDeck(
      topic: input.topic,
      uid: input.uid,
      count: input.count,
      recent: input.recent,
      difficulty: input.difficulty,
    );
    return GetGuessDeckOutput(deck);
  }
}
