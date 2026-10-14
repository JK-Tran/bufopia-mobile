// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_match_result_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitMatchResultInput {

 MatchRecord get match;
/// Create a copy of SubmitMatchResultInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitMatchResultInputCopyWith<SubmitMatchResultInput> get copyWith => _$SubmitMatchResultInputCopyWithImpl<SubmitMatchResultInput>(this as SubmitMatchResultInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitMatchResultInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitMatchResultInput&&(identical(other.match, _this.match) || other.match == _this.match));
}


@override
int get hashCode {
  final _this = this as SubmitMatchResultInput;
  return Object.hash(runtimeType,_this.match);
}

@override
String toString() {
  final _this = this as SubmitMatchResultInput;
  return 'SubmitMatchResultInput(match: ${_this.match})';
}


}

/// @nodoc
abstract mixin class $SubmitMatchResultInputCopyWith<$Res>  {
  factory $SubmitMatchResultInputCopyWith(SubmitMatchResultInput value, $Res Function(SubmitMatchResultInput) _then) = _$SubmitMatchResultInputCopyWithImpl;
@useResult
$Res call({
 MatchRecord match
});


$MatchRecordCopyWith<$Res> get match;

}
/// @nodoc
class _$SubmitMatchResultInputCopyWithImpl<$Res>
    implements $SubmitMatchResultInputCopyWith<$Res> {
  _$SubmitMatchResultInputCopyWithImpl(this._self, this._then);

  final SubmitMatchResultInput _self;
  final $Res Function(SubmitMatchResultInput) _then;

/// Create a copy of SubmitMatchResultInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? match = null,}) {
  return _then(SubmitMatchResultInput(
null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as MatchRecord,
  ));
}
/// Create a copy of SubmitMatchResultInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchRecordCopyWith<$Res> get match {
  
  return $MatchRecordCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmitMatchResultInput].
extension SubmitMatchResultInputPatterns on SubmitMatchResultInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitMatchResultInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitMatchResultInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitMatchResultInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitMatchResultInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitMatchResultInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitMatchResultInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MatchRecord match)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitMatchResultInput() when $default != null:
return $default(_that.match);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MatchRecord match)  $default,) {final _that = this;
switch (_that) {
case _SubmitMatchResultInput():
return $default(_that.match);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MatchRecord match)?  $default,) {final _that = this;
switch (_that) {
case _SubmitMatchResultInput() when $default != null:
return $default(_that.match);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitMatchResultInput extends SubmitMatchResultInput {
  const _SubmitMatchResultInput(this.match): super._();
  

@override final  MatchRecord match;

/// Create a copy of SubmitMatchResultInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitMatchResultInputCopyWith<_SubmitMatchResultInput> get copyWith => __$SubmitMatchResultInputCopyWithImpl<_SubmitMatchResultInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitMatchResultInput&&(identical(other.match, match) || other.match == match));
}


@override
int get hashCode {
    return Object.hash(runtimeType,match);
}

@override
String toString() {
    return 'SubmitMatchResultInput(match: $match)';
}


}

/// @nodoc
abstract mixin class _$SubmitMatchResultInputCopyWith<$Res> implements $SubmitMatchResultInputCopyWith<$Res> {
  factory _$SubmitMatchResultInputCopyWith(_SubmitMatchResultInput value, $Res Function(_SubmitMatchResultInput) _then) = __$SubmitMatchResultInputCopyWithImpl;
@override @useResult
$Res call({
 MatchRecord match
});


@override $MatchRecordCopyWith<$Res> get match;

}
/// @nodoc
class __$SubmitMatchResultInputCopyWithImpl<$Res>
    implements _$SubmitMatchResultInputCopyWith<$Res> {
  __$SubmitMatchResultInputCopyWithImpl(this._self, this._then);

  final _SubmitMatchResultInput _self;
  final $Res Function(_SubmitMatchResultInput) _then;

/// Create a copy of SubmitMatchResultInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? match = null,}) {
  return _then(_SubmitMatchResultInput(
null == match ? _self.match : match // ignore: cast_nullable_to_non_nullable
as MatchRecord,
  ));
}

/// Create a copy of SubmitMatchResultInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MatchRecordCopyWith<$Res> get match {
  
  return $MatchRecordCopyWith<$Res>(_self.match, (value) {
    return _then(_self.copyWith(match: value));
  });
}
}

/// @nodoc
mixin _$SubmitMatchResultOutput {

 bool get success;
/// Create a copy of SubmitMatchResultOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitMatchResultOutputCopyWith<SubmitMatchResultOutput> get copyWith => _$SubmitMatchResultOutputCopyWithImpl<SubmitMatchResultOutput>(this as SubmitMatchResultOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitMatchResultOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitMatchResultOutput&&(identical(other.success, _this.success) || other.success == _this.success));
}


@override
int get hashCode {
  final _this = this as SubmitMatchResultOutput;
  return Object.hash(runtimeType,_this.success);
}

@override
String toString() {
  final _this = this as SubmitMatchResultOutput;
  return 'SubmitMatchResultOutput(success: ${_this.success})';
}


}

/// @nodoc
abstract mixin class $SubmitMatchResultOutputCopyWith<$Res>  {
  factory $SubmitMatchResultOutputCopyWith(SubmitMatchResultOutput value, $Res Function(SubmitMatchResultOutput) _then) = _$SubmitMatchResultOutputCopyWithImpl;
@useResult
$Res call({
 bool success
});




}
/// @nodoc
class _$SubmitMatchResultOutputCopyWithImpl<$Res>
    implements $SubmitMatchResultOutputCopyWith<$Res> {
  _$SubmitMatchResultOutputCopyWithImpl(this._self, this._then);

  final SubmitMatchResultOutput _self;
  final $Res Function(SubmitMatchResultOutput) _then;

/// Create a copy of SubmitMatchResultOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,}) {
  return _then(SubmitMatchResultOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitMatchResultOutput].
extension SubmitMatchResultOutputPatterns on SubmitMatchResultOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitMatchResultOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitMatchResultOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitMatchResultOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitMatchResultOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitMatchResultOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitMatchResultOutput() when $default != null:
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
case _SubmitMatchResultOutput() when $default != null:
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
case _SubmitMatchResultOutput():
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
case _SubmitMatchResultOutput() when $default != null:
return $default(_that.success);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitMatchResultOutput extends SubmitMatchResultOutput {
  const _SubmitMatchResultOutput({this.success = true}): super._();
  

@override@JsonKey() final  bool success;

/// Create a copy of SubmitMatchResultOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitMatchResultOutputCopyWith<_SubmitMatchResultOutput> get copyWith => __$SubmitMatchResultOutputCopyWithImpl<_SubmitMatchResultOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitMatchResultOutput&&(identical(other.success, success) || other.success == success));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success);
}

@override
String toString() {
    return 'SubmitMatchResultOutput(success: $success)';
}


}

/// @nodoc
abstract mixin class _$SubmitMatchResultOutputCopyWith<$Res> implements $SubmitMatchResultOutputCopyWith<$Res> {
  factory _$SubmitMatchResultOutputCopyWith(_SubmitMatchResultOutput value, $Res Function(_SubmitMatchResultOutput) _then) = __$SubmitMatchResultOutputCopyWithImpl;
@override @useResult
$Res call({
 bool success
});




}
/// @nodoc
class __$SubmitMatchResultOutputCopyWithImpl<$Res>
    implements _$SubmitMatchResultOutputCopyWith<$Res> {
  __$SubmitMatchResultOutputCopyWithImpl(this._self, this._then);

  final _SubmitMatchResultOutput _self;
  final $Res Function(_SubmitMatchResultOutput) _then;

/// Create a copy of SubmitMatchResultOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,}) {
  return _then(_SubmitMatchResultOutput(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
