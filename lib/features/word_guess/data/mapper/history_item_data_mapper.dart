import 'package:bufopia/features/word_guess/data/models/history_item_data.dart';
import 'package:bufopia/features/word_guess/domain/entities/history_item.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class HistoryItemDataMapper
    extends BaseDataMapper<HistoryItemData, HistoryItem> {
  const HistoryItemDataMapper();

  @override
  HistoryItem mapToEntity(HistoryItemData? data) {
    return HistoryItem(
      word: data?.word ?? '',
      meaning: data?.meaning ?? '',
      phonetic: data?.phonetic ?? '',
      solvedBy: data?.solvedBy ?? '',
      skipped: data?.skipped ?? false,
      solveTimeMs: data?.solveTimeMs ?? 0,
      guess: data?.guess ?? '',
      isCorrect: data?.isCorrect,
      playerUid: data?.playerUid ?? '',
      playerName: data?.playerName ?? '',
      id: data?.id ?? '',
      timestamp: data?.timestamp ?? 0,
    );
  }
}
