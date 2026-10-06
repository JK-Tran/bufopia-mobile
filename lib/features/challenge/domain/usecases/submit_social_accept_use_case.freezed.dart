// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_social_accept_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitSocialAcceptInput {

 String get uid; String get invitationId;
/// Create a copy of SubmitSocialAcceptInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitSocialAcceptInputCopyWith<SubmitSocialAcceptInput> get copyWith => _$SubmitSocialAcceptInputCopyWithImpl<SubmitSocialAcceptInput>(this as SubmitSocialAcceptInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitSocialAcceptInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSocialAcceptInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.invitationId, _this.invitationId) || other.invitationId == _this.invitationId));
}


@override
int get hashCode {
  final _this = this as SubmitSocialAcceptInput;
  return Object.hash(runtimeType,_this.uid,_this.invitationId);
}

@override
String toString() {
  final _this = this as SubmitSocialAcceptInput;
  return 'SubmitSocialAcceptInput(uid: ${_this.uid}, invitationId: ${_this.invitationId})';
}


}

/// @nodoc
abstract mixin class $SubmitSocialAcceptInputCopyWith<$Res>  {
  factory $SubmitSocialAcceptInputCopyWith(SubmitSocialAcceptInput value, $Res Function(SubmitSocialAcceptInput) _then) = _$SubmitSocialAcceptInputCopyWithImpl;
@useResult
$Res call({
 String uid, String invitationId
});




}
/// @nodoc
class _$SubmitSocialAcceptInputCopyWithImpl<$Res>
    implements $SubmitSocialAcceptInputCopyWith<$Res> {
  _$SubmitSocialAcceptInputCopyWithImpl(this._self, this._then);

  final SubmitSocialAcceptInput _self;
  final $Res Function(SubmitSocialAcceptInput) _then;

/// Create a copy of SubmitSocialAcceptInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? invitationId = null,}) {
  return _then(SubmitSocialAcceptInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,invitationId: null == invitationId ? _self.invitationId : invitationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitSocialAcceptInput].
extension SubmitSocialAcceptInputPatterns on SubmitSocialAcceptInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitSocialAcceptInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitSocialAcceptInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitSocialAcceptInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitSocialAcceptInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitSocialAcceptInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitSocialAcceptInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String invitationId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitSocialAcceptInput() when $default != null:
return $default(_that.uid,_that.invitationId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String invitationId)  $default,) {final _that = this;
switch (_that) {
case _SubmitSocialAcceptInput():
return $default(_that.uid,_that.invitationId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String invitationId)?  $default,) {final _that = this;
switch (_that) {
case _SubmitSocialAcceptInput() when $default != null:
return $default(_that.uid,_that.invitationId);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitSocialAcceptInput extends SubmitSocialAcceptInput {
  const _SubmitSocialAcceptInput({required this.uid, required this.invitationId}): super._();
  

@override final  String uid;
@override final  String invitationId;

/// Create a copy of SubmitSocialAcceptInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitSocialAcceptInputCopyWith<_SubmitSocialAcceptInput> get copyWith => __$SubmitSocialAcceptInputCopyWithImpl<_SubmitSocialAcceptInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitSocialAcceptInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.invitationId, invitationId) || other.invitationId == invitationId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,invitationId);
}

@override
String toString() {
    return 'SubmitSocialAcceptInput(uid: $uid, invitationId: $invitationId)';
}


}

/// @nodoc
abstract mixin class _$SubmitSocialAcceptInputCopyWith<$Res> implements $SubmitSocialAcceptInputCopyWith<$Res> {
  factory _$SubmitSocialAcceptInputCopyWith(_SubmitSocialAcceptInput value, $Res Function(_SubmitSocialAcceptInput) _then) = __$SubmitSocialAcceptInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String invitationId
});




}
/// @nodoc
class __$SubmitSocialAcceptInputCopyWithImpl<$Res>
    implements _$SubmitSocialAcceptInputCopyWith<$Res> {
  __$SubmitSocialAcceptInputCopyWithImpl(this._self, this._then);

  final _SubmitSocialAcceptInput _self;
  final $Res Function(_SubmitSocialAcceptInput) _then;

/// Create a copy of SubmitSocialAcceptInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? invitationId = null,}) {
  return _then(_SubmitSocialAcceptInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,invitationId: null == invitationId ? _self.invitationId : invitationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SubmitSocialAcceptOutput {

 String? get roomCode;
/// Create a copy of SubmitSocialAcceptOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitSocialAcceptOutputCopyWith<SubmitSocialAcceptOutput> get copyWith => _$SubmitSocialAcceptOutputCopyWithImpl<SubmitSocialAcceptOutput>(this as SubmitSocialAcceptOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitSocialAcceptOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSocialAcceptOutput&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode));
}


@override
int get hashCode {
  final _this = this as SubmitSocialAcceptOutput;
  return Object.hash(runtimeType,_this.roomCode);
}

@override
String toString() {
  final _this = this as SubmitSocialAcceptOutput;
  return 'SubmitSocialAcceptOutput(roomCode: ${_this.roomCode})';
}


}

/// @nodoc
abstract mixin class $SubmitSocialAcceptOutputCopyWith<$Res>  {
  factory $SubmitSocialAcceptOutputCopyWith(SubmitSocialAcceptOutput value, $Res Function(SubmitSocialAcceptOutput) _then) = _$SubmitSocialAcceptOutputCopyWithImpl;
@useResult
$Res call({
 String? roomCode
});




}
/// @nodoc
class _$SubmitSocialAcceptOutputCopyWithImpl<$Res>
    implements $SubmitSocialAcceptOutputCopyWith<$Res> {
  _$SubmitSocialAcceptOutputCopyWithImpl(this._self, this._then);

  final SubmitSocialAcceptOutput _self;
  final $Res Function(SubmitSocialAcceptOutput) _then;

/// Create a copy of SubmitSocialAcceptOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roomCode = freezed,}) {
  return _then(SubmitSocialAcceptOutput(
roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitSocialAcceptOutput].
extension SubmitSocialAcceptOutputPatterns on SubmitSocialAcceptOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitSocialAcceptOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitSocialAcceptOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitSocialAcceptOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitSocialAcceptOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitSocialAcceptOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitSocialAcceptOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? roomCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitSocialAcceptOutput() when $default != null:
return $default(_that.roomCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? roomCode)  $default,) {final _that = this;
switch (_that) {
case _SubmitSocialAcceptOutput():
return $default(_that.roomCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? roomCode)?  $default,) {final _that = this;
switch (_that) {
case _SubmitSocialAcceptOutput() when $default != null:
return $default(_that.roomCode);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitSocialAcceptOutput extends SubmitSocialAcceptOutput {
  const _SubmitSocialAcceptOutput({this.roomCode}): super._();
  

@override final  String? roomCode;

/// Create a copy of SubmitSocialAcceptOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitSocialAcceptOutputCopyWith<_SubmitSocialAcceptOutput> get copyWith => __$SubmitSocialAcceptOutputCopyWithImpl<_SubmitSocialAcceptOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitSocialAcceptOutput&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,roomCode);
}

@override
String toString() {
    return 'SubmitSocialAcceptOutput(roomCode: $roomCode)';
}


}

/// @nodoc
abstract mixin class _$SubmitSocialAcceptOutputCopyWith<$Res> implements $SubmitSocialAcceptOutputCopyWith<$Res> {
  factory _$SubmitSocialAcceptOutputCopyWith(_SubmitSocialAcceptOutput value, $Res Function(_SubmitSocialAcceptOutput) _then) = __$SubmitSocialAcceptOutputCopyWithImpl;
@override @useResult
$Res call({
 String? roomCode
});




}
/// @nodoc
class __$SubmitSocialAcceptOutputCopyWithImpl<$Res>
    implements _$SubmitSocialAcceptOutputCopyWith<$Res> {
  __$SubmitSocialAcceptOutputCopyWithImpl(this._self, this._then);

  final _SubmitSocialAcceptOutput _self;
  final $Res Function(_SubmitSocialAcceptOutput) _then;

/// Create a copy of SubmitSocialAcceptOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roomCode = freezed,}) {
  return _then(_SubmitSocialAcceptOutput(
roomCode: freezed == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
