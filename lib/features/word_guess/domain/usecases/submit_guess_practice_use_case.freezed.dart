// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_guess_practice_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitGuessPracticeInput {

 String get uid; String get sessionId; int get index; String get answer;
/// Create a copy of SubmitGuessPracticeInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitGuessPracticeInputCopyWith<SubmitGuessPracticeInput> get copyWith => _$SubmitGuessPracticeInputCopyWithImpl<SubmitGuessPracticeInput>(this as SubmitGuessPracticeInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitGuessPracticeInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitGuessPracticeInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.answer, _this.answer) || other.answer == _this.answer));
}


@override
int get hashCode {
  final _this = this as SubmitGuessPracticeInput;
  return Object.hash(runtimeType,_this.uid,_this.sessionId,_this.index,_this.answer);
}

@override
String toString() {
  final _this = this as SubmitGuessPracticeInput;
  return 'SubmitGuessPracticeInput(uid: ${_this.uid}, sessionId: ${_this.sessionId}, index: ${_this.index}, answer: ${_this.answer})';
}


}

/// @nodoc
abstract mixin class $SubmitGuessPracticeInputCopyWith<$Res>  {
  factory $SubmitGuessPracticeInputCopyWith(SubmitGuessPracticeInput value, $Res Function(SubmitGuessPracticeInput) _then) = _$SubmitGuessPracticeInputCopyWithImpl;
@useResult
$Res call({
 String uid, String sessionId, int index, String answer
});




}
/// @nodoc
class _$SubmitGuessPracticeInputCopyWithImpl<$Res>
    implements $SubmitGuessPracticeInputCopyWith<$Res> {
  _$SubmitGuessPracticeInputCopyWithImpl(this._self, this._then);

  final SubmitGuessPracticeInput _self;
  final $Res Function(SubmitGuessPracticeInput) _then;

/// Create a copy of SubmitGuessPracticeInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? sessionId = null,Object? index = null,Object? answer = null,}) {
  return _then(SubmitGuessPracticeInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitGuessPracticeInput].
extension SubmitGuessPracticeInputPatterns on SubmitGuessPracticeInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitGuessPracticeInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitGuessPracticeInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitGuessPracticeInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessPracticeInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitGuessPracticeInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessPracticeInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String sessionId,  int index,  String answer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitGuessPracticeInput() when $default != null:
return $default(_that.uid,_that.sessionId,_that.index,_that.answer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String sessionId,  int index,  String answer)  $default,) {final _that = this;
switch (_that) {
case _SubmitGuessPracticeInput():
return $default(_that.uid,_that.sessionId,_that.index,_that.answer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String sessionId,  int index,  String answer)?  $default,) {final _that = this;
switch (_that) {
case _SubmitGuessPracticeInput() when $default != null:
return $default(_that.uid,_that.sessionId,_that.index,_that.answer);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitGuessPracticeInput extends SubmitGuessPracticeInput {
  const _SubmitGuessPracticeInput({required this.uid, required this.sessionId, required this.index, required this.answer}): super._();
  

@override final  String uid;
@override final  String sessionId;
@override final  int index;
@override final  String answer;

/// Create a copy of SubmitGuessPracticeInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitGuessPracticeInputCopyWith<_SubmitGuessPracticeInput> get copyWith => __$SubmitGuessPracticeInputCopyWithImpl<_SubmitGuessPracticeInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitGuessPracticeInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.index, index) || other.index == index)&&(identical(other.answer, answer) || other.answer == answer));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,sessionId,index,answer);
}

@override
String toString() {
    return 'SubmitGuessPracticeInput(uid: $uid, sessionId: $sessionId, index: $index, answer: $answer)';
}


}

/// @nodoc
abstract mixin class _$SubmitGuessPracticeInputCopyWith<$Res> implements $SubmitGuessPracticeInputCopyWith<$Res> {
  factory _$SubmitGuessPracticeInputCopyWith(_SubmitGuessPracticeInput value, $Res Function(_SubmitGuessPracticeInput) _then) = __$SubmitGuessPracticeInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String sessionId, int index, String answer
});




}
/// @nodoc
class __$SubmitGuessPracticeInputCopyWithImpl<$Res>
    implements _$SubmitGuessPracticeInputCopyWith<$Res> {
  __$SubmitGuessPracticeInputCopyWithImpl(this._self, this._then);

  final _SubmitGuessPracticeInput _self;
  final $Res Function(_SubmitGuessPracticeInput) _then;

/// Create a copy of SubmitGuessPracticeInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? sessionId = null,Object? index = null,Object? answer = null,}) {
  return _then(_SubmitGuessPracticeInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SubmitGuessPracticeOutput {

 PracticeResult get result;
/// Create a copy of SubmitGuessPracticeOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitGuessPracticeOutputCopyWith<SubmitGuessPracticeOutput> get copyWith => _$SubmitGuessPracticeOutputCopyWithImpl<SubmitGuessPracticeOutput>(this as SubmitGuessPracticeOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitGuessPracticeOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitGuessPracticeOutput&&(identical(other.result, _this.result) || other.result == _this.result));
}


@override
int get hashCode {
  final _this = this as SubmitGuessPracticeOutput;
  return Object.hash(runtimeType,_this.result);
}

@override
String toString() {
  final _this = this as SubmitGuessPracticeOutput;
  return 'SubmitGuessPracticeOutput(result: ${_this.result})';
}


}

/// @nodoc
abstract mixin class $SubmitGuessPracticeOutputCopyWith<$Res>  {
  factory $SubmitGuessPracticeOutputCopyWith(SubmitGuessPracticeOutput value, $Res Function(SubmitGuessPracticeOutput) _then) = _$SubmitGuessPracticeOutputCopyWithImpl;
@useResult
$Res call({
 PracticeResult result
});


$PracticeResultCopyWith<$Res> get result;

}
/// @nodoc
class _$SubmitGuessPracticeOutputCopyWithImpl<$Res>
    implements $SubmitGuessPracticeOutputCopyWith<$Res> {
  _$SubmitGuessPracticeOutputCopyWithImpl(this._self, this._then);

  final SubmitGuessPracticeOutput _self;
  final $Res Function(SubmitGuessPracticeOutput) _then;

/// Create a copy of SubmitGuessPracticeOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,}) {
  return _then(SubmitGuessPracticeOutput(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as PracticeResult,
  ));
}
/// Create a copy of SubmitGuessPracticeOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PracticeResultCopyWith<$Res> get result {
  
  return $PracticeResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmitGuessPracticeOutput].
extension SubmitGuessPracticeOutputPatterns on SubmitGuessPracticeOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitGuessPracticeOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitGuessPracticeOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitGuessPracticeOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessPracticeOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitGuessPracticeOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitGuessPracticeOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PracticeResult result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitGuessPracticeOutput() when $default != null:
return $default(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PracticeResult result)  $default,) {final _that = this;
switch (_that) {
case _SubmitGuessPracticeOutput():
return $default(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PracticeResult result)?  $default,) {final _that = this;
switch (_that) {
case _SubmitGuessPracticeOutput() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitGuessPracticeOutput extends SubmitGuessPracticeOutput {
  const _SubmitGuessPracticeOutput(this.result): super._();
  

@override final  PracticeResult result;

/// Create a copy of SubmitGuessPracticeOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitGuessPracticeOutputCopyWith<_SubmitGuessPracticeOutput> get copyWith => __$SubmitGuessPracticeOutputCopyWithImpl<_SubmitGuessPracticeOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitGuessPracticeOutput&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode {
    return Object.hash(runtimeType,result);
}

@override
String toString() {
    return 'SubmitGuessPracticeOutput(result: $result)';
}


}

/// @nodoc
abstract mixin class _$SubmitGuessPracticeOutputCopyWith<$Res> implements $SubmitGuessPracticeOutputCopyWith<$Res> {
  factory _$SubmitGuessPracticeOutputCopyWith(_SubmitGuessPracticeOutput value, $Res Function(_SubmitGuessPracticeOutput) _then) = __$SubmitGuessPracticeOutputCopyWithImpl;
@override @useResult
$Res call({
 PracticeResult result
});


@override $PracticeResultCopyWith<$Res> get result;

}
/// @nodoc
class __$SubmitGuessPracticeOutputCopyWithImpl<$Res>
    implements _$SubmitGuessPracticeOutputCopyWith<$Res> {
  __$SubmitGuessPracticeOutputCopyWithImpl(this._self, this._then);

  final _SubmitGuessPracticeOutput _self;
  final $Res Function(_SubmitGuessPracticeOutput) _then;

/// Create a copy of SubmitGuessPracticeOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(_SubmitGuessPracticeOutput(
null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as PracticeResult,
  ));
}

/// Create a copy of SubmitGuessPracticeOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PracticeResultCopyWith<$Res> get result {
  
  return $PracticeResultCopyWith<$Res>(_self.result, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
