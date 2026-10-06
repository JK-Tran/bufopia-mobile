import 'package:audioplayers/audioplayers.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:injectable/injectable.dart';

abstract class AppAudioService {
  Future<void> init();
  Future<void> playBgm();
  Future<void> pauseBgm();
  Future<void> resumeBgm();
  Future<void> stopBgm();
  Future<void> playClickSfx();
  Future<void> setMusicEnabled({required bool enabled});
  Future<void> setSfxEnabled({required bool enabled});
  Future<void> dispose();
}

@LazySingleton(as: AppAudioService)
class AppAudioServiceImpl implements AppAudioService {
  AppAudioServiceImpl() {
    _bgmPlayer = AudioPlayer();
    _sfxPlayer = AudioPlayer();
  }

  static const String _bgmAssetPath = 'sounds/music-app.mp3';
  static const String _sfxAssetPath = 'sounds/click-category.wav';

  late final AudioPlayer _bgmPlayer;
  late final AudioPlayer _sfxPlayer;

  bool _isMusicEnabled = true;
  bool _isSfxEnabled = true;
  bool _isPlayingBgm = false;
  bool _isInitialized = false;

  @override
  Future<void> init() async {
    if (_isInitialized) return;
    try {
      await _bgmPlayer.setReleaseMode(ReleaseMode.loop);
      await _bgmPlayer.setPlayerMode(PlayerMode.mediaPlayer);
      await _bgmPlayer.setSource(AssetSource(_bgmAssetPath));

      await _sfxPlayer.setReleaseMode(ReleaseMode.stop);
      await _sfxPlayer.setPlayerMode(PlayerMode.lowLatency);
      await _sfxPlayer.setSource(AssetSource(_sfxAssetPath));
      _isInitialized = true;
    } on Exception catch (e, stackTrace) {
      Log.e('Failed to initialize AudioPlayers: $e', stackTrace: stackTrace);
    }
  }

  @override
  Future<void> playBgm() async {
    if (!_isMusicEnabled) return;
    try {
      if (_isPlayingBgm) return;
      if (_bgmPlayer.source == null) {
        await _bgmPlayer.setSource(AssetSource(_bgmAssetPath));
      }
      await _bgmPlayer.resume();
      _isPlayingBgm = true;
    } on Exception catch (e, stackTrace) {
      Log.e('Error playing BGM: $e', stackTrace: stackTrace);
    }
  }

  @override
  Future<void> pauseBgm() async {
    try {
      await _bgmPlayer.pause();
      _isPlayingBgm = false;
    } on Exception catch (e, stackTrace) {
      Log.e('Error pausing BGM: $e', stackTrace: stackTrace);
    }
  }

  @override
  Future<void> resumeBgm() async {
    if (!_isMusicEnabled) return;
    try {
      if (!_isPlayingBgm) {
        await _bgmPlayer.resume();
        _isPlayingBgm = true;
      }
    } on Exception catch (e, stackTrace) {
      Log.e('Error resuming BGM: $e', stackTrace: stackTrace);
    }
  }

  @override
  Future<void> stopBgm() async {
    try {
      await _bgmPlayer.pause();
      await _bgmPlayer.seek(Duration.zero);
      _isPlayingBgm = false;
    } on Exception catch (e, stackTrace) {
      Log.e('Error stopping BGM: $e', stackTrace: stackTrace);
    }
  }

  @override
  Future<void> playClickSfx() async {
    if (!_isSfxEnabled) return;
    try {
      await _sfxPlayer.stop();
      await _sfxPlayer.play(AssetSource(_sfxAssetPath));
    } on Exception catch (e, stackTrace) {
      Log.e('Error playing click SFX: $e', stackTrace: stackTrace);
    }
  }

  @override
  Future<void> setMusicEnabled({required bool enabled}) async {
    _isMusicEnabled = enabled;
    if (enabled) {
      await playBgm();
    } else {
      await pauseBgm();
    }
  }

  @override
  Future<void> setSfxEnabled({required bool enabled}) async {
    _isSfxEnabled = enabled;
  }

  @override
  Future<void> dispose() async {
    await _bgmPlayer.dispose();
    await _sfxPlayer.dispose();
  }
}
