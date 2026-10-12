// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_start_session_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitStartSessionInput {

 String get uid; String get language;
/// Create a copy of SubmitStartSessionInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitStartSessionInputCopyWith<SubmitStartSessionInput> get copyWith => _$SubmitStartSessionInputCopyWithImpl<SubmitStartSessionInput>(this as SubmitStartSessionInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitStartSessionInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitStartSessionInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.language, _this.language) || other.language == _this.language));
}


@override
int get hashCode {
  final _this = this as SubmitStartSessionInput;
  return Object.hash(runtimeType,_this.uid,_this.language);
}

@override
String toString() {
  final _this = this as SubmitStartSessionInput;
  return 'SubmitStartSessionInput(uid: ${_this.uid}, language: ${_this.language})';
}


}

/// @nodoc
abstract mixin class $SubmitStartSessionInputCopyWith<$Res>  {
  factory $SubmitStartSessionInputCopyWith(SubmitStartSessionInput value, $Res Function(SubmitStartSessionInput) _then) = _$SubmitStartSessionInputCopyWithImpl;
@useResult
$Res call({
 String uid, String language
});




}
/// @nodoc
class _$SubmitStartSessionInputCopyWithImpl<$Res>
    implements $SubmitStartSessionInputCopyWith<$Res> {
  _$SubmitStartSessionInputCopyWithImpl(this._self, this._then);

  final SubmitStartSessionInput _self;
  final $Res Function(SubmitStartSessionInput) _then;

/// Create a copy of SubmitStartSessionInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? language = null,}) {
  return _then(SubmitStartSessionInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitStartSessionInput].
extension SubmitStartSessionInputPatterns on SubmitStartSessionInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitStartSessionInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitStartSessionInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitStartSessionInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitStartSessionInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitStartSessionInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitStartSessionInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitStartSessionInput() when $default != null:
return $default(_that.uid,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String language)  $default,) {final _that = this;
switch (_that) {
case _SubmitStartSessionInput():
return $default(_that.uid,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String language)?  $default,) {final _that = this;
switch (_that) {
case _SubmitStartSessionInput() when $default != null:
return $default(_that.uid,_that.language);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitStartSessionInput extends SubmitStartSessionInput {
  const _SubmitStartSessionInput({required this.uid, this.language = 'en'}): super._();
  

@override final  String uid;
@override@JsonKey() final  String language;

/// Create a copy of SubmitStartSessionInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitStartSessionInputCopyWith<_SubmitStartSessionInput> get copyWith => __$SubmitStartSessionInputCopyWithImpl<_SubmitStartSessionInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitStartSessionInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,language);
}

@override
String toString() {
    return 'SubmitStartSessionInput(uid: $uid, language: $language)';
}


}

/// @nodoc
abstract mixin class _$SubmitStartSessionInputCopyWith<$Res> implements $SubmitStartSessionInputCopyWith<$Res> {
  factory _$SubmitStartSessionInputCopyWith(_SubmitStartSessionInput value, $Res Function(_SubmitStartSessionInput) _then) = __$SubmitStartSessionInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String language
});




}
/// @nodoc
class __$SubmitStartSessionInputCopyWithImpl<$Res>
    implements _$SubmitStartSessionInputCopyWith<$Res> {
  __$SubmitStartSessionInputCopyWithImpl(this._self, this._then);

  final _SubmitStartSessionInput _self;
  final $Res Function(_SubmitStartSessionInput) _then;

/// Create a copy of SubmitStartSessionInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? language = null,}) {
  return _then(_SubmitStartSessionInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SubmitStartSessionOutput {

 Session get session;
/// Create a copy of SubmitStartSessionOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitStartSessionOutputCopyWith<SubmitStartSessionOutput> get copyWith => _$SubmitStartSessionOutputCopyWithImpl<SubmitStartSessionOutput>(this as SubmitStartSessionOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitStartSessionOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitStartSessionOutput&&(identical(other.session, _this.session) || other.session == _this.session));
}


@override
int get hashCode {
  final _this = this as SubmitStartSessionOutput;
  return Object.hash(runtimeType,_this.session);
}

@override
String toString() {
  final _this = this as SubmitStartSessionOutput;
  return 'SubmitStartSessionOutput(session: ${_this.session})';
}


}

/// @nodoc
abstract mixin class $SubmitStartSessionOutputCopyWith<$Res>  {
  factory $SubmitStartSessionOutputCopyWith(SubmitStartSessionOutput value, $Res Function(SubmitStartSessionOutput) _then) = _$SubmitStartSessionOutputCopyWithImpl;
@useResult
$Res call({
 Session session
});


$SessionCopyWith<$Res> get session;

}
/// @nodoc
class _$SubmitStartSessionOutputCopyWithImpl<$Res>
    implements $SubmitStartSessionOutputCopyWith<$Res> {
  _$SubmitStartSessionOutputCopyWithImpl(this._self, this._then);

  final SubmitStartSessionOutput _self;
  final $Res Function(SubmitStartSessionOutput) _then;

/// Create a copy of SubmitStartSessionOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? session = null,}) {
  return _then(SubmitStartSessionOutput(
null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as Session,
  ));
}
/// Create a copy of SubmitStartSessionOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionCopyWith<$Res> get session {
  
  return $SessionCopyWith<$Res>(_self.session, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmitStartSessionOutput].
extension SubmitStartSessionOutputPatterns on SubmitStartSessionOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitStartSessionOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitStartSessionOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitStartSessionOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitStartSessionOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitStartSessionOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitStartSessionOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Session session)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitStartSessionOutput() when $default != null:
return $default(_that.session);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Session session)  $default,) {final _that = this;
switch (_that) {
case _SubmitStartSessionOutput():
return $default(_that.session);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Session session)?  $default,) {final _that = this;
switch (_that) {
case _SubmitStartSessionOutput() when $default != null:
return $default(_that.session);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitStartSessionOutput extends SubmitStartSessionOutput {
  const _SubmitStartSessionOutput(this.session): super._();
  

@override final  Session session;

/// Create a copy of SubmitStartSessionOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitStartSessionOutputCopyWith<_SubmitStartSessionOutput> get copyWith => __$SubmitStartSessionOutputCopyWithImpl<_SubmitStartSessionOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitStartSessionOutput&&(identical(other.session, session) || other.session == session));
}


@override
int get hashCode {
    return Object.hash(runtimeType,session);
}

@override
String toString() {
    return 'SubmitStartSessionOutput(session: $session)';
}


}

/// @nodoc
abstract mixin class _$SubmitStartSessionOutputCopyWith<$Res> implements $SubmitStartSessionOutputCopyWith<$Res> {
  factory _$SubmitStartSessionOutputCopyWith(_SubmitStartSessionOutput value, $Res Function(_SubmitStartSessionOutput) _then) = __$SubmitStartSessionOutputCopyWithImpl;
@override @useResult
$Res call({
 Session session
});


@override $SessionCopyWith<$Res> get session;

}
/// @nodoc
class __$SubmitStartSessionOutputCopyWithImpl<$Res>
    implements _$SubmitStartSessionOutputCopyWith<$Res> {
  __$SubmitStartSessionOutputCopyWithImpl(this._self, this._then);

  final _SubmitStartSessionOutput _self;
  final $Res Function(_SubmitStartSessionOutput) _then;

/// Create a copy of SubmitStartSessionOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? session = null,}) {
  return _then(_SubmitStartSessionOutput(
null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as Session,
  ));
}

/// Create a copy of SubmitStartSessionOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionCopyWith<$Res> get session {
  
  return $SessionCopyWith<$Res>(_self.session, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}

// dart format on
