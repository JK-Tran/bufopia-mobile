import 'dart:async';

import 'package:bufopia/shared/exception/base/app_exception.dart';
import 'package:bufopia/shared/exception/uncaught/app_uncaught_exception.dart';
import 'package:bufopia/shared/utils/log_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BaseBlocMixin<S> on BlocBase<S> {
  final _loadingController = StreamController<bool>.broadcast();
  final _errorController = StreamController<AppException>.broadcast();

  Stream<bool> get loadingStream => _loadingController.stream;
  Stream<AppException> get errorStream => _errorController.stream;

  @override
  Future<void> close() async {
    await _loadingController.close();
    await _errorController.close();
    return super.close();
  }

  /// Phát state an toàn, tránh ngoại lệ khi BLoC đã đóng (isClosed)
  void safeEmit(S state) {
    if (!isClosed) {
      emit(state);
    }
  }

  /// Utility method to run an async action, automatically show/hide loading, and catch errors.
  Future<void> runBlocCatching({
    required Future<void> Function() action,
    FutureOr<void> Function()? doOnSubscribe,
    FutureOr<void> Function()? doOnSuccessOrError,
    FutureOr<void> Function(AppException)? doOnError,
    void Function()? doOnEventCompleted,
    bool handleLoading = true,
    bool handleError = true,
  }) async {
    if (handleLoading) _loadingController.add(true);
    await doOnSubscribe?.call();

    try {
      await action();
    } on AppException catch (e) {
      Log.e('AppException caught in Bloc/Cubit', errorObject: e);
      if (doOnError != null) {
        await doOnError(e);
      } else if (handleError) {
        _errorController.add(e);
      }
    } on Exception catch (e, stackTrace) {
      Log.e(
        'Uncaught exception in Bloc/Cubit',
        errorObject: e,
        stackTrace: stackTrace,
      );
      final exception = AppUncaughtException(e);

      if (doOnError != null) {
        await doOnError(exception);
      } else if (handleError) {
        _errorController.add(exception);
      }
    } finally {
      if (handleLoading) _loadingController.add(false);
      await doOnSuccessOrError?.call();
      doOnEventCompleted?.call();
    }
  }
}
