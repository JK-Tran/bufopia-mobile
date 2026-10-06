// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_social_invite_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitSocialInviteInput {

 String get uid; String get targetUid; String get roomCode;
/// Create a copy of SubmitSocialInviteInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitSocialInviteInputCopyWith<SubmitSocialInviteInput> get copyWith => _$SubmitSocialInviteInputCopyWithImpl<SubmitSocialInviteInput>(this as SubmitSocialInviteInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitSocialInviteInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSocialInviteInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.targetUid, _this.targetUid) || other.targetUid == _this.targetUid)&&(identical(other.roomCode, _this.roomCode) || other.roomCode == _this.roomCode));
}


@override
int get hashCode {
  final _this = this as SubmitSocialInviteInput;
  return Object.hash(runtimeType,_this.uid,_this.targetUid,_this.roomCode);
}

@override
String toString() {
  final _this = this as SubmitSocialInviteInput;
  return 'SubmitSocialInviteInput(uid: ${_this.uid}, targetUid: ${_this.targetUid}, roomCode: ${_this.roomCode})';
}


}

/// @nodoc
abstract mixin class $SubmitSocialInviteInputCopyWith<$Res>  {
  factory $SubmitSocialInviteInputCopyWith(SubmitSocialInviteInput value, $Res Function(SubmitSocialInviteInput) _then) = _$SubmitSocialInviteInputCopyWithImpl;
@useResult
$Res call({
 String uid, String targetUid, String roomCode
});




}
/// @nodoc
class _$SubmitSocialInviteInputCopyWithImpl<$Res>
    implements $SubmitSocialInviteInputCopyWith<$Res> {
  _$SubmitSocialInviteInputCopyWithImpl(this._self, this._then);

  final SubmitSocialInviteInput _self;
  final $Res Function(SubmitSocialInviteInput) _then;

/// Create a copy of SubmitSocialInviteInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? targetUid = null,Object? roomCode = null,}) {
  return _then(SubmitSocialInviteInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,targetUid: null == targetUid ? _self.targetUid : targetUid // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitSocialInviteInput].
extension SubmitSocialInviteInputPatterns on SubmitSocialInviteInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitSocialInviteInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitSocialInviteInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitSocialInviteInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitSocialInviteInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitSocialInviteInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitSocialInviteInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String targetUid,  String roomCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitSocialInviteInput() when $default != null:
return $default(_that.uid,_that.targetUid,_that.roomCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String targetUid,  String roomCode)  $default,) {final _that = this;
switch (_that) {
case _SubmitSocialInviteInput():
return $default(_that.uid,_that.targetUid,_that.roomCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String targetUid,  String roomCode)?  $default,) {final _that = this;
switch (_that) {
case _SubmitSocialInviteInput() when $default != null:
return $default(_that.uid,_that.targetUid,_that.roomCode);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitSocialInviteInput extends SubmitSocialInviteInput {
  const _SubmitSocialInviteInput({required this.uid, required this.targetUid, required this.roomCode}): super._();
  

@override final  String uid;
@override final  String targetUid;
@override final  String roomCode;

/// Create a copy of SubmitSocialInviteInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitSocialInviteInputCopyWith<_SubmitSocialInviteInput> get copyWith => __$SubmitSocialInviteInputCopyWithImpl<_SubmitSocialInviteInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitSocialInviteInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.targetUid, targetUid) || other.targetUid == targetUid)&&(identical(other.roomCode, roomCode) || other.roomCode == roomCode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,targetUid,roomCode);
}

@override
String toString() {
    return 'SubmitSocialInviteInput(uid: $uid, targetUid: $targetUid, roomCode: $roomCode)';
}


}

/// @nodoc
abstract mixin class _$SubmitSocialInviteInputCopyWith<$Res> implements $SubmitSocialInviteInputCopyWith<$Res> {
  factory _$SubmitSocialInviteInputCopyWith(_SubmitSocialInviteInput value, $Res Function(_SubmitSocialInviteInput) _then) = __$SubmitSocialInviteInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String targetUid, String roomCode
});




}
/// @nodoc
class __$SubmitSocialInviteInputCopyWithImpl<$Res>
    implements _$SubmitSocialInviteInputCopyWith<$Res> {
  __$SubmitSocialInviteInputCopyWithImpl(this._self, this._then);

  final _SubmitSocialInviteInput _self;
  final $Res Function(_SubmitSocialInviteInput) _then;

/// Create a copy of SubmitSocialInviteInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? targetUid = null,Object? roomCode = null,}) {
  return _then(_SubmitSocialInviteInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,targetUid: null == targetUid ? _self.targetUid : targetUid // ignore: cast_nullable_to_non_nullable
as String,roomCode: null == roomCode ? _self.roomCode : roomCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SubmitSocialInviteOutput {

 bool get success;
/// Create a copy of SubmitSocialInviteOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitSocialInviteOutputCopyWith<SubmitSocialInviteOutput> get copyWith => _$SubmitSocialInviteOutputCopyWithImpl<SubmitSocialInviteOutput>(this as SubmitSocialInviteOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitSocialInviteOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSocialInviteOutput&&(identical(other.success, _this.success) || other.success == _this.success));
}


@override
int get hashCode {
  final _this = this as SubmitSocialInviteOutput;
  return Object.hash(runtimeType,_this.success);
}

@override
String toString() {
  final _this = this as SubmitSocialInviteOutput;
  return 'SubmitSocialInviteOutput(success: ${_this.success})';
}


}

/// @nodoc
abstract mixin class $SubmitSocialInviteOutputCopyWith<$Res>  {
  factory $SubmitSocialInviteOutputCopyWith(SubmitSocialInviteOutput value, $Res Function(SubmitSocialInviteOutput) _then) = _$SubmitSocialInviteOutputCopyWithImpl;
@useResult
$Res call({
 bool success
});




}
/// @nodoc
class _$SubmitSocialInviteOutputCopyWithImpl<$Res>
    implements $SubmitSocialInviteOutputCopyWith<$Res> {
  _$SubmitSocialInviteOutputCopyWithImpl(this._self, this._then);

  final SubmitSocialInviteOutput _self;
  final $Res Function(SubmitSocialInviteOutput) _then;

/// Create a copy of SubmitSocialInviteOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,}) {
  return _then(SubmitSocialInviteOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitSocialInviteOutput].
extension SubmitSocialInviteOutputPatterns on SubmitSocialInviteOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitSocialInviteOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitSocialInviteOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitSocialInviteOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitSocialInviteOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitSocialInviteOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitSocialInviteOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitSocialInviteOutput() when $default != null:
return $default(_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success)  $default,) {final _that = this;
switch (_that) {
case _SubmitSocialInviteOutput():
return $default(_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success)?  $default,) {final _that = this;
switch (_that) {
case _SubmitSocialInviteOutput() when $default != null:
return $default(_that.success);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitSocialInviteOutput extends SubmitSocialInviteOutput {
  const _SubmitSocialInviteOutput({this.success = true}): super._();
  

@override@JsonKey() final  bool success;

/// Create a copy of SubmitSocialInviteOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitSocialInviteOutputCopyWith<_SubmitSocialInviteOutput> get copyWith => __$SubmitSocialInviteOutputCopyWithImpl<_SubmitSocialInviteOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitSocialInviteOutput&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success);
}

@override
String toString() {
    return 'SubmitSocialInviteOutput(success: $success)';
}


}

/// @nodoc
abstract mixin class _$SubmitSocialInviteOutputCopyWith<$Res> implements $SubmitSocialInviteOutputCopyWith<$Res> {
  factory _$SubmitSocialInviteOutputCopyWith(_SubmitSocialInviteOutput value, $Res Function(_SubmitSocialInviteOutput) _then) = __$SubmitSocialInviteOutputCopyWithImpl;
@override @useResult
$Res call({
 bool success
});




}
/// @nodoc
class __$SubmitSocialInviteOutputCopyWithImpl<$Res>
    implements _$SubmitSocialInviteOutputCopyWith<$Res> {
  __$SubmitSocialInviteOutputCopyWithImpl(this._self, this._then);

  final _SubmitSocialInviteOutput _self;
  final $Res Function(_SubmitSocialInviteOutput) _then;

/// Create a copy of SubmitSocialInviteOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,}) {
  return _then(_SubmitSocialInviteOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
