// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_popup_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppPopupInfo {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AppPopupInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppPopupInfo()';
}


}

/// @nodoc
class $AppPopupInfoCopyWith<$Res>  {
$AppPopupInfoCopyWith(AppPopupInfo _, $Res Function(AppPopupInfo) __);
}


/// Adds pattern-matching-related methods to [AppPopupInfo].
extension AppPopupInfoPatterns on AppPopupInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ConfirmDialog value)?  confirmDialog,TResult Function( _AlertDialog value)?  alertDialog,TResult Function( _WarningDialog value)?  warningDialog,TResult Function( _ErrorWithRetryDialog value)?  errorWithRetryDialog,TResult Function( _RequiredLoginDialog value)?  requiredLoginDialog,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfirmDialog() when confirmDialog != null:
return confirmDialog(_that);case _AlertDialog() when alertDialog != null:
return alertDialog(_that);case _WarningDialog() when warningDialog != null:
return warningDialog(_that);case _ErrorWithRetryDialog() when errorWithRetryDialog != null:
return errorWithRetryDialog(_that);case _RequiredLoginDialog() when requiredLoginDialog != null:
return requiredLoginDialog(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ConfirmDialog value)  confirmDialog,required TResult Function( _AlertDialog value)  alertDialog,required TResult Function( _WarningDialog value)  warningDialog,required TResult Function( _ErrorWithRetryDialog value)  errorWithRetryDialog,required TResult Function( _RequiredLoginDialog value)  requiredLoginDialog,}){
final _that = this;
switch (_that) {
case _ConfirmDialog():
return confirmDialog(_that);case _AlertDialog():
return alertDialog(_that);case _WarningDialog():
return warningDialog(_that);case _ErrorWithRetryDialog():
return errorWithRetryDialog(_that);case _RequiredLoginDialog():
return requiredLoginDialog(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ConfirmDialog value)?  confirmDialog,TResult? Function( _AlertDialog value)?  alertDialog,TResult? Function( _WarningDialog value)?  warningDialog,TResult? Function( _ErrorWithRetryDialog value)?  errorWithRetryDialog,TResult? Function( _RequiredLoginDialog value)?  requiredLoginDialog,}){
final _that = this;
switch (_that) {
case _ConfirmDialog() when confirmDialog != null:
return confirmDialog(_that);case _AlertDialog() when alertDialog != null:
return alertDialog(_that);case _WarningDialog() when warningDialog != null:
return warningDialog(_that);case _ErrorWithRetryDialog() when errorWithRetryDialog != null:
return errorWithRetryDialog(_that);case _RequiredLoginDialog() when requiredLoginDialog != null:
return requiredLoginDialog(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String title,  String message,  Widget? asset,  Func0<void>? onPressed)?  confirmDialog,TResult Function( String title,  String message,  Widget? asset,  Func0<void>? onPressed)?  alertDialog,TResult Function( String title,  String message,  Widget? asset,  Func0<void>? onPressed)?  warningDialog,TResult Function( String title,  String message,  Widget? asset,  Func0<void>? onRetryPressed)?  errorWithRetryDialog,TResult Function()?  requiredLoginDialog,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfirmDialog() when confirmDialog != null:
return confirmDialog(_that.title,_that.message,_that.asset,_that.onPressed);case _AlertDialog() when alertDialog != null:
return alertDialog(_that.title,_that.message,_that.asset,_that.onPressed);case _WarningDialog() when warningDialog != null:
return warningDialog(_that.title,_that.message,_that.asset,_that.onPressed);case _ErrorWithRetryDialog() when errorWithRetryDialog != null:
return errorWithRetryDialog(_that.title,_that.message,_that.asset,_that.onRetryPressed);case _RequiredLoginDialog() when requiredLoginDialog != null:
return requiredLoginDialog();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String title,  String message,  Widget? asset,  Func0<void>? onPressed)  confirmDialog,required TResult Function( String title,  String message,  Widget? asset,  Func0<void>? onPressed)  alertDialog,required TResult Function( String title,  String message,  Widget? asset,  Func0<void>? onPressed)  warningDialog,required TResult Function( String title,  String message,  Widget? asset,  Func0<void>? onRetryPressed)  errorWithRetryDialog,required TResult Function()  requiredLoginDialog,}) {final _that = this;
switch (_that) {
case _ConfirmDialog():
return confirmDialog(_that.title,_that.message,_that.asset,_that.onPressed);case _AlertDialog():
return alertDialog(_that.title,_that.message,_that.asset,_that.onPressed);case _WarningDialog():
return warningDialog(_that.title,_that.message,_that.asset,_that.onPressed);case _ErrorWithRetryDialog():
return errorWithRetryDialog(_that.title,_that.message,_that.asset,_that.onRetryPressed);case _RequiredLoginDialog():
return requiredLoginDialog();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String title,  String message,  Widget? asset,  Func0<void>? onPressed)?  confirmDialog,TResult? Function( String title,  String message,  Widget? asset,  Func0<void>? onPressed)?  alertDialog,TResult? Function( String title,  String message,  Widget? asset,  Func0<void>? onPressed)?  warningDialog,TResult? Function( String title,  String message,  Widget? asset,  Func0<void>? onRetryPressed)?  errorWithRetryDialog,TResult? Function()?  requiredLoginDialog,}) {final _that = this;
switch (_that) {
case _ConfirmDialog() when confirmDialog != null:
return confirmDialog(_that.title,_that.message,_that.asset,_that.onPressed);case _AlertDialog() when alertDialog != null:
return alertDialog(_that.title,_that.message,_that.asset,_that.onPressed);case _WarningDialog() when warningDialog != null:
return warningDialog(_that.title,_that.message,_that.asset,_that.onPressed);case _ErrorWithRetryDialog() when errorWithRetryDialog != null:
return errorWithRetryDialog(_that.title,_that.message,_that.asset,_that.onRetryPressed);case _RequiredLoginDialog() when requiredLoginDialog != null:
return requiredLoginDialog();case _:
  return null;

}
}

}

/// @nodoc


class _ConfirmDialog implements AppPopupInfo {
  const _ConfirmDialog({this.title = '', this.message = '', this.asset, this.onPressed});
  

@JsonKey() final  String title;
@JsonKey() final  String message;
 final  Widget? asset;
 final  Func0<void>? onPressed;

/// Create a copy of AppPopupInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfirmDialogCopyWith<_ConfirmDialog> get copyWith => __$ConfirmDialogCopyWithImpl<_ConfirmDialog>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfirmDialog&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.onPressed, onPressed) || other.onPressed == onPressed));
}


@override
int get hashCode {
    return Object.hash(runtimeType,title,message,asset,onPressed);
}

@override
String toString() {
    return 'AppPopupInfo.confirmDialog(title: $title, message: $message, asset: $asset, onPressed: $onPressed)';
}


}

/// @nodoc
abstract mixin class _$ConfirmDialogCopyWith<$Res> implements $AppPopupInfoCopyWith<$Res> {
  factory _$ConfirmDialogCopyWith(_ConfirmDialog value, $Res Function(_ConfirmDialog) _then) = __$ConfirmDialogCopyWithImpl;
@useResult
$Res call({
 String title, String message, Widget? asset, Func0<void>? onPressed
});




}
/// @nodoc
class __$ConfirmDialogCopyWithImpl<$Res>
    implements _$ConfirmDialogCopyWith<$Res> {
  __$ConfirmDialogCopyWithImpl(this._self, this._then);

  final _ConfirmDialog _self;
  final $Res Function(_ConfirmDialog) _then;

/// Create a copy of AppPopupInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? message = null,Object? asset = freezed,Object? onPressed = freezed,}) {
  return _then(_ConfirmDialog(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as Widget?,onPressed: freezed == onPressed ? _self.onPressed : onPressed // ignore: cast_nullable_to_non_nullable
as Func0<void>?,
  ));
}


}

/// @nodoc


class _AlertDialog implements AppPopupInfo {
  const _AlertDialog({this.title = '', this.message = '', this.asset, this.onPressed});
  

@JsonKey() final  String title;
@JsonKey() final  String message;
 final  Widget? asset;
 final  Func0<void>? onPressed;

/// Create a copy of AppPopupInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertDialogCopyWith<_AlertDialog> get copyWith => __$AlertDialogCopyWithImpl<_AlertDialog>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlertDialog&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.onPressed, onPressed) || other.onPressed == onPressed));
}


@override
int get hashCode {
    return Object.hash(runtimeType,title,message,asset,onPressed);
}

@override
String toString() {
    return 'AppPopupInfo.alertDialog(title: $title, message: $message, asset: $asset, onPressed: $onPressed)';
}


}

/// @nodoc
abstract mixin class _$AlertDialogCopyWith<$Res> implements $AppPopupInfoCopyWith<$Res> {
  factory _$AlertDialogCopyWith(_AlertDialog value, $Res Function(_AlertDialog) _then) = __$AlertDialogCopyWithImpl;
@useResult
$Res call({
 String title, String message, Widget? asset, Func0<void>? onPressed
});




}
/// @nodoc
class __$AlertDialogCopyWithImpl<$Res>
    implements _$AlertDialogCopyWith<$Res> {
  __$AlertDialogCopyWithImpl(this._self, this._then);

  final _AlertDialog _self;
  final $Res Function(_AlertDialog) _then;

/// Create a copy of AppPopupInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? message = null,Object? asset = freezed,Object? onPressed = freezed,}) {
  return _then(_AlertDialog(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as Widget?,onPressed: freezed == onPressed ? _self.onPressed : onPressed // ignore: cast_nullable_to_non_nullable
as Func0<void>?,
  ));
}


}

/// @nodoc


class _WarningDialog implements AppPopupInfo {
  const _WarningDialog({required this.title, required this.message, this.asset, this.onPressed});
  

 final  String title;
 final  String message;
 final  Widget? asset;
 final  Func0<void>? onPressed;

/// Create a copy of AppPopupInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WarningDialogCopyWith<_WarningDialog> get copyWith => __$WarningDialogCopyWithImpl<_WarningDialog>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WarningDialog&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.onPressed, onPressed) || other.onPressed == onPressed));
}


@override
int get hashCode {
    return Object.hash(runtimeType,title,message,asset,onPressed);
}

@override
String toString() {
    return 'AppPopupInfo.warningDialog(title: $title, message: $message, asset: $asset, onPressed: $onPressed)';
}


}

/// @nodoc
abstract mixin class _$WarningDialogCopyWith<$Res> implements $AppPopupInfoCopyWith<$Res> {
  factory _$WarningDialogCopyWith(_WarningDialog value, $Res Function(_WarningDialog) _then) = __$WarningDialogCopyWithImpl;
@useResult
$Res call({
 String title, String message, Widget? asset, Func0<void>? onPressed
});




}
/// @nodoc
class __$WarningDialogCopyWithImpl<$Res>
    implements _$WarningDialogCopyWith<$Res> {
  __$WarningDialogCopyWithImpl(this._self, this._then);

  final _WarningDialog _self;
  final $Res Function(_WarningDialog) _then;

/// Create a copy of AppPopupInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? message = null,Object? asset = freezed,Object? onPressed = freezed,}) {
  return _then(_WarningDialog(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as Widget?,onPressed: freezed == onPressed ? _self.onPressed : onPressed // ignore: cast_nullable_to_non_nullable
as Func0<void>?,
  ));
}


}

/// @nodoc


class _ErrorWithRetryDialog implements AppPopupInfo {
  const _ErrorWithRetryDialog({this.title = '', this.message = '', this.asset, this.onRetryPressed});
  

@JsonKey() final  String title;
@JsonKey() final  String message;
 final  Widget? asset;
 final  Func0<void>? onRetryPressed;

/// Create a copy of AppPopupInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorWithRetryDialogCopyWith<_ErrorWithRetryDialog> get copyWith => __$ErrorWithRetryDialogCopyWithImpl<_ErrorWithRetryDialog>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorWithRetryDialog&&(identical(other.title, title) || other.title == title)&&(identical(other.message, message) || other.message == message)&&(identical(other.asset, asset) || other.asset == asset)&&(identical(other.onRetryPressed, onRetryPressed) || other.onRetryPressed == onRetryPressed));
}


@override
int get hashCode {
    return Object.hash(runtimeType,title,message,asset,onRetryPressed);
}

@override
String toString() {
    return 'AppPopupInfo.errorWithRetryDialog(title: $title, message: $message, asset: $asset, onRetryPressed: $onRetryPressed)';
}


}

/// @nodoc
abstract mixin class _$ErrorWithRetryDialogCopyWith<$Res> implements $AppPopupInfoCopyWith<$Res> {
  factory _$ErrorWithRetryDialogCopyWith(_ErrorWithRetryDialog value, $Res Function(_ErrorWithRetryDialog) _then) = __$ErrorWithRetryDialogCopyWithImpl;
@useResult
$Res call({
 String title, String message, Widget? asset, Func0<void>? onRetryPressed
});




}
/// @nodoc
class __$ErrorWithRetryDialogCopyWithImpl<$Res>
    implements _$ErrorWithRetryDialogCopyWith<$Res> {
  __$ErrorWithRetryDialogCopyWithImpl(this._self, this._then);

  final _ErrorWithRetryDialog _self;
  final $Res Function(_ErrorWithRetryDialog) _then;

/// Create a copy of AppPopupInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? message = null,Object? asset = freezed,Object? onRetryPressed = freezed,}) {
  return _then(_ErrorWithRetryDialog(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,asset: freezed == asset ? _self.asset : asset // ignore: cast_nullable_to_non_nullable
as Widget?,onRetryPressed: freezed == onRetryPressed ? _self.onRetryPressed : onRetryPressed // ignore: cast_nullable_to_non_nullable
as Func0<void>?,
  ));
}


}

/// @nodoc


class _RequiredLoginDialog implements AppPopupInfo {
  const _RequiredLoginDialog();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequiredLoginDialog);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppPopupInfo.requiredLoginDialog()';
}


}




// dart format on
