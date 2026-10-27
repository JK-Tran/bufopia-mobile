import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/features/practice/domain/services/srs_engine.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SrsEngine Tests', () {
    const wordId = 'beverage';
    final nowMs = DateTime(2026, 10, 21, 8).millisecondsSinceEpoch;

    test('should mark as Weak when answer is incorrect', () {
      final memory = SrsEngine.updateMemory(
        wordId: wordId,
        correct: false,
        seconds: 2.5,
        nowMs: nowMs,
      );

      expect(memory.wordId, equals(wordId));
      expect(memory.seen, equals(1));
      expect(memory.fast, equals(0));
      expect(memory.status, equals('Weak'));
      expect(memory.reason, equals('Trả lời sai'));
      expect(memory.due, equals(nowMs));
    });

    test('should mark as Weak when answer is correct but time >= 4.0s', () {
      final memory = SrsEngine.updateMemory(
        wordId: wordId,
        correct: true,
        seconds: 4.5,
        nowMs: nowMs,
      );

      expect(memory.seen, equals(1));
      expect(memory.fast, equals(0));
      expect(memory.status, equals('Weak'));
      expect(memory.reason, equals('Trả lời chậm'));
      expect(memory.due, equals(nowMs));
    });

    test('should mark as Learning when fast is 1 and correct < 4.0s', () {
      final memory = SrsEngine.updateMemory(
        wordId: wordId,
        correct: true,
        seconds: 2.1,
        nowMs: nowMs,
      );

      expect(memory.seen, equals(1));
      expect(memory.fast, equals(1));
      expect(memory.status, equals('Learning'));
      expect(memory.reason, equals('Đúng nhanh'));
      expect(memory.due, equals(nowMs + 24 * 60 * 60 * 1000));
    });

    test('should mark as Familiar when fast reaches 3', () {
      const prev = WordMemory(
        wordId: wordId,
        seen: 3,
        fast: 2,
      );

      final memory = SrsEngine.updateMemory(
        wordId: wordId,
        previous: prev,
        correct: true,
        seconds: 1.8,
        nowMs: nowMs,
      );

      expect(memory.seen, equals(4));
      expect(memory.fast, equals(3));
      expect(memory.status, equals('Familiar'));
      expect(memory.due, equals(nowMs + 3 * 24 * 60 * 60 * 1000));
    });

    test('should mark as Mastered when fast reaches 5', () {
      const prev = WordMemory(
        wordId: wordId,
        seen: 5,
        fast: 4,
        status: 'Familiar',
      );

      final memory = SrsEngine.updateMemory(
        wordId: wordId,
        previous: prev,
        correct: true,
        seconds: 1.2,
        nowMs: nowMs,
      );

      expect(memory.seen, equals(6));
      expect(memory.fast, equals(5));
      expect(memory.status, equals('Mastered'));
      expect(memory.due, equals(nowMs + 7 * 24 * 60 * 60 * 1000));
    });
  });
}
