import 'package:bufopia/features/vocabulary/domain/entities/battle_deck_entity.dart';
import 'package:bufopia/features/vocabulary/domain/repositories/vocabulary_repository.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:bufopia/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_battle_deck_use_case.freezed.dart';

@freezed
abstract class GetBattleDeckInput extends BaseInput with _$GetBattleDeckInput {
  const factory GetBattleDeckInput({
    @Default('auto') String topic,
    String? uid,
    String? opponentUid,
    @Default(15) int count,
    String? recent,
  }) = _GetBattleDeckInput;

  const GetBattleDeckInput._();
}

@freezed
abstract class GetBattleDeckOutput extends BaseOutput
    with _$GetBattleDeckOutput {
  const factory GetBattleDeckOutput(BattleDeckEntity deck) =
      _GetBattleDeckOutput;

  const GetBattleDeckOutput._();
}

@lazySingleton
class GetBattleDeckUseCase
    extends BaseFutureUseCase<GetBattleDeckInput, GetBattleDeckOutput> {
  const GetBattleDeckUseCase(this._repository);

  final VocabularyRepository _repository;

  @override
  Future<GetBattleDeckOutput> buildUseCase(GetBattleDeckInput input) async {
    final deck = await _repository.getDeck(
      topic: input.topic,
      uid: input.uid,
      opponentUid: input.opponentUid,
      count: input.count,
      recent: input.recent,
    );
    return GetBattleDeckOutput(deck);
  }
}
