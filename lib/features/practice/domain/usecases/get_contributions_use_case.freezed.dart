// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_contributions_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetContributionsInput {

 String get uid; String? get token;
/// Create a copy of GetContributionsInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetContributionsInputCopyWith<GetContributionsInput> get copyWith => _$GetContributionsInputCopyWithImpl<GetContributionsInput>(this as GetContributionsInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetContributionsInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetContributionsInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.token, _this.token) || other.token == _this.token));
}


@override
int get hashCode {
  final _this = this as GetContributionsInput;
  return Object.hash(runtimeType,_this.uid,_this.token);
}

@override
String toString() {
  final _this = this as GetContributionsInput;
  return 'GetContributionsInput(uid: ${_this.uid}, token: ${_this.token})';
}


}

/// @nodoc
abstract mixin class $GetContributionsInputCopyWith<$Res>  {
  factory $GetContributionsInputCopyWith(GetContributionsInput value, $Res Function(GetContributionsInput) _then) = _$GetContributionsInputCopyWithImpl;
@useResult
$Res call({
 String uid, String? token
});




}
/// @nodoc
class _$GetContributionsInputCopyWithImpl<$Res>
    implements $GetContributionsInputCopyWith<$Res> {
  _$GetContributionsInputCopyWithImpl(this._self, this._then);

  final GetContributionsInput _self;
  final $Res Function(GetContributionsInput) _then;

/// Create a copy of GetContributionsInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? token = freezed,}) {
  return _then(GetContributionsInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetContributionsInput].
extension GetContributionsInputPatterns on GetContributionsInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetContributionsInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetContributionsInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetContributionsInput value)  $default,){
final _that = this;
switch (_that) {
case _GetContributionsInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetContributionsInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetContributionsInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetContributionsInput() when $default != null:
return $default(_that.uid,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String? token)  $default,) {final _that = this;
switch (_that) {
case _GetContributionsInput():
return $default(_that.uid,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _GetContributionsInput() when $default != null:
return $default(_that.uid,_that.token);case _:
  return null;

}
}

}

/// @nodoc


class _GetContributionsInput extends GetContributionsInput {
  const _GetContributionsInput({required this.uid, this.token}): super._();
  

@override final  String uid;
@override final  String? token;

/// Create a copy of GetContributionsInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetContributionsInputCopyWith<_GetContributionsInput> get copyWith => __$GetContributionsInputCopyWithImpl<_GetContributionsInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetContributionsInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.token, token) || other.token == token));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,token);
}

@override
String toString() {
    return 'GetContributionsInput(uid: $uid, token: $token)';
}


}

/// @nodoc
abstract mixin class _$GetContributionsInputCopyWith<$Res> implements $GetContributionsInputCopyWith<$Res> {
  factory _$GetContributionsInputCopyWith(_GetContributionsInput value, $Res Function(_GetContributionsInput) _then) = __$GetContributionsInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String? token
});




}
/// @nodoc
class __$GetContributionsInputCopyWithImpl<$Res>
    implements _$GetContributionsInputCopyWith<$Res> {
  __$GetContributionsInputCopyWithImpl(this._self, this._then);

  final _GetContributionsInput _self;
  final $Res Function(_GetContributionsInput) _then;

/// Create a copy of GetContributionsInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? token = freezed,}) {
  return _then(_GetContributionsInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$GetContributionsOutput {

 List<Contribution> get contributions;
/// Create a copy of GetContributionsOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetContributionsOutputCopyWith<GetContributionsOutput> get copyWith => _$GetContributionsOutputCopyWithImpl<GetContributionsOutput>(this as GetContributionsOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetContributionsOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetContributionsOutput&&const DeepCollectionEquality().equals(other.contributions, _this.contributions));
}


@override
int get hashCode {
  final _this = this as GetContributionsOutput;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.contributions));
}

@override
String toString() {
  final _this = this as GetContributionsOutput;
  return 'GetContributionsOutput(contributions: ${_this.contributions})';
}


}

/// @nodoc
abstract mixin class $GetContributionsOutputCopyWith<$Res>  {
  factory $GetContributionsOutputCopyWith(GetContributionsOutput value, $Res Function(GetContributionsOutput) _then) = _$GetContributionsOutputCopyWithImpl;
@useResult
$Res call({
 List<Contribution> contributions
});




}
/// @nodoc
class _$GetContributionsOutputCopyWithImpl<$Res>
    implements $GetContributionsOutputCopyWith<$Res> {
  _$GetContributionsOutputCopyWithImpl(this._self, this._then);

  final GetContributionsOutput _self;
  final $Res Function(GetContributionsOutput) _then;

/// Create a copy of GetContributionsOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contributions = null,}) {
  return _then(GetContributionsOutput(
contributions: null == contributions ? _self.contributions : contributions // ignore: cast_nullable_to_non_nullable
as List<Contribution>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetContributionsOutput].
extension GetContributionsOutputPatterns on GetContributionsOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetContributionsOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetContributionsOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetContributionsOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetContributionsOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetContributionsOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetContributionsOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Contribution> contributions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetContributionsOutput() when $default != null:
return $default(_that.contributions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Contribution> contributions)  $default,) {final _that = this;
switch (_that) {
case _GetContributionsOutput():
return $default(_that.contributions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Contribution> contributions)?  $default,) {final _that = this;
switch (_that) {
case _GetContributionsOutput() when $default != null:
return $default(_that.contributions);case _:
  return null;

}
}

}

/// @nodoc


class _GetContributionsOutput extends GetContributionsOutput {
  const _GetContributionsOutput({ List<Contribution> contributions = const []}): _contributions = contributions,super._();
  

 final  List<Contribution> _contributions;
@override@JsonKey() List<Contribution> get contributions {
  if (_contributions is EqualUnmodifiableListView) return _contributions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contributions);
}


/// Create a copy of GetContributionsOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetContributionsOutputCopyWith<_GetContributionsOutput> get copyWith => __$GetContributionsOutputCopyWithImpl<_GetContributionsOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetContributionsOutput&&const DeepCollectionEquality().equals(other.contributions, _contributions));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_contributions));
}

@override
String toString() {
    return 'GetContributionsOutput(contributions: $contributions)';
}


}

/// @nodoc
abstract mixin class _$GetContributionsOutputCopyWith<$Res> implements $GetContributionsOutputCopyWith<$Res> {
  factory _$GetContributionsOutputCopyWith(_GetContributionsOutput value, $Res Function(_GetContributionsOutput) _then) = __$GetContributionsOutputCopyWithImpl;
@override @useResult
$Res call({
 List<Contribution> contributions
});




}
/// @nodoc
class __$GetContributionsOutputCopyWithImpl<$Res>
    implements _$GetContributionsOutputCopyWith<$Res> {
  __$GetContributionsOutputCopyWithImpl(this._self, this._then);

  final _GetContributionsOutput _self;
  final $Res Function(_GetContributionsOutput) _then;

/// Create a copy of GetContributionsOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contributions = null,}) {
  return _then(_GetContributionsOutput(
contributions: null == contributions ? _self._contributions : contributions // ignore: cast_nullable_to_non_nullable
as List<Contribution>,
  ));
}


}

// dart format on
