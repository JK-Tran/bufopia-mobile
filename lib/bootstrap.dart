import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bufopia/shared/config/log_config.dart';
import 'package:bufopia/shared/config/shared_config.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    if (!LogConfig.logOnBlocEvent) return;

    final eventStr = event.toString().toLowerCase();
    // Bỏ qua các sự kiện tần suất cao hoặc âm thanh UI gây spam console:
    if (eventStr.contains('tick') ||
        eventStr.contains('clicksoundplayed') ||
        eventStr.contains('inputwordchanged') ||
        eventStr.contains('searchquerychanged')) {
      return;
    }
    Log.d('🎯 [${bloc.runtimeType}] Event: $event');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (!LogConfig.logOnBlocChange) return;

    final curr = change.currentState;
    final next = change.nextState;

    // Bỏ qua tick timer đếm ngược hoặc khi người dùng đang gõ phím
    if (_isHighFrequencyState(curr, next)) return;

    final logList = <String>[
      '\x1B[35m ************ BLoC State Change ************',
      '🔄 BLoC: ${bloc.runtimeType}',
      '⬅️ Current State:\n${_formatState(curr)}',
      '➡️ Next State:\n${_formatState(next)}',
    ];

    Log.d(logList.join('\n'));
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    if (!LogConfig.logOnBlocError) return;
    final logList = <String>[
      '\x1B[31m ************ BLoC Error ************',
      '⛔️ BLoC: ${bloc.runtimeType}',
      '⛔️ Error: $error',
    ];
    Log.e(logList.join('\n'), stackTrace: stackTrace);
  }

  bool _isHighFrequencyState(dynamic curr, dynamic next) {
    if (curr == null || next == null) return false;
    try {
      // 1. Chỉ thay đổi số giây đếm ngược
      final dynamic currSec = (curr as dynamic).remainingSeconds;
      final dynamic nextSec = (next as dynamic).remainingSeconds;
      if (currSec != null && nextSec != null && currSec != nextSec) {
        return true;
      }
      // 2. Chỉ thay đổi từ nhập liệu khi đang gõ phím
      final dynamic currInput = (curr as dynamic).inputWord;
      final dynamic nextInput = (next as dynamic).inputWord;
      if (currInput != null && nextInput != null && currInput != nextInput) {
        return true;
      }
    } on Object catch (_) {}
    return false;
  }

  String _formatState(dynamic state) {
    if (state == null) return '   null';
    try {
      if (state is Map || state is List) {
        return _indentLines(Log.prettyJson(state), '   ');
      }
      final dynamic json = (state as dynamic).toJson();
      if (json is Map || json is List) {
        return _indentLines(Log.prettyJson(json), '   ');
      }
    } on Object catch (_) {}

    return _indentLines(_formatFreezedString(state.toString()), '   ');
  }

  String _indentLines(String text, String prefix) {
    return text.split('\n').map((line) => '$prefix$line').join('\n');
  }

  String _formatFreezedString(String str) {
    final buffer = StringBuffer();
    var indentLevel = 0;
    var inQuotes = false;

    void writeIndent() {
      buffer.write('  ' * indentLevel);
    }

    for (var i = 0; i < str.length; i++) {
      final char = str[i];

      if (char == "'" || char == '"') {
        inQuotes = !inQuotes;
        buffer.write(char);
        continue;
      }

      if (inQuotes) {
        buffer.write(char);
        continue;
      }

      if (char == '(' || char == '[' || char == '{') {
        buffer
          ..write(char)
          ..write('\n');
        indentLevel++;
        writeIndent();
      } else if (char == ')' || char == ']' || char == '}') {
        buffer.write('\n');
        indentLevel = (indentLevel - 1).clamp(0, 50);
        writeIndent();
        buffer.write(char);
      } else if (char == ',') {
        buffer.write(char);
        if (i + 1 < str.length && str[i + 1] == ' ') {
          i++;
        }
        buffer.write('\n');
        writeIndent();
      } else {
        buffer.write(char);
      }
    }

    return buffer.toString();
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  try {
    await Firebase.initializeApp();
  } on Exception catch (e) {
    log('Firebase initializeApp notice: $e');
  }

  // Add cross-flavor configuration here
  await SharedConfig.getInstance().config();

  // Khóa mặc định hướng màn hình dọc cho toàn app khi khởi động
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(await builder());
}
