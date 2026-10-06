import 'package:bufopia/shared/helper/function/function.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_popup_info.freezed.dart';

/// dialog, bottomsheet
@freezed
class AppPopupInfo with _$AppPopupInfo {
  const factory AppPopupInfo.confirmDialog({
    @Default('') String title,
    @Default('') String message,
    Widget? asset,
    Func0<void>? onPressed,
  }) = _ConfirmDialog;

  const factory AppPopupInfo.alertDialog({
    @Default('') String title,
    @Default('') String message,
    Widget? asset,
    Func0<void>? onPressed,
  }) = _AlertDialog;

  const factory AppPopupInfo.warningDialog({
    required String title,
    required String message,
    Widget? asset,
    Func0<void>? onPressed,
  }) = _WarningDialog;

  const factory AppPopupInfo.errorWithRetryDialog({
    @Default('') String title,
    @Default('') String message,
    Widget? asset,
    Func0<void>? onRetryPressed,
  }) = _ErrorWithRetryDialog;

  const factory AppPopupInfo.requiredLoginDialog() = _RequiredLoginDialog;
}
