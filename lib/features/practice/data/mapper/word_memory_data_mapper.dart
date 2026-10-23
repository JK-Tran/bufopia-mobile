import 'package:bufopia/features/practice/data/models/word_memory_data.dart';
import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class WordMemoryDataMapper extends BaseDataMapper<WordMemoryData, WordMemory> {
  const WordMemoryDataMapper();

  @override
  WordMemory mapToEntity(WordMemoryData? data) {
    return WordMemory(
      wordId: data?.wordId ?? '',
      seen: data?.seen ?? 0,
      fast: data?.fast ?? 0,
      status: data?.status ?? 'Learning',
      reason: data?.reason ?? '',
      seconds: data?.seconds ?? 0.0,
      last: data?.last,
      due: data?.due,
    );
  }

  WordMemoryData mapToData(WordMemory entity) {
    return WordMemoryData(
      wordId: entity.wordId,
      seen: entity.seen,
      fast: entity.fast,
      status: entity.status,
      reason: entity.reason,
      seconds: entity.seconds,
      last: entity.last,
      due: entity.due,
    );
  }

  List<WordMemory> mapToEntityList(List<WordMemoryData>? list) {
    if (list == null) return const [];
    return list.map(mapToEntity).toList();
  }

  Map<String, WordMemory> mapToEntityMap(List<WordMemoryData>? list) {
    if (list == null) return const {};
    final map = <String, WordMemory>{};
    for (final item in list) {
      if (item.wordId != null && item.wordId!.isNotEmpty) {
        map[item.wordId!] = mapToEntity(item);
      }
    }
    return map;
  }
}
