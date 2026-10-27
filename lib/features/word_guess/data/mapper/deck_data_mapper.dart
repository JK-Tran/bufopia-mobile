import 'package:bufopia/features/vocabulary/data/mapper/word_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/models/deck_data.dart';
import 'package:bufopia/features/word_guess/domain/entities/deck.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeckDataMapper extends BaseDataMapper<DeckData, Deck> {
  const DeckDataMapper(this._wordDataMapper);

  final WordDataMapper _wordDataMapper;

  @override
  Deck mapToEntity(DeckData? data) {
    return Deck(
      success: data?.success ?? true,
      practiceSessionId: data?.practiceSessionId ?? '',
      topic: data?.topic ?? '',
      count: data?.count ?? (data?.deck?.length ?? 0),
      words: data?.deck != null
          ? _wordDataMapper.mapToListEntity(data?.deck)
          : const [],
    );
  }
}
