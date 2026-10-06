import 'dart:async';

import 'package:bufopia/shared/config/log_config.dart';
import 'package:bufopia/shared/helper/stream/disposable.dart';
import 'package:bufopia/shared/mixin/log_mixin.dart';
import 'package:flutter/material.dart';

class DisposeBag with LogMixin {
  static const bool _enableLogging = LogConfig.enableDisposeBagLog;
  final List<Object> _disposable = [];
  void addDisposable(Object disposable) {
    _disposable.add(disposable);
  }

  Future<void> dispose() async {
    for (final disposable in _disposable) {
      if (disposable is StreamSubscription) {
        await disposable.cancel();
        if (_enableLogging) {
          logD('Canceled $disposable');
        }
      } else if (disposable is StreamController) {
        await disposable.close();
        if (_enableLogging) {
          logD('Closed $disposable');
        }
      } else if (disposable is ChangeNotifier) {
        disposable.dispose();
        if (_enableLogging) {
          logD('Disposed $disposable');
        }
      } else if (disposable is Disposable) {
        disposable();
      }
    }

    _disposable.clear();
  }
}

extension StreamSubscriptionExtensions<T> on StreamSubscription<T> {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}

extension StreamControllerExtensions<T> on StreamController<T> {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}

extension ChangeNotifierExtensions on ChangeNotifier {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}

extension DisposableExtensions on Disposable {
  void disposeBy(DisposeBag disposeBag) {
    disposeBag.addDisposable(this);
  }
}
