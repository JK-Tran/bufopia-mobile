import 'dart:async';

import 'package:bufopia/shared/exception/base/app_exception.dart';
import 'package:meta/meta.dart';

@Deprecated('outdated. Use class Result instead')
@immutable
class ProcessState<T> {
  @Deprecated('outdated. Use class Result instead')
  const ProcessState._({this.data, this.exception})
    : assert(
        data != null || exception != null,
        'Data and exception cannot both be null.',
      );

  @Deprecated('outdated. Use class Result instead')
  const ProcessState.success(T data) : this._(data: data);

  @Deprecated('outdated. Use class Result instead')
  const ProcessState.failure(AppException exception)
    : this._(exception: exception);

  final T? data;
  final AppException? exception;

  @override
  int get hashCode => data.hashCode ^ exception.hashCode;

  bool get isFailure => exception != null;
  bool get isSuccess => data != null;

  Future<ProcessState<T>> onSuccess(Future<void> Function(T) action) async {
    if (isSuccess && data != null) {
      await action(data as T);
    }
    return this;
  }

  Future<ProcessState<T>> onFailure(
    Future<void> Function(AppException) action,
  ) async {
    if (isFailure && exception != null) {
      await action(exception!);
    }
    return this;
  }

  ProcessState<T> copyWith({T? data, AppException? exception}) {
    return ProcessState<T>._(
      data: data ?? this.data,
      exception: exception ?? this.exception,
    );
  }

  @override
  String toString() => 'ProcessState(data: $data, exception: $exception)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ProcessState<T> &&
        other.data == data &&
        other.exception == exception;
  }
}
