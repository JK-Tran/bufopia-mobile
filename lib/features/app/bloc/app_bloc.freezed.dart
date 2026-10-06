// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AppEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppEvent()';
}


}

/// @nodoc
class $AppEventCopyWith<$Res>  {
$AppEventCopyWith(AppEvent _, $Res Function(AppEvent) __);
}


/// Adds pattern-matching-related methods to [AppEvent].
extension AppEventPatterns on AppEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initiated value)?  initiated,TResult Function( MusicToggled value)?  musicToggled,TResult Function( SfxToggled value)?  sfxToggled,TResult Function( LanguageChanged value)?  languageChanged,TResult Function( ThemeChanged value)?  themeChanged,TResult Function( LifecycleChanged value)?  lifecycleChanged,TResult Function( ClickSoundPlayed value)?  clickSoundPlayed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initiated() when initiated != null:
return initiated(_that);case MusicToggled() when musicToggled != null:
return musicToggled(_that);case SfxToggled() when sfxToggled != null:
return sfxToggled(_that);case LanguageChanged() when languageChanged != null:
return languageChanged(_that);case ThemeChanged() when themeChanged != null:
return themeChanged(_that);case LifecycleChanged() when lifecycleChanged != null:
return lifecycleChanged(_that);case ClickSoundPlayed() when clickSoundPlayed != null:
return clickSoundPlayed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initiated value)  initiated,required TResult Function( MusicToggled value)  musicToggled,required TResult Function( SfxToggled value)  sfxToggled,required TResult Function( LanguageChanged value)  languageChanged,required TResult Function( ThemeChanged value)  themeChanged,required TResult Function( LifecycleChanged value)  lifecycleChanged,required TResult Function( ClickSoundPlayed value)  clickSoundPlayed,}){
final _that = this;
switch (_that) {
case Initiated():
return initiated(_that);case MusicToggled():
return musicToggled(_that);case SfxToggled():
return sfxToggled(_that);case LanguageChanged():
return languageChanged(_that);case ThemeChanged():
return themeChanged(_that);case LifecycleChanged():
return lifecycleChanged(_that);case ClickSoundPlayed():
return clickSoundPlayed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initiated value)?  initiated,TResult? Function( MusicToggled value)?  musicToggled,TResult? Function( SfxToggled value)?  sfxToggled,TResult? Function( LanguageChanged value)?  languageChanged,TResult? Function( ThemeChanged value)?  themeChanged,TResult? Function( LifecycleChanged value)?  lifecycleChanged,TResult? Function( ClickSoundPlayed value)?  clickSoundPlayed,}){
final _that = this;
switch (_that) {
case Initiated() when initiated != null:
return initiated(_that);case MusicToggled() when musicToggled != null:
return musicToggled(_that);case SfxToggled() when sfxToggled != null:
return sfxToggled(_that);case LanguageChanged() when languageChanged != null:
return languageChanged(_that);case ThemeChanged() when themeChanged != null:
return themeChanged(_that);case LifecycleChanged() when lifecycleChanged != null:
return lifecycleChanged(_that);case ClickSoundPlayed() when clickSoundPlayed != null:
return clickSoundPlayed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initiated,TResult Function()?  musicToggled,TResult Function()?  sfxToggled,TResult Function( String languageCode)?  languageChanged,TResult Function( String appTheme)?  themeChanged,TResult Function( AppLifecycleState lifecycleState)?  lifecycleChanged,TResult Function()?  clickSoundPlayed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initiated() when initiated != null:
return initiated();case MusicToggled() when musicToggled != null:
return musicToggled();case SfxToggled() when sfxToggled != null:
return sfxToggled();case LanguageChanged() when languageChanged != null:
return languageChanged(_that.languageCode);case ThemeChanged() when themeChanged != null:
return themeChanged(_that.appTheme);case LifecycleChanged() when lifecycleChanged != null:
return lifecycleChanged(_that.lifecycleState);case ClickSoundPlayed() when clickSoundPlayed != null:
return clickSoundPlayed();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initiated,required TResult Function()  musicToggled,required TResult Function()  sfxToggled,required TResult Function( String languageCode)  languageChanged,required TResult Function( String appTheme)  themeChanged,required TResult Function( AppLifecycleState lifecycleState)  lifecycleChanged,required TResult Function()  clickSoundPlayed,}) {final _that = this;
switch (_that) {
case Initiated():
return initiated();case MusicToggled():
return musicToggled();case SfxToggled():
return sfxToggled();case LanguageChanged():
return languageChanged(_that.languageCode);case ThemeChanged():
return themeChanged(_that.appTheme);case LifecycleChanged():
return lifecycleChanged(_that.lifecycleState);case ClickSoundPlayed():
return clickSoundPlayed();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initiated,TResult? Function()?  musicToggled,TResult? Function()?  sfxToggled,TResult? Function( String languageCode)?  languageChanged,TResult? Function( String appTheme)?  themeChanged,TResult? Function( AppLifecycleState lifecycleState)?  lifecycleChanged,TResult? Function()?  clickSoundPlayed,}) {final _that = this;
switch (_that) {
case Initiated() when initiated != null:
return initiated();case MusicToggled() when musicToggled != null:
return musicToggled();case SfxToggled() when sfxToggled != null:
return sfxToggled();case LanguageChanged() when languageChanged != null:
return languageChanged(_that.languageCode);case ThemeChanged() when themeChanged != null:
return themeChanged(_that.appTheme);case LifecycleChanged() when lifecycleChanged != null:
return lifecycleChanged(_that.lifecycleState);case ClickSoundPlayed() when clickSoundPlayed != null:
return clickSoundPlayed();case _:
  return null;

}
}

}

/// @nodoc


class Initiated implements AppEvent {
  const Initiated();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is Initiated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppEvent.initiated()';
}


}




/// @nodoc


class MusicToggled implements AppEvent {
  const MusicToggled();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is MusicToggled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppEvent.musicToggled()';
}


}




/// @nodoc


class SfxToggled implements AppEvent {
  const SfxToggled();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is SfxToggled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppEvent.sfxToggled()';
}


}




/// @nodoc


class LanguageChanged implements AppEvent {
  const LanguageChanged(this.languageCode);
  

 final  String languageCode;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageChangedCopyWith<LanguageChanged> get copyWith => _$LanguageChangedCopyWithImpl<LanguageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageChanged&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,languageCode);
}

@override
String toString() {
    return 'AppEvent.languageChanged(languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $LanguageChangedCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory $LanguageChangedCopyWith(LanguageChanged value, $Res Function(LanguageChanged) _then) = _$LanguageChangedCopyWithImpl;
@useResult
$Res call({
 String languageCode
});




}
/// @nodoc
class _$LanguageChangedCopyWithImpl<$Res>
    implements $LanguageChangedCopyWith<$Res> {
  _$LanguageChangedCopyWithImpl(this._self, this._then);

  final LanguageChanged _self;
  final $Res Function(LanguageChanged) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? languageCode = null,}) {
  return _then(LanguageChanged(
null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ThemeChanged implements AppEvent {
  const ThemeChanged(this.appTheme);
  

 final  String appTheme;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeChangedCopyWith<ThemeChanged> get copyWith => _$ThemeChangedCopyWithImpl<ThemeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeChanged&&(identical(other.appTheme, appTheme) || other.appTheme == appTheme));
}


@override
int get hashCode {
    return Object.hash(runtimeType,appTheme);
}

@override
String toString() {
    return 'AppEvent.themeChanged(appTheme: $appTheme)';
}


}

/// @nodoc
abstract mixin class $ThemeChangedCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory $ThemeChangedCopyWith(ThemeChanged value, $Res Function(ThemeChanged) _then) = _$ThemeChangedCopyWithImpl;
@useResult
$Res call({
 String appTheme
});




}
/// @nodoc
class _$ThemeChangedCopyWithImpl<$Res>
    implements $ThemeChangedCopyWith<$Res> {
  _$ThemeChangedCopyWithImpl(this._self, this._then);

  final ThemeChanged _self;
  final $Res Function(ThemeChanged) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? appTheme = null,}) {
  return _then(ThemeChanged(
null == appTheme ? _self.appTheme : appTheme // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LifecycleChanged implements AppEvent {
  const LifecycleChanged(this.lifecycleState);
  

 final  AppLifecycleState lifecycleState;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LifecycleChangedCopyWith<LifecycleChanged> get copyWith => _$LifecycleChangedCopyWithImpl<LifecycleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is LifecycleChanged&&(identical(other.lifecycleState, lifecycleState) || other.lifecycleState == lifecycleState));
}


@override
int get hashCode {
    return Object.hash(runtimeType,lifecycleState);
}

@override
String toString() {
    return 'AppEvent.lifecycleChanged(lifecycleState: $lifecycleState)';
}


}

/// @nodoc
abstract mixin class $LifecycleChangedCopyWith<$Res> implements $AppEventCopyWith<$Res> {
  factory $LifecycleChangedCopyWith(LifecycleChanged value, $Res Function(LifecycleChanged) _then) = _$LifecycleChangedCopyWithImpl;
@useResult
$Res call({
 AppLifecycleState lifecycleState
});




}
/// @nodoc
class _$LifecycleChangedCopyWithImpl<$Res>
    implements $LifecycleChangedCopyWith<$Res> {
  _$LifecycleChangedCopyWithImpl(this._self, this._then);

  final LifecycleChanged _self;
  final $Res Function(LifecycleChanged) _then;

/// Create a copy of AppEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? lifecycleState = null,}) {
  return _then(LifecycleChanged(
null == lifecycleState ? _self.lifecycleState : lifecycleState // ignore: cast_nullable_to_non_nullable
as AppLifecycleState,
  ));
}


}

/// @nodoc


class ClickSoundPlayed implements AppEvent {
  const ClickSoundPlayed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ClickSoundPlayed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AppEvent.clickSoundPlayed()';
}


}




/// @nodoc
mixin _$AppState {

 bool get isMusicEnabled; bool get isSfxEnabled; String get languageCode; bool get isDarkMode; String get appTheme; bool get isInitialized;
/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStateCopyWith<AppState> get copyWith => _$AppStateCopyWithImpl<AppState>(this as AppState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AppState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppState&&(identical(other.isMusicEnabled, _this.isMusicEnabled) || other.isMusicEnabled == _this.isMusicEnabled)&&(identical(other.isSfxEnabled, _this.isSfxEnabled) || other.isSfxEnabled == _this.isSfxEnabled)&&(identical(other.languageCode, _this.languageCode) || other.languageCode == _this.languageCode)&&(identical(other.isDarkMode, _this.isDarkMode) || other.isDarkMode == _this.isDarkMode)&&(identical(other.appTheme, _this.appTheme) || other.appTheme == _this.appTheme)&&(identical(other.isInitialized, _this.isInitialized) || other.isInitialized == _this.isInitialized));
}


@override
int get hashCode {
  final _this = this as AppState;
  return Object.hash(runtimeType,_this.isMusicEnabled,_this.isSfxEnabled,_this.languageCode,_this.isDarkMode,_this.appTheme,_this.isInitialized);
}

@override
String toString() {
  final _this = this as AppState;
  return 'AppState(isMusicEnabled: ${_this.isMusicEnabled}, isSfxEnabled: ${_this.isSfxEnabled}, languageCode: ${_this.languageCode}, isDarkMode: ${_this.isDarkMode}, appTheme: ${_this.appTheme}, isInitialized: ${_this.isInitialized})';
}


}

/// @nodoc
abstract mixin class $AppStateCopyWith<$Res>  {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) _then) = _$AppStateCopyWithImpl;
@useResult
$Res call({
 bool isMusicEnabled, bool isSfxEnabled, String languageCode, bool isDarkMode, String appTheme, bool isInitialized
});




}
/// @nodoc
class _$AppStateCopyWithImpl<$Res>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._self, this._then);

  final AppState _self;
  final $Res Function(AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isMusicEnabled = null,Object? isSfxEnabled = null,Object? languageCode = null,Object? isDarkMode = null,Object? appTheme = null,Object? isInitialized = null,}) {
  return _then(AppState(
isMusicEnabled: null == isMusicEnabled ? _self.isMusicEnabled : isMusicEnabled // ignore: cast_nullable_to_non_nullable
as bool,isSfxEnabled: null == isSfxEnabled ? _self.isSfxEnabled : isSfxEnabled // ignore: cast_nullable_to_non_nullable
as bool,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,isDarkMode: null == isDarkMode ? _self.isDarkMode : isDarkMode // ignore: cast_nullable_to_non_nullable
as bool,appTheme: null == appTheme ? _self.appTheme : appTheme // ignore: cast_nullable_to_non_nullable
as String,isInitialized: null == isInitialized ? _self.isInitialized : isInitialized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppState].
extension AppStatePatterns on AppState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppState value)  $default,){
final _that = this;
switch (_that) {
case _AppState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppState value)?  $default,){
final _that = this;
switch (_that) {
case _AppState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isMusicEnabled,  bool isSfxEnabled,  String languageCode,  bool isDarkMode,  String appTheme,  bool isInitialized)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppState() when $default != null:
return $default(_that.isMusicEnabled,_that.isSfxEnabled,_that.languageCode,_that.isDarkMode,_that.appTheme,_that.isInitialized);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isMusicEnabled,  bool isSfxEnabled,  String languageCode,  bool isDarkMode,  String appTheme,  bool isInitialized)  $default,) {final _that = this;
switch (_that) {
case _AppState():
return $default(_that.isMusicEnabled,_that.isSfxEnabled,_that.languageCode,_that.isDarkMode,_that.appTheme,_that.isInitialized);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isMusicEnabled,  bool isSfxEnabled,  String languageCode,  bool isDarkMode,  String appTheme,  bool isInitialized)?  $default,) {final _that = this;
switch (_that) {
case _AppState() when $default != null:
return $default(_that.isMusicEnabled,_that.isSfxEnabled,_that.languageCode,_that.isDarkMode,_that.appTheme,_that.isInitialized);case _:
  return null;

}
}

}

/// @nodoc


class _AppState extends AppState {
  const _AppState({this.isMusicEnabled = true, this.isSfxEnabled = true, this.languageCode = 'vi', this.isDarkMode = false, this.appTheme = 'paper', this.isInitialized = false}): super._();
  

@override@JsonKey() final  bool isMusicEnabled;
@override@JsonKey() final  bool isSfxEnabled;
@override@JsonKey() final  String languageCode;
@override@JsonKey() final  bool isDarkMode;
@override@JsonKey() final  String appTheme;
@override@JsonKey() final  bool isInitialized;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStateCopyWith<_AppState> get copyWith => __$AppStateCopyWithImpl<_AppState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppState&&(identical(other.isMusicEnabled, isMusicEnabled) || other.isMusicEnabled == isMusicEnabled)&&(identical(other.isSfxEnabled, isSfxEnabled) || other.isSfxEnabled == isSfxEnabled)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.isDarkMode, isDarkMode) || other.isDarkMode == isDarkMode)&&(identical(other.appTheme, appTheme) || other.appTheme == appTheme)&&(identical(other.isInitialized, isInitialized) || other.isInitialized == isInitialized));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isMusicEnabled,isSfxEnabled,languageCode,isDarkMode,appTheme,isInitialized);
}

@override
String toString() {
    return 'AppState(isMusicEnabled: $isMusicEnabled, isSfxEnabled: $isSfxEnabled, languageCode: $languageCode, isDarkMode: $isDarkMode, appTheme: $appTheme, isInitialized: $isInitialized)';
}


}

/// @nodoc
abstract mixin class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) _then) = __$AppStateCopyWithImpl;
@override @useResult
$Res call({
 bool isMusicEnabled, bool isSfxEnabled, String languageCode, bool isDarkMode, String appTheme, bool isInitialized
});




}
/// @nodoc
class __$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(this._self, this._then);

  final _AppState _self;
  final $Res Function(_AppState) _then;

/// Create a copy of AppState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isMusicEnabled = null,Object? isSfxEnabled = null,Object? languageCode = null,Object? isDarkMode = null,Object? appTheme = null,Object? isInitialized = null,}) {
  return _then(_AppState(
isMusicEnabled: null == isMusicEnabled ? _self.isMusicEnabled : isMusicEnabled // ignore: cast_nullable_to_non_nullable
as bool,isSfxEnabled: null == isSfxEnabled ? _self.isSfxEnabled : isSfxEnabled // ignore: cast_nullable_to_non_nullable
as bool,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,isDarkMode: null == isDarkMode ? _self.isDarkMode : isDarkMode // ignore: cast_nullable_to_non_nullable
as bool,appTheme: null == appTheme ? _self.appTheme : appTheme // ignore: cast_nullable_to_non_nullable
as String,isInitialized: null == isInitialized ? _self.isInitialized : isInitialized // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
