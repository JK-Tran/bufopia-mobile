import 'package:bufopia/features/practice/domain/entities/word_memory.dart';

class SrsEngine {
  const SrsEngine._();

  static const double slowResponseThresholdSeconds = 4;
  static const int oneDayMs = 24 * 60 * 60 * 1000;

  /// Cập nhật memory của từ vựng theo thuật toán SRS
  /// (Spaced Repetition System)
  /// - Nếu trả lời sai (correct = false) -> status = 'Weak',
  ///   reason = 'Trả lời sai', fast = 0
  /// - Nếu trả lời đúng nhưng thời gian >= 4.0s -> status = 'Weak',
  ///   reason = 'Trả lời chậm', fast = 0
  /// - Nếu trả lời đúng < 4.0s:
  ///   + fast tăng lên 1
  ///   + fast >= 5: status = 'Mastered' (giãn cách 7 ngày)
  ///   + fast >= 3: status = 'Familiar' (giãn cách 3 ngày)
  ///   + còn lại: status = 'Learning' (giãn cách 1 ngày)
  static WordMemory updateMemory({
    required String wordId,
    required bool correct,
    required double seconds,
    WordMemory? previous,
    int? nowMs,
  }) {
    final now = nowMs ?? DateTime.now().millisecondsSinceEpoch;
    final seen = (previous?.seen ?? 0) + 1;

    if (!correct) {
      return WordMemory(
        wordId: wordId,
        seen: seen,
        status: 'Weak',
        reason: 'Trả lời sai',
        seconds: seconds,
        last: now,
        due: now,
      );
    }

    if (seconds >= slowResponseThresholdSeconds) {
      return WordMemory(
        wordId: wordId,
        seen: seen,
        status: 'Weak',
        reason: 'Trả lời chậm',
        seconds: seconds,
        last: now,
        due: now,
      );
    }

    final fast = (previous?.fast ?? 0) + 1;
    final String status;
    final int intervalMs;

    if (fast >= 5) {
      status = 'Mastered';
      intervalMs = 7 * oneDayMs;
    } else if (fast >= 3) {
      status = 'Familiar';
      intervalMs = 3 * oneDayMs;
    } else {
      status = 'Learning';
      intervalMs = 1 * oneDayMs;
    }

    return WordMemory(
      wordId: wordId,
      seen: seen,
      fast: fast,
      status: status,
      reason: 'Đúng nhanh',
      seconds: seconds,
      last: now,
      due: now + intervalMs,
    );
  }
}
