import 'package:bufopia/core/constants/storage_keys.dart';
import 'package:bufopia/features/word_guess/domain/entities/word_guess_difficulty.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Quản lý cấu hình cục bộ của game Word Guess qua SharedPreferences
class WordGuessPreferences {
  const WordGuessPreferences._();

  /// Lưu trình độ được chọn vào SharedPreferences (key: bufo_practice_level)
  static Future<void> saveDifficulty(WordGuessDifficulty difficulty) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeys.wordGuessDifficulty, difficulty.key);
  }

  /// Lấy trình độ từ SharedPreferences (mặc định là medium)
  static Future<WordGuessDifficulty> getDifficulty() async {
    final prefs = await SharedPreferences.getInstance();
    final key = prefs.getString(StorageKeys.wordGuessDifficulty);
    return WordGuessDifficulty.fromKey(key);
  }

  /// Lấy đồng bộ từ SharedPreferences instance có sẵn
  static WordGuessDifficulty getDifficultySync(SharedPreferences prefs) {
    final key = prefs.getString(StorageKeys.wordGuessDifficulty);
    return WordGuessDifficulty.fromKey(key);
  }
}
