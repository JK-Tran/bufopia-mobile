// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_social_dismiss_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteSocialDismissInput {

 String get uid; String get invitationId;
/// Create a copy of DeleteSocialDismissInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteSocialDismissInputCopyWith<DeleteSocialDismissInput> get copyWith => _$DeleteSocialDismissInputCopyWithImpl<DeleteSocialDismissInput>(this as DeleteSocialDismissInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DeleteSocialDismissInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteSocialDismissInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.invitationId, _this.invitationId) || other.invitationId == _this.invitationId));
}


@override
int get hashCode {
  final _this = this as DeleteSocialDismissInput;
  return Object.hash(runtimeType,_this.uid,_this.invitationId);
}

@override
String toString() {
  final _this = this as DeleteSocialDismissInput;
  return 'DeleteSocialDismissInput(uid: ${_this.uid}, invitationId: ${_this.invitationId})';
}


}

/// @nodoc
abstract mixin class $DeleteSocialDismissInputCopyWith<$Res>  {
  factory $DeleteSocialDismissInputCopyWith(DeleteSocialDismissInput value, $Res Function(DeleteSocialDismissInput) _then) = _$DeleteSocialDismissInputCopyWithImpl;
@useResult
$Res call({
 String uid, String invitationId
});




}
/// @nodoc
class _$DeleteSocialDismissInputCopyWithImpl<$Res>
    implements $DeleteSocialDismissInputCopyWith<$Res> {
  _$DeleteSocialDismissInputCopyWithImpl(this._self, this._then);

  final DeleteSocialDismissInput _self;
  final $Res Function(DeleteSocialDismissInput) _then;

/// Create a copy of DeleteSocialDismissInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? invitationId = null,}) {
  return _then(DeleteSocialDismissInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,invitationId: null == invitationId ? _self.invitationId : invitationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteSocialDismissInput].
extension DeleteSocialDismissInputPatterns on DeleteSocialDismissInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteSocialDismissInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteSocialDismissInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteSocialDismissInput value)  $default,){
final _that = this;
switch (_that) {
case _DeleteSocialDismissInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteSocialDismissInput value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteSocialDismissInput() when $default != null:
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
case _DeleteSocialDismissInput() when $default != null:
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
case _DeleteSocialDismissInput():
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
case _DeleteSocialDismissInput() when $default != null:
return $default(_that.uid,_that.invitationId);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteSocialDismissInput extends DeleteSocialDismissInput {
  const _DeleteSocialDismissInput({required this.uid, required this.invitationId}): super._();
  

@override final  String uid;
@override final  String invitationId;

/// Create a copy of DeleteSocialDismissInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteSocialDismissInputCopyWith<_DeleteSocialDismissInput> get copyWith => __$DeleteSocialDismissInputCopyWithImpl<_DeleteSocialDismissInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteSocialDismissInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.invitationId, invitationId) || other.invitationId == invitationId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,invitationId);
}

@override
String toString() {
    return 'DeleteSocialDismissInput(uid: $uid, invitationId: $invitationId)';
}


}

/// @nodoc
abstract mixin class _$DeleteSocialDismissInputCopyWith<$Res> implements $DeleteSocialDismissInputCopyWith<$Res> {
  factory _$DeleteSocialDismissInputCopyWith(_DeleteSocialDismissInput value, $Res Function(_DeleteSocialDismissInput) _then) = __$DeleteSocialDismissInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String invitationId
});




}
/// @nodoc
class __$DeleteSocialDismissInputCopyWithImpl<$Res>
    implements _$DeleteSocialDismissInputCopyWith<$Res> {
  __$DeleteSocialDismissInputCopyWithImpl(this._self, this._then);

  final _DeleteSocialDismissInput _self;
  final $Res Function(_DeleteSocialDismissInput) _then;

/// Create a copy of DeleteSocialDismissInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? invitationId = null,}) {
  return _then(_DeleteSocialDismissInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,invitationId: null == invitationId ? _self.invitationId : invitationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$DeleteSocialDismissOutput {

 bool get success;
/// Create a copy of DeleteSocialDismissOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteSocialDismissOutputCopyWith<DeleteSocialDismissOutput> get copyWith => _$DeleteSocialDismissOutputCopyWithImpl<DeleteSocialDismissOutput>(this as DeleteSocialDismissOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DeleteSocialDismissOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteSocialDismissOutput&&(identical(other.success, _this.success) || other.success == _this.success));
}


@override
int get hashCode {
  final _this = this as DeleteSocialDismissOutput;
  return Object.hash(runtimeType,_this.success);
}

@override
String toString() {
  final _this = this as DeleteSocialDismissOutput;
  return 'DeleteSocialDismissOutput(success: ${_this.success})';
}


}

/// @nodoc
abstract mixin class $DeleteSocialDismissOutputCopyWith<$Res>  {
  factory $DeleteSocialDismissOutputCopyWith(DeleteSocialDismissOutput value, $Res Function(DeleteSocialDismissOutput) _then) = _$DeleteSocialDismissOutputCopyWithImpl;
@useResult
$Res call({
 bool success
});




}
/// @nodoc
class _$DeleteSocialDismissOutputCopyWithImpl<$Res>
    implements $DeleteSocialDismissOutputCopyWith<$Res> {
  _$DeleteSocialDismissOutputCopyWithImpl(this._self, this._then);

  final DeleteSocialDismissOutput _self;
  final $Res Function(DeleteSocialDismissOutput) _then;

/// Create a copy of DeleteSocialDismissOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,}) {
  return _then(DeleteSocialDismissOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteSocialDismissOutput].
extension DeleteSocialDismissOutputPatterns on DeleteSocialDismissOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteSocialDismissOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteSocialDismissOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteSocialDismissOutput value)  $default,){
final _that = this;
switch (_that) {
case _DeleteSocialDismissOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteSocialDismissOutput value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteSocialDismissOutput() when $default != null:
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
case _DeleteSocialDismissOutput() when $default != null:
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
case _DeleteSocialDismissOutput():
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
case _DeleteSocialDismissOutput() when $default != null:
return $default(_that.success);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteSocialDismissOutput extends DeleteSocialDismissOutput {
  const _DeleteSocialDismissOutput({this.success = true}): super._();
  

@override@JsonKey() final  bool success;

/// Create a copy of DeleteSocialDismissOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteSocialDismissOutputCopyWith<_DeleteSocialDismissOutput> get copyWith => __$DeleteSocialDismissOutputCopyWithImpl<_DeleteSocialDismissOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteSocialDismissOutput&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success);
}

@override
String toString() {
    return 'DeleteSocialDismissOutput(success: $success)';
}


}

/// @nodoc
abstract mixin class _$DeleteSocialDismissOutputCopyWith<$Res> implements $DeleteSocialDismissOutputCopyWith<$Res> {
  factory _$DeleteSocialDismissOutputCopyWith(_DeleteSocialDismissOutput value, $Res Function(_DeleteSocialDismissOutput) _then) = __$DeleteSocialDismissOutputCopyWithImpl;
@override @useResult
$Res call({
 bool success
});




}
/// @nodoc
class __$DeleteSocialDismissOutputCopyWithImpl<$Res>
    implements _$DeleteSocialDismissOutputCopyWith<$Res> {
  __$DeleteSocialDismissOutputCopyWithImpl(this._self, this._then);

  final _DeleteSocialDismissOutput _self;
  final $Res Function(_DeleteSocialDismissOutput) _then;

/// Create a copy of DeleteSocialDismissOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,}) {
  return _then(_DeleteSocialDismissOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
