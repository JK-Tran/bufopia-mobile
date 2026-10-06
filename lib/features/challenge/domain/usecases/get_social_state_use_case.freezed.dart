// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_social_state_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetSocialStateInput {

 String get uid;
/// Create a copy of GetSocialStateInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSocialStateInputCopyWith<GetSocialStateInput> get copyWith => _$GetSocialStateInputCopyWithImpl<GetSocialStateInput>(this as GetSocialStateInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetSocialStateInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSocialStateInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid));
}


@override
int get hashCode {
  final _this = this as GetSocialStateInput;
  return Object.hash(runtimeType,_this.uid);
}

@override
String toString() {
  final _this = this as GetSocialStateInput;
  return 'GetSocialStateInput(uid: ${_this.uid})';
}


}

/// @nodoc
abstract mixin class $GetSocialStateInputCopyWith<$Res>  {
  factory $GetSocialStateInputCopyWith(GetSocialStateInput value, $Res Function(GetSocialStateInput) _then) = _$GetSocialStateInputCopyWithImpl;
@useResult
$Res call({
 String uid
});




}
/// @nodoc
class _$GetSocialStateInputCopyWithImpl<$Res>
    implements $GetSocialStateInputCopyWith<$Res> {
  _$GetSocialStateInputCopyWithImpl(this._self, this._then);

  final GetSocialStateInput _self;
  final $Res Function(GetSocialStateInput) _then;

/// Create a copy of GetSocialStateInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,}) {
  return _then(GetSocialStateInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetSocialStateInput].
extension GetSocialStateInputPatterns on GetSocialStateInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSocialStateInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSocialStateInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSocialStateInput value)  $default,){
final _that = this;
switch (_that) {
case _GetSocialStateInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSocialStateInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetSocialStateInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSocialStateInput() when $default != null:
return $default(_that.uid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid)  $default,) {final _that = this;
switch (_that) {
case _GetSocialStateInput():
return $default(_that.uid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid)?  $default,) {final _that = this;
switch (_that) {
case _GetSocialStateInput() when $default != null:
return $default(_that.uid);case _:
  return null;

}
}

}

/// @nodoc


class _GetSocialStateInput extends GetSocialStateInput {
  const _GetSocialStateInput({required this.uid}): super._();
  

@override final  String uid;

/// Create a copy of GetSocialStateInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSocialStateInputCopyWith<_GetSocialStateInput> get copyWith => __$GetSocialStateInputCopyWithImpl<_GetSocialStateInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSocialStateInput&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid);
}

@override
String toString() {
    return 'GetSocialStateInput(uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$GetSocialStateInputCopyWith<$Res> implements $GetSocialStateInputCopyWith<$Res> {
  factory _$GetSocialStateInputCopyWith(_GetSocialStateInput value, $Res Function(_GetSocialStateInput) _then) = __$GetSocialStateInputCopyWithImpl;
@override @useResult
$Res call({
 String uid
});




}
/// @nodoc
class __$GetSocialStateInputCopyWithImpl<$Res>
    implements _$GetSocialStateInputCopyWith<$Res> {
  __$GetSocialStateInputCopyWithImpl(this._self, this._then);

  final _GetSocialStateInput _self;
  final $Res Function(_GetSocialStateInput) _then;

/// Create a copy of GetSocialStateInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,}) {
  return _then(_GetSocialStateInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GetSocialStateOutput {

 SocialState get socialState;
/// Create a copy of GetSocialStateOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetSocialStateOutputCopyWith<GetSocialStateOutput> get copyWith => _$GetSocialStateOutputCopyWithImpl<GetSocialStateOutput>(this as GetSocialStateOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetSocialStateOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSocialStateOutput&&(identical(other.socialState, _this.socialState) || other.socialState == _this.socialState));
}


@override
int get hashCode {
  final _this = this as GetSocialStateOutput;
  return Object.hash(runtimeType,_this.socialState);
}

@override
String toString() {
  final _this = this as GetSocialStateOutput;
  return 'GetSocialStateOutput(socialState: ${_this.socialState})';
}


}

/// @nodoc
abstract mixin class $GetSocialStateOutputCopyWith<$Res>  {
  factory $GetSocialStateOutputCopyWith(GetSocialStateOutput value, $Res Function(GetSocialStateOutput) _then) = _$GetSocialStateOutputCopyWithImpl;
@useResult
$Res call({
 SocialState socialState
});


$SocialStateCopyWith<$Res> get socialState;

}
/// @nodoc
class _$GetSocialStateOutputCopyWithImpl<$Res>
    implements $GetSocialStateOutputCopyWith<$Res> {
  _$GetSocialStateOutputCopyWithImpl(this._self, this._then);

  final GetSocialStateOutput _self;
  final $Res Function(GetSocialStateOutput) _then;

/// Create a copy of GetSocialStateOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? socialState = null,}) {
  return _then(GetSocialStateOutput(
socialState: null == socialState ? _self.socialState : socialState // ignore: cast_nullable_to_non_nullable
as SocialState,
  ));
}
/// Create a copy of GetSocialStateOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialStateCopyWith<$Res> get socialState {
  
  return $SocialStateCopyWith<$Res>(_self.socialState, (value) {
    return _then(_self.copyWith(socialState: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetSocialStateOutput].
extension GetSocialStateOutputPatterns on GetSocialStateOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetSocialStateOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSocialStateOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetSocialStateOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetSocialStateOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetSocialStateOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetSocialStateOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SocialState socialState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSocialStateOutput() when $default != null:
return $default(_that.socialState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SocialState socialState)  $default,) {final _that = this;
switch (_that) {
case _GetSocialStateOutput():
return $default(_that.socialState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SocialState socialState)?  $default,) {final _that = this;
switch (_that) {
case _GetSocialStateOutput() when $default != null:
return $default(_that.socialState);case _:
  return null;

}
}

}

/// @nodoc


class _GetSocialStateOutput extends GetSocialStateOutput {
  const _GetSocialStateOutput({required this.socialState}): super._();
  

@override final  SocialState socialState;

/// Create a copy of GetSocialStateOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetSocialStateOutputCopyWith<_GetSocialStateOutput> get copyWith => __$GetSocialStateOutputCopyWithImpl<_GetSocialStateOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSocialStateOutput&&(identical(other.socialState, socialState) || other.socialState == socialState));
}


@override
int get hashCode {
    return Object.hash(runtimeType,socialState);
}

@override
String toString() {
    return 'GetSocialStateOutput(socialState: $socialState)';
}


}

/// @nodoc
abstract mixin class _$GetSocialStateOutputCopyWith<$Res> implements $GetSocialStateOutputCopyWith<$Res> {
  factory _$GetSocialStateOutputCopyWith(_GetSocialStateOutput value, $Res Function(_GetSocialStateOutput) _then) = __$GetSocialStateOutputCopyWithImpl;
@override @useResult
$Res call({
 SocialState socialState
});


@override $SocialStateCopyWith<$Res> get socialState;

}
/// @nodoc
class __$GetSocialStateOutputCopyWithImpl<$Res>
    implements _$GetSocialStateOutputCopyWith<$Res> {
  __$GetSocialStateOutputCopyWithImpl(this._self, this._then);

  final _GetSocialStateOutput _self;
  final $Res Function(_GetSocialStateOutput) _then;

/// Create a copy of GetSocialStateOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? socialState = null,}) {
  return _then(_GetSocialStateOutput(
socialState: null == socialState ? _self.socialState : socialState // ignore: cast_nullable_to_non_nullable
as SocialState,
  ));
}

/// Create a copy of GetSocialStateOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocialStateCopyWith<$Res> get socialState {
  
  return $SocialStateCopyWith<$Res>(_self.socialState, (value) {
    return _then(_self.copyWith(socialState: value));
  });
}
}

// dart format on
