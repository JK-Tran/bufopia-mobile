import 'package:bufopia/features/word_guess/domain/entities/history_item.dart';
import 'package:bufopia/features/word_guess/domain/entities/word_info.dart';

/// Domain Entity đại diện cho kết quả trận đấu Đoán từ
class WordGuessResult {
  const WordGuessResult({
    required this.wordsPlayed,
    required this.history,
    required this.skippedWords,
    required this.foundCount,
    required this.earnedXp,
  });

  final List<WordInfo> wordsPlayed;
  final List<HistoryItem> history;
  final Set<String> skippedWords;
  final int foundCount;
  final int earnedXp;
}
