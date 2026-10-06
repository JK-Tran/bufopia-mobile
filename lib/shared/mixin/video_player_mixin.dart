import 'package:flutter/services.dart';

/// Mixin để xử lý fullscreen logic
mixin VideoPlayerMixin {
  bool get isFullscreen;
  void setFullscreen({required bool value});

  Future<void> enterFullscreen() async {
    setFullscreen(value: true);

    // Ẩn status bar và navigation bar
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    );

    // Cho phép xoay tự động theo hướng người dùng
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  Future<void> exitFullscreen() async {
    // Hiện lại status bar và navigation bar
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );

    // Xoay lại portrait mode
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    // Đợi orientation transition xong rồi update UI state
    Future.delayed(const Duration(milliseconds: 300), () async {
      setFullscreen(value: false);
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
    });
  }

  Future<void> restoreOrientationOnDispose() async {
    if (isFullscreen) {
      await SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
  }
}
