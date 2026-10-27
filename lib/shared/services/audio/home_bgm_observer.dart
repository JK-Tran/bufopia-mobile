import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/features/home/home.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:flutter/material.dart';

/// Observer theo dõi điều hướng để quản lý nhạc nền BGM (music-app.mp3):
/// CHỈ RIÊNG màn hình Home là có nhạc nền; khi chuyển sang bất kỳ màn hình
/// nào khác thì nhạc nền sẽ lập tức được ngắt sạch; khi quay trở lại Home
/// sẽ phát lại.
class HomeBgmObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PopupRoute) return;
    _handleRouteChange(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (route is PopupRoute) return;
    if (previousRoute != null) {
      _handleRouteChange(previousRoute);
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    if (route is PopupRoute) return;
    if (previousRoute != null) {
      _handleRouteChange(previousRoute);
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PopupRoute) return;
    if (newRoute != null) {
      _handleRouteChange(newRoute);
    }
  }

  void _handleRouteChange(Route<dynamic> route) {
    // Các hộp thoại popup/dialog không làm mất trạng thái màn hình Home
    if (route is PopupRoute) return;

    final name = route.settings.name;
    final isHome =
        name == 'home' ||
        name == '/home' ||
        name == '/' ||
        name == AppRouter.home ||
        (route.settings is MaterialPage &&
            (route.settings as MaterialPage<dynamic>).child is HomePage);

    if (isHome) {
      SoundManager.onEnterHome();
    } else {
      SoundManager.onLeaveHome();
    }
  }
}
