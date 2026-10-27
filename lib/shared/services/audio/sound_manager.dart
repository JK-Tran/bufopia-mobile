import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:get_it/get_it.dart';

/// Quản lý phát âm thanh tập trung cho toàn ứng dụng (SoundManager)
/// Đáp ứng tài liệu đặc tả âm thanh cho Mobile (Flutter/Dart).
class SoundManager {
  const SoundManager._();

  static AppAudioService? get _audio {
    if (!GetIt.instance.isRegistered<AppAudioService>()) return null;
    return GetIt.instance.get<AppAudioService>();
  }

  /// Đánh dấu đã vào màn hình Home -> Bắt đầu BGM nếu âm nhạc đang bật
  static void onEnterHome() => _audio?.onEnterHome();

  /// Đánh dấu đã rời màn hình Home -> Lập tức tắt sạch BGM
  static void onLeaveHome() => _audio?.onLeaveHome();

  /// click.wav: Tương tác bấm nút, chọn thẻ, mở/đóng popup...
  static Future<void> playClick() async => _audio?.playClickSfx();

  /// correct.wav: Chọn đúng đáp án trắc nghiệm, trả lời chính xác
  static Future<void> playCorrect() async => _audio?.playCorrectSfx();

  /// wrong.wav: Chọn sai đáp án, hết giờ câu hỏi, nhập sai mã phòng
  static Future<void> playWrong() async => _audio?.playWrongSfx();

  /// perfect.wav: Giải đúng từ vựng trong Word Guess
  static Future<void> playPerfect() async => _audio?.playPerfectSfx();

  /// win.wav: Thắng ván đấu, tìm thấy đối thủ online, nhận thưởng nhiệm vụ
  static Future<void> playWin() async => _audio?.playWinSfx();

  /// Đoán đúng từ trong Word Guess kèm hiệu ứng âm thanh và câu thoại TTS:
  /// - Streak 1 - 2: "Great job!", "Good job!", "Well done!", "Awesome!"...
  /// - Streak 3 - 4: "Perfect!", "Excellent!", "Fantastic!", "Brilliant!"...
  /// - Streak >= 5: "Amazing!", "Incredible!", "Unstoppable!"...
  static Future<void> playWordGuessSuccess({
    int streak = 0,
    String? customMessage,
  }) async => _audio?.playWordGuessSuccess(
    streak: streak,
    customMessage: customMessage,
  );

  /// Giọng đọc từ vựng tiếng Anh
  static Future<void> speak(String text, {String language = 'en-US'}) async =>
      _audio?.speakWord(text, language: language);
}
