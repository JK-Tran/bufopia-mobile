// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_practice_profile_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitPracticeProfileInput {

 String get uid; WordMemory get memory; String? get token;
/// Create a copy of SubmitPracticeProfileInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitPracticeProfileInputCopyWith<SubmitPracticeProfileInput> get copyWith => _$SubmitPracticeProfileInputCopyWithImpl<SubmitPracticeProfileInput>(this as SubmitPracticeProfileInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitPracticeProfileInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitPracticeProfileInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.memory, _this.memory) || other.memory == _this.memory)&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as SubmitPracticeProfileInput;
  return Object.hash(runtimeType,_this.uid,_this.memory,_this.token);
}

@override
String toString() {
  final _this = this as SubmitPracticeProfileInput;
  return 'SubmitPracticeProfileInput(uid: ${_this.uid}, memory: ${_this.memory}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $SubmitPracticeProfileInputCopyWith<$Res>  {
  factory $SubmitPracticeProfileInputCopyWith(SubmitPracticeProfileInput value, $Res Function(SubmitPracticeProfileInput) _then) = _$SubmitPracticeProfileInputCopyWithImpl;
@useResult
$Res call({
 String uid, WordMemory memory, String? token
});


$WordMemoryCopyWith<$Res> get memory;

}
/// @nodoc
class _$SubmitPracticeProfileInputCopyWithImpl<$Res>
    implements $SubmitPracticeProfileInputCopyWith<$Res> {
  _$SubmitPracticeProfileInputCopyWithImpl(this._self, this._then);

  final SubmitPracticeProfileInput _self;
  final $Res Function(SubmitPracticeProfileInput) _then;

/// Create a copy of SubmitPracticeProfileInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? memory = null,Object? token = freezed,}) {
  return _then(SubmitPracticeProfileInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,memory: null == memory ? _self.memory : memory // ignore: cast_nullable_to_non_nullable
as WordMemory,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SubmitPracticeProfileInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordMemoryCopyWith<$Res> get memory {
  
  return $WordMemoryCopyWith<$Res>(_self.memory, (value) {
    return _then(_self.copyWith(memory: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmitPracticeProfileInput].
extension SubmitPracticeProfileInputPatterns on SubmitPracticeProfileInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitPracticeProfileInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitPracticeProfileInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitPracticeProfileInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitPracticeProfileInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitPracticeProfileInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitPracticeProfileInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  WordMemory memory,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitPracticeProfileInput() when $default != null:
return $default(_that.uid,_that.memory,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  WordMemory memory,  String? token)  $default,) {final _that = this;
switch (_that) {
case _SubmitPracticeProfileInput():
return $default(_that.uid,_that.memory,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  WordMemory memory,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _SubmitPracticeProfileInput() when $default != null:
return $default(_that.uid,_that.memory,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitPracticeProfileInput extends SubmitPracticeProfileInput {
  const _SubmitPracticeProfileInput({required this.uid, required this.memory, this.token}): super._();
  

@override final  String uid;
@override final  WordMemory memory;
@override final  String? token;

/// Create a copy of SubmitPracticeProfileInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitPracticeProfileInputCopyWith<_SubmitPracticeProfileInput> get copyWith => __$SubmitPracticeProfileInputCopyWithImpl<_SubmitPracticeProfileInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPracticeProfileInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.memory, memory) || other.memory == memory)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,memory,token);
}

@override
String toString() {
    return 'SubmitPracticeProfileInput(uid: $uid, memory: $memory, token: $token)';
}


}

/// @nodoc
abstract mixin class _$SubmitPracticeProfileInputCopyWith<$Res> implements $SubmitPracticeProfileInputCopyWith<$Res> {
  factory _$SubmitPracticeProfileInputCopyWith(_SubmitPracticeProfileInput value, $Res Function(_SubmitPracticeProfileInput) _then) = __$SubmitPracticeProfileInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, WordMemory memory, String? token
});


@override $WordMemoryCopyWith<$Res> get memory;

}
/// @nodoc
class __$SubmitPracticeProfileInputCopyWithImpl<$Res>
    implements _$SubmitPracticeProfileInputCopyWith<$Res> {
  __$SubmitPracticeProfileInputCopyWithImpl(this._self, this._then);

  final _SubmitPracticeProfileInput _self;
  final $Res Function(_SubmitPracticeProfileInput) _then;

/// Create a copy of SubmitPracticeProfileInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? memory = null,Object? token = freezed,}) {
  return _then(_SubmitPracticeProfileInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,memory: null == memory ? _self.memory : memory // ignore: cast_nullable_to_non_nullable
as WordMemory,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SubmitPracticeProfileInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WordMemoryCopyWith<$Res> get memory {
  
  return $WordMemoryCopyWith<$Res>(_self.memory, (value) {
    return _then(_self.copyWith(memory: value));
  });
}
}

/// @nodoc
mixin _$SubmitPracticeProfileOutput {

 bool get success;
/// Create a copy of SubmitPracticeProfileOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitPracticeProfileOutputCopyWith<SubmitPracticeProfileOutput> get copyWith => _$SubmitPracticeProfileOutputCopyWithImpl<SubmitPracticeProfileOutput>(this as SubmitPracticeProfileOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitPracticeProfileOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitPracticeProfileOutput&&(identical(other.success, _this.success) || other.success == _this.success));
}


@override
int get hashCode {
  final _this = this as SubmitPracticeProfileOutput;
  return Object.hash(runtimeType,_this.success);
}

@override
String toString() {
  final _this = this as SubmitPracticeProfileOutput;
  return 'SubmitPracticeProfileOutput(success: ${_this.success})';
}


}

/// @nodoc
abstract mixin class $SubmitPracticeProfileOutputCopyWith<$Res>  {
  factory $SubmitPracticeProfileOutputCopyWith(SubmitPracticeProfileOutput value, $Res Function(SubmitPracticeProfileOutput) _then) = _$SubmitPracticeProfileOutputCopyWithImpl;
@useResult
$Res call({
 bool success
});




}
/// @nodoc
class _$SubmitPracticeProfileOutputCopyWithImpl<$Res>
    implements $SubmitPracticeProfileOutputCopyWith<$Res> {
  _$SubmitPracticeProfileOutputCopyWithImpl(this._self, this._then);

  final SubmitPracticeProfileOutput _self;
  final $Res Function(SubmitPracticeProfileOutput) _then;

/// Create a copy of SubmitPracticeProfileOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,}) {
  return _then(SubmitPracticeProfileOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitPracticeProfileOutput].
extension SubmitPracticeProfileOutputPatterns on SubmitPracticeProfileOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitPracticeProfileOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitPracticeProfileOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitPracticeProfileOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitPracticeProfileOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitPracticeProfileOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitPracticeProfileOutput() when $default != null:
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
case _SubmitPracticeProfileOutput() when $default != null:
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
case _SubmitPracticeProfileOutput():
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
case _SubmitPracticeProfileOutput() when $default != null:
return $default(_that.success);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitPracticeProfileOutput extends SubmitPracticeProfileOutput {
  const _SubmitPracticeProfileOutput({this.success = false}): super._();
  

@override@JsonKey() final  bool success;

/// Create a copy of SubmitPracticeProfileOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitPracticeProfileOutputCopyWith<_SubmitPracticeProfileOutput> get copyWith => __$SubmitPracticeProfileOutputCopyWithImpl<_SubmitPracticeProfileOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPracticeProfileOutput&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success);
}

@override
String toString() {
    return 'SubmitPracticeProfileOutput(success: $success)';
}


}

/// @nodoc
abstract mixin class _$SubmitPracticeProfileOutputCopyWith<$Res> implements $SubmitPracticeProfileOutputCopyWith<$Res> {
  factory _$SubmitPracticeProfileOutputCopyWith(_SubmitPracticeProfileOutput value, $Res Function(_SubmitPracticeProfileOutput) _then) = __$SubmitPracticeProfileOutputCopyWithImpl;
@override @useResult
$Res call({
 bool success
});




}
/// @nodoc
class __$SubmitPracticeProfileOutputCopyWithImpl<$Res>
    implements _$SubmitPracticeProfileOutputCopyWith<$Res> {
  __$SubmitPracticeProfileOutputCopyWithImpl(this._self, this._then);

  final _SubmitPracticeProfileOutput _self;
  final $Res Function(_SubmitPracticeProfileOutput) _then;

/// Create a copy of SubmitPracticeProfileOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,}) {
  return _then(_SubmitPracticeProfileOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
