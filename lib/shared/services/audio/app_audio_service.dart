import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:injectable/injectable.dart';

abstract class AppAudioService {
  Future<void> init();

  // ── BGM Management ───────────────────────────────────────────────
  Future<void> playBgm();
  Future<void> pauseBgm();
  Future<void> resumeBgm();
  Future<void> stopBgm();

  void onEnterHome();
  void onLeaveHome();

  // ── SFX Effects ──────────────────────────────────────────────────
  Future<void> playClickSfx();
  Future<void> playCorrectSfx();
  Future<void> playWrongSfx();
  Future<void> playPerfectSfx();
  Future<void> playWinSfx();
  Future<void> playWordGuessSuccess({int streak = 0, String? customMessage});

  // ── TTS & Settings ───────────────────────────────────────────────
  Future<void> speakWord(String text, {String language = 'en-US'});
  Future<void> setMusicEnabled({required bool enabled});
  Future<void> setSfxEnabled({required bool enabled});
  bool get isMusicEnabled;
  bool get isSfxEnabled;
  bool get isHomeActive;

  Future<void> dispose();
}

@LazySingleton(as: AppAudioService)
class AppAudioServiceImpl implements AppAudioService {
  AppAudioServiceImpl() {
    _bgmPlayer = AudioPlayer();
    _clickPlayer = AudioPlayer();
    _feedbackPlayer = AudioPlayer();
    _ttsPlayer = AudioPlayer();
    _flutterTts = FlutterTts();
  }

  static const String _bgmAssetPath = 'sounds/music-app.mp3';
  static const String _clickAssetPath = 'sounds/click.wav';
  static const String _correctAssetPath = 'sounds/correct.wav';
  static const String _wrongAssetPath = 'sounds/wrong.wav';
  static const String _perfectAssetPath = 'sounds/perfect.wav';
  static const String _winAssetPath = 'sounds/win.wav';

  static const List<String> _lowStreakPraise = [
    'Great job!',
    'Good job!',
    'Well done!',
    'Nice work!',
    'Awesome!',
  ];

  static const List<String> _midStreakPraise = [
    'Perfect!',
    'Excellent!',
    'Fantastic!',
    'Brilliant!',
    'Superb!',
  ];

  static const List<String> _highStreakPraise = [
    'Amazing!',
    'Incredible!',
    'Outstanding!',
    'Unstoppable!',
    'Phenomenal!',
  ];

  final Random _random = Random();

  late final AudioPlayer _bgmPlayer;
  late final AudioPlayer _clickPlayer;
  late final AudioPlayer _feedbackPlayer;
  late final AudioPlayer _ttsPlayer;
  late final FlutterTts _flutterTts;

  bool _isMusicEnabled = true;
  bool _isSfxEnabled = true;
  bool _isPlayingBgm = false;
  bool _isHomeActive = false;
  bool _isTransitioningBgm = false;
  bool _isInitialized = false;
  bool _isTtsInitialized = false;

  static final AudioContext _audioCtx = AudioContext(
    android: const AudioContextAndroid(
      usageType: AndroidUsageType.game,
      contentType: AndroidContentType.sonification,
      audioFocus: AndroidAudioFocus.none,
    ),
    iOS: AudioContextIOS(
      options: const {
        AVAudioSessionOptions.mixWithOthers,
      },
    ),
  );

  @override
  bool get isMusicEnabled => _isMusicEnabled;

  @override
  bool get isSfxEnabled => _isSfxEnabled;

  @override
  bool get isHomeActive => _isHomeActive;

  @override
  Future<void> init() async {
    if (_isInitialized) return;
    try {
      await AudioPlayer.global.setAudioContext(_audioCtx);

      await _bgmPlayer.setAudioContext(_audioCtx);
      await _bgmPlayer.setReleaseMode(ReleaseMode.loop);
      await _bgmPlayer.setPlayerMode(PlayerMode.mediaPlayer);
      await _bgmPlayer.setVolume(0.5);

      _bgmPlayer.onPlayerStateChanged.listen((playerState) {
        _isPlayingBgm = playerState == PlayerState.playing;
      });

      await _clickPlayer.setAudioContext(_audioCtx);
      await _clickPlayer.setReleaseMode(ReleaseMode.stop);
      await _clickPlayer.setPlayerMode(PlayerMode.lowLatency);
      await _clickPlayer.setVolume(1);

      await _feedbackPlayer.setAudioContext(_audioCtx);
      await _feedbackPlayer.setReleaseMode(ReleaseMode.stop);
      await _feedbackPlayer.setPlayerMode(PlayerMode.lowLatency);
      await _feedbackPlayer.setVolume(1);

      await _ttsPlayer.setAudioContext(_audioCtx);
      await _ttsPlayer.setReleaseMode(ReleaseMode.stop);
      await _ttsPlayer.setPlayerMode(PlayerMode.mediaPlayer);

      await _initTts();
      _isInitialized = true;
    } on Object catch (e, stackTrace) {
      Log.e('Failed to initialize AudioPlayers: $e', stackTrace: stackTrace);
    }
  }

  Future<void> _initTts() async {
    if (_isTtsInitialized) return;
    try {
      await _flutterTts.setLanguage('en-US');
      await _flutterTts.setSpeechRate(0.48);
      await _flutterTts.setVolume(1);
      await _flutterTts.setPitch(1);
      try {
        await _flutterTts.setIosAudioCategory(
          IosTextToSpeechAudioCategory.playback,
          [
            IosTextToSpeechAudioCategoryOptions.defaultToSpeaker,
            IosTextToSpeechAudioCategoryOptions.allowBluetooth,
            IosTextToSpeechAudioCategoryOptions.allowBluetoothA2DP,
          ],
        );
      } on Object catch (_) {}
      _isTtsInitialized = true;
    } on Object catch (e, stackTrace) {
      Log.e('Failed to initialize FlutterTts: $e', stackTrace: stackTrace);
    }
  }

  @override
  void onEnterHome() {
    _isHomeActive = true;
    if (_isMusicEnabled) {
      playBgm();
    }
  }

  @override
  void onLeaveHome() {
    _isHomeActive = false;
    stopBgm();
  }

  @override
  Future<void> playBgm() async {
    if (!_isMusicEnabled || !_isHomeActive) return;
    if (_isTransitioningBgm) return;
    _isTransitioningBgm = true;

    try {
      if (_isPlayingBgm && _bgmPlayer.state == PlayerState.playing) return;
      await _bgmPlayer.setReleaseMode(ReleaseMode.loop);
      await _bgmPlayer.setVolume(0.5);
      await _bgmPlayer.play(
        AssetSource(_bgmAssetPath),
        mode: PlayerMode.mediaPlayer,
        ctx: _audioCtx,
      );
      _isPlayingBgm = true;
    } on Object catch (e, stackTrace) {
      Log.e('Error playing BGM: $e', stackTrace: stackTrace);
    } finally {
      _isTransitioningBgm = false;
    }
  }

  @override
  Future<void> pauseBgm() async {
    _isPlayingBgm = false;
    try {
      await _bgmPlayer.pause();
    } on Object catch (e, stackTrace) {
      Log.e('Error pausing BGM: $e', stackTrace: stackTrace);
    }
  }

  @override
  Future<void> resumeBgm() async {
    if (!_isMusicEnabled || !_isHomeActive) return;
    await playBgm();
  }

  @override
  Future<void> stopBgm() async {
    _isPlayingBgm = false;
    try {
      await _bgmPlayer.stop();
    } on Object catch (e, stackTrace) {
      Log.e('Error stopping BGM: $e', stackTrace: stackTrace);
    }
  }

  @override
  Future<void> playClickSfx() async {
    if (!_isSfxEnabled) {
      Log.d('🔇 [SoundManager] Click SFX skipped (isSfxEnabled: false)');
      return;
    }
    try {
      Log.d('🔊 [SoundManager] Playing click SFX: $_clickAssetPath');
      await _clickPlayer.stop();
      await _clickPlayer.play(
        AssetSource(_clickAssetPath),
        mode: PlayerMode.lowLatency,
        ctx: _audioCtx,
      );
    } on Object catch (e, stackTrace) {
      Log.e(
        '❌ [SoundManager] Error playing click SFX: $e',
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> playCorrectSfx() async {
    if (!_isSfxEnabled) {
      Log.d('🔇 [SoundManager] Correct SFX skipped (isSfxEnabled: false)');
      return;
    }
    try {
      Log.d('🔊 [SoundManager] Playing correct SFX: $_correctAssetPath');
      await _feedbackPlayer.stop();
      await _feedbackPlayer.play(
        AssetSource(_correctAssetPath),
        mode: PlayerMode.lowLatency,
        ctx: _audioCtx,
      );
    } on Object catch (e, stackTrace) {
      Log.e(
        '❌ [SoundManager] Error playing correct SFX: $e',
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> playWrongSfx() async {
    if (!_isSfxEnabled) {
      Log.d('🔇 [SoundManager] Wrong SFX skipped (isSfxEnabled: false)');
      return;
    }
    try {
      Log.d('🔊 [SoundManager] Playing wrong SFX: $_wrongAssetPath');
      await _feedbackPlayer.stop();
      await _feedbackPlayer.play(
        AssetSource(_wrongAssetPath),
        mode: PlayerMode.lowLatency,
        ctx: _audioCtx,
      );
    } on Object catch (e, stackTrace) {
      Log.e(
        '❌ [SoundManager] Error playing wrong SFX: $e',
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> playPerfectSfx() async {
    if (!_isSfxEnabled) {
      Log.d('🔇 [SoundManager] Perfect SFX skipped (isSfxEnabled: false)');
      return;
    }
    try {
      Log.d('🔊 [SoundManager] Playing perfect SFX: $_perfectAssetPath');
      await _feedbackPlayer.stop();
      await _feedbackPlayer.play(
        AssetSource(_perfectAssetPath),
        mode: PlayerMode.lowLatency,
        ctx: _audioCtx,
      );
    } on Object catch (e, stackTrace) {
      Log.e(
        '❌ [SoundManager] Error playing perfect SFX: $e',
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> playWinSfx() async {
    if (!_isSfxEnabled) {
      Log.d('🔇 [SoundManager] Win SFX skipped (isSfxEnabled: false)');
      return;
    }
    try {
      Log.d('🔊 [SoundManager] Playing win SFX: $_winAssetPath');
      await _feedbackPlayer.stop();
      await _feedbackPlayer.play(
        AssetSource(_winAssetPath),
        mode: PlayerMode.lowLatency,
        ctx: _audioCtx,
      );
    } on Object catch (e, stackTrace) {
      Log.e(
        '❌ [SoundManager] Error playing win SFX: $e',
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<void> playWordGuessSuccess({
    int streak = 0,
    String? customMessage,
  }) async {
    await playPerfectSfx();
    // Chờ 350ms để âm thanh perfect.wav vang lên trước khi đọc TTS
    await Future<void>.delayed(const Duration(milliseconds: 350));
    var message = customMessage;
    if (message == null) {
      if (streak >= 5) {
        message = _highStreakPraise[_random.nextInt(_highStreakPraise.length)];
      } else if (streak >= 3) {
        message = _midStreakPraise[_random.nextInt(_midStreakPraise.length)];
      } else {
        message = _lowStreakPraise[_random.nextInt(_lowStreakPraise.length)];
      }
    }
    await speakWord(message);
  }

  @override
  Future<void> speakWord(String text, {String language = 'en-US'}) async {
    final cleanText = text.trim();
    if (cleanText.isEmpty) return;
    try {
      await _initTts();
      await _flutterTts.setLanguage(language);
      await _flutterTts.stop();
      final result = await _flutterTts.speak(cleanText);
      if (result != 1) {
        await _speakFallback(cleanText);
      }
    } on Object catch (e) {
      Log.e('FlutterTts speak failed: $e, using fallback audio');
      await _speakFallback(cleanText);
    }
  }

  Future<void> _speakFallback(String text) async {
    try {
      final encoded = Uri.encodeComponent(text);
      final url =
          'https://translate.google.com/translate_tts?ie=UTF-8&client=tw-ob&tl=en&q=$encoded';
      await _ttsPlayer.stop();
      await _ttsPlayer.play(UrlSource(url));
    } on Object catch (e, stackTrace) {
      Log.e('Fallback pronunciation failed: $e', stackTrace: stackTrace);
    }
  }

  @override
  Future<void> setMusicEnabled({required bool enabled}) async {
    Log.d(
      '🎵 [SoundManager] setMusicEnabled: $enabled (isHome: $_isHomeActive)',
    );
    _isMusicEnabled = enabled;
    if (enabled && _isHomeActive) {
      await playBgm();
    } else {
      await stopBgm();
    }
  }

  @override
  Future<void> setSfxEnabled({required bool enabled}) async {
    Log.d('🔔 [SoundManager] setSfxEnabled: $enabled');
    _isSfxEnabled = enabled;
  }

  @override
  Future<void> dispose() async {
    await _bgmPlayer.dispose();
    await _clickPlayer.dispose();
    await _feedbackPlayer.dispose();
    await _ttsPlayer.dispose();
    try {
      await _flutterTts.stop();
    } on Object catch (_) {}
  }
}
