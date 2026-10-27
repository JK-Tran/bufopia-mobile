import 'dart:math';

import 'package:injectable/injectable.dart';

enum WordGuessBotDifficulty {
  easy, // Pip Tập Sự
  medium, // Pip Nhanh Trí
  hard, // Pip Thần Tốc
}

class BotGuessDecision {
  const BotGuessDecision({
    required this.delayMs,
    required this.willGuessWrongFirst,
    required this.willGuessWrongSecond,
    required this.firstWrongWord,
    required this.retryDelayMs,
  });

  final int delayMs;
  final bool willGuessWrongFirst;
  final bool willGuessWrongSecond;
  final String firstWrongWord;
  final int retryDelayMs;
}

@lazySingleton
class WordGuessBotEngine {
  WordGuessBotEngine();

  final Random _random = Random();

  String getBotName(WordGuessBotDifficulty difficulty) {
    switch (difficulty) {
      case WordGuessBotDifficulty.easy:
        return 'Pip Tập Sự';
      case WordGuessBotDifficulty.medium:
        return 'Pip Nhanh Trí';
      case WordGuessBotDifficulty.hard:
        return 'Pip Thần Tốc';
    }
  }

  String getBotAvatar(WordGuessBotDifficulty difficulty) {
    return 'assets/images/mascot_pip.png';
  }

  BotGuessDecision planGuess({
    required String targetWord,
    required WordGuessBotDifficulty difficulty,
  }) {
    final word = targetWord.trim().toLowerCase();
    final len = word.length;

    // 1. Base Delay range
    int minDelay;
    int maxDelay;
    double fail1Rate;
    double fail2Rate;

    switch (difficulty) {
      case WordGuessBotDifficulty.easy:
        minDelay = 2200;
        maxDelay = 4200;
        fail1Rate = 0.35;
        fail2Rate = 0.20;
      case WordGuessBotDifficulty.medium:
        minDelay = 1500;
        maxDelay = 3200;
        fail1Rate = 0.22;
        fail2Rate = 0.12;
      case WordGuessBotDifficulty.hard:
        minDelay = 1000;
        maxDelay = 2200;
        fail1Rate = 0.12;
        fail2Rate = 0.05;
    }

    // 2. Base duration
    var duration = minDelay + _random.nextInt(maxDelay - minDelay + 1);

    // 3. Human behavior simulation
    final roll = _random.nextDouble();
    if (roll < 0.20) {
      // 20% Fast reflex (familiar word)
      duration = (duration * 0.65).round();
    } else if (roll < 0.35) {
      // 15% Hesitation
      duration = (duration * 1.30).round();
    } else if (roll < 0.50) {
      // 15% Confusion / Forgot word
      final factor = 1.25 + (_random.nextDouble() * 0.15);
      duration = (duration * factor).round();
    }

    // Reading time based on length: min(400ms, max(0, (len - 4) * 30ms))
    final readingTime = min(400, max(0, (len - 4) * 30));
    duration += readingTime;

    // 4. Mistake probability
    final willFail1 = _random.nextDouble() < fail1Rate;
    final willFail2 = willFail1 && (_random.nextDouble() < fail2Rate);

    // 5. Wrong word generation
    final wrongWord = willFail1 ? _generateTypo(word) : '';

    // 6. Retry delay (0.8s - 1.6s)
    final retryDelay = 800 + _random.nextInt(801);

    return BotGuessDecision(
      delayMs: max(800, duration),
      willGuessWrongFirst: willFail1,
      willGuessWrongSecond: willFail2,
      firstWrongWord: wrongWord,
      retryDelayMs: retryDelay,
    );
  }

  String _generateTypo(String word) {
    if (word.length <= 2) return '${word}s';
    final chars = word.split('');
    final method = _random.nextInt(3);

    switch (method) {
      case 0:
        // Hoán vị 2 ký tự liền kề
        final idx = _random.nextInt(chars.length - 1);
        final tmp = chars[idx];
        chars[idx] = chars[idx + 1];
        chars[idx + 1] = tmp;
        return chars.join();
      case 1:
        // Double một ký tự (ví dụ: guitar -> guitarr)
        final idx = _random.nextInt(chars.length);
        chars.insert(idx, chars[idx]);
        return chars.join();
      case 2:
      default:
        // Bỏ bớt 1 ký tự (ví dụ: dolphin -> dophin)
        final idx = 1 + _random.nextInt(chars.length - 2);
        chars.removeAt(idx);
        return chars.join();
    }
  }
}
