// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_guess_match_record_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitGuessMatchRecordInput {

 Map<String, dynamic> get matchPayload; String? get token;
/// Create a copy of SubmitGuessMatchRecordInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitGuessMatchRecordInputCopyWith<SubmitGuessMatchRecordInput> get copyWith => _$SubmitGuessMatchRecordInputCopyWithImpl<SubmitGuessMatchRecordInput>(this as SubmitGuessMatchRecordInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitGuessMatchRecordInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitGuessMatchRecordInput&&const DeepCollectionEquality().equals(other.matchPayload, _this.matchPayload)&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as SubmitGuessMatchRecordInput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.matchPayload),_this.token);
}

@override
String toString() {
  final _this = this as SubmitGuessMatchRecordInput;
  return 'SubmitGuessMatchRecordInput(matchPayload: ${_this.matchPayload}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $SubmitGuessMatchRecordInputCopyWith<$Res>  {
  factory $SubmitGuessMatchRecordInputCopyWith(SubmitGuessMatchRecordInput value, $Res Function(SubmitGuessMatchRecordInput) _then) = _$SubmitGuessMatchRecordInputCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> matchPayload, String? token
});




}
/// @nodoc
class _$SubmitGuessMatchRecordInputCopyWithImpl<$Res>
    implements $SubmitGuessMatchRecordInputCopyWith<$Res> {
  _$SubmitGuessMatchRecordInputCopyWithImpl(this._self, this._then);

  final SubmitGuessMatchRecordInput _self;
  final $Res Function(SubmitGuessMatchRecordInput) _then;

/// Create a copy of SubmitGuessMatchRecordInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? matchPayload = null,Object? token = freezed,}) {
  return _then(SubmitGuessMatchRecordInput(
matchPayload: null == matchPayload ? _self.matchPayload : matchPayload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitGuessMatchRecordInput].
extension SubmitGuessMatchRecordInputPatterns on SubmitGuessMatchRecordInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitGuessMatchRecordInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitGuessMatchRecordInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitGuessMatchRecordInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessMatchRecordInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitGuessMatchRecordInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessMatchRecordInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic> matchPayload,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitGuessMatchRecordInput() when $default != null:
return $default(_that.matchPayload,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic> matchPayload,  String? token)  $default,) {final _that = this;
switch (_that) {
case _SubmitGuessMatchRecordInput():
return $default(_that.matchPayload,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic> matchPayload,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _SubmitGuessMatchRecordInput() when $default != null:
return $default(_that.matchPayload,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitGuessMatchRecordInput extends SubmitGuessMatchRecordInput {
  const _SubmitGuessMatchRecordInput({required  Map<String, dynamic> matchPayload, this.token}): _matchPayload = matchPayload,super._();
  

 final  Map<String, dynamic> _matchPayload;
@override Map<String, dynamic> get matchPayload {
  if (_matchPayload is EqualUnmodifiableMapView) return _matchPayload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_matchPayload);
}

@override final  String? token;

/// Create a copy of SubmitGuessMatchRecordInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitGuessMatchRecordInputCopyWith<_SubmitGuessMatchRecordInput> get copyWith => __$SubmitGuessMatchRecordInputCopyWithImpl<_SubmitGuessMatchRecordInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitGuessMatchRecordInput&&const DeepCollectionEquality().equals(other.matchPayload, _matchPayload)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_matchPayload),token);
}

@override
String toString() {
    return 'SubmitGuessMatchRecordInput(matchPayload: $matchPayload, token: $token)';
}


}

/// @nodoc
abstract mixin class _$SubmitGuessMatchRecordInputCopyWith<$Res> implements $SubmitGuessMatchRecordInputCopyWith<$Res> {
  factory _$SubmitGuessMatchRecordInputCopyWith(_SubmitGuessMatchRecordInput value, $Res Function(_SubmitGuessMatchRecordInput) _then) = __$SubmitGuessMatchRecordInputCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic> matchPayload, String? token
});




}
/// @nodoc
class __$SubmitGuessMatchRecordInputCopyWithImpl<$Res>
    implements _$SubmitGuessMatchRecordInputCopyWith<$Res> {
  __$SubmitGuessMatchRecordInputCopyWithImpl(this._self, this._then);

  final _SubmitGuessMatchRecordInput _self;
  final $Res Function(_SubmitGuessMatchRecordInput) _then;

/// Create a copy of SubmitGuessMatchRecordInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? matchPayload = null,Object? token = freezed,}) {
  return _then(_SubmitGuessMatchRecordInput(
matchPayload: null == matchPayload ? _self._matchPayload : matchPayload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SubmitGuessMatchRecordOutput {

 bool get success;
/// Create a copy of SubmitGuessMatchRecordOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitGuessMatchRecordOutputCopyWith<SubmitGuessMatchRecordOutput> get copyWith => _$SubmitGuessMatchRecordOutputCopyWithImpl<SubmitGuessMatchRecordOutput>(this as SubmitGuessMatchRecordOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitGuessMatchRecordOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitGuessMatchRecordOutput&&(identical(other.success, _this.success) || other.success == _this.success));
}


@override
int get hashCode {
  final _this = this as SubmitGuessMatchRecordOutput;
  return Object.hash(runtimeType,_this.success);
}

@override
String toString() {
  final _this = this as SubmitGuessMatchRecordOutput;
  return 'SubmitGuessMatchRecordOutput(success: ${_this.success})';
}


}

/// @nodoc
abstract mixin class $SubmitGuessMatchRecordOutputCopyWith<$Res>  {
  factory $SubmitGuessMatchRecordOutputCopyWith(SubmitGuessMatchRecordOutput value, $Res Function(SubmitGuessMatchRecordOutput) _then) = _$SubmitGuessMatchRecordOutputCopyWithImpl;
@useResult
$Res call({
 bool success
});




}
/// @nodoc
class _$SubmitGuessMatchRecordOutputCopyWithImpl<$Res>
    implements $SubmitGuessMatchRecordOutputCopyWith<$Res> {
  _$SubmitGuessMatchRecordOutputCopyWithImpl(this._self, this._then);

  final SubmitGuessMatchRecordOutput _self;
  final $Res Function(SubmitGuessMatchRecordOutput) _then;

/// Create a copy of SubmitGuessMatchRecordOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,}) {
  return _then(SubmitGuessMatchRecordOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitGuessMatchRecordOutput].
extension SubmitGuessMatchRecordOutputPatterns on SubmitGuessMatchRecordOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitGuessMatchRecordOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitGuessMatchRecordOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitGuessMatchRecordOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessMatchRecordOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitGuessMatchRecordOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessMatchRecordOutput() when $default != null:
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
case _SubmitGuessMatchRecordOutput() when $default != null:
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
case _SubmitGuessMatchRecordOutput():
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
case _SubmitGuessMatchRecordOutput() when $default != null:
return $default(_that.success);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitGuessMatchRecordOutput extends SubmitGuessMatchRecordOutput {
  const _SubmitGuessMatchRecordOutput({this.success = false}): super._();
  

@override@JsonKey() final  bool success;

/// Create a copy of SubmitGuessMatchRecordOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitGuessMatchRecordOutputCopyWith<_SubmitGuessMatchRecordOutput> get copyWith => __$SubmitGuessMatchRecordOutputCopyWithImpl<_SubmitGuessMatchRecordOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitGuessMatchRecordOutput&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success);
}

@override
String toString() {
    return 'SubmitGuessMatchRecordOutput(success: $success)';
}


}

/// @nodoc
abstract mixin class _$SubmitGuessMatchRecordOutputCopyWith<$Res> implements $SubmitGuessMatchRecordOutputCopyWith<$Res> {
  factory _$SubmitGuessMatchRecordOutputCopyWith(_SubmitGuessMatchRecordOutput value, $Res Function(_SubmitGuessMatchRecordOutput) _then) = __$SubmitGuessMatchRecordOutputCopyWithImpl;
@override @useResult
$Res call({
 bool success
});




}
/// @nodoc
class __$SubmitGuessMatchRecordOutputCopyWithImpl<$Res>
    implements _$SubmitGuessMatchRecordOutputCopyWith<$Res> {
  __$SubmitGuessMatchRecordOutputCopyWithImpl(this._self, this._then);

  final _SubmitGuessMatchRecordOutput _self;
  final $Res Function(_SubmitGuessMatchRecordOutput) _then;

/// Create a copy of SubmitGuessMatchRecordOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,}) {
  return _then(_SubmitGuessMatchRecordOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
