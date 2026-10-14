// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_practice_word_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitPracticeWordInput {

 String get uid; String get sessionId; int get index; String get answer; String? get bridgeWord;
/// Create a copy of SubmitPracticeWordInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitPracticeWordInputCopyWith<SubmitPracticeWordInput> get copyWith => _$SubmitPracticeWordInputCopyWithImpl<SubmitPracticeWordInput>(this as SubmitPracticeWordInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitPracticeWordInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitPracticeWordInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.sessionId, _this.sessionId) || other.sessionId == _this.sessionId)&&(identical(other.index, _this.index) || other.index == _this.index)&&(identical(other.answer, _this.answer) || other.answer == _this.answer)&&(identical(other.bridgeWord, _this.bridgeWord) || other.bridgeWord == _this.bridgeWord));
}


@override
int get hashCode {
  final _this = this as SubmitPracticeWordInput;
  return Object.hash(runtimeType,_this.uid,_this.sessionId,_this.index,_this.answer,_this.bridgeWord);
}

@override
String toString() {
  final _this = this as SubmitPracticeWordInput;
  return 'SubmitPracticeWordInput(uid: ${_this.uid}, sessionId: ${_this.sessionId}, index: ${_this.index}, answer: ${_this.answer}, bridgeWord: ${_this.bridgeWord})';
}


}

/// @nodoc
abstract mixin class $SubmitPracticeWordInputCopyWith<$Res>  {
  factory $SubmitPracticeWordInputCopyWith(SubmitPracticeWordInput value, $Res Function(SubmitPracticeWordInput) _then) = _$SubmitPracticeWordInputCopyWithImpl;
@useResult
$Res call({
 String uid, String sessionId, int index, String answer, String? bridgeWord
});




}
/// @nodoc
class _$SubmitPracticeWordInputCopyWithImpl<$Res>
    implements $SubmitPracticeWordInputCopyWith<$Res> {
  _$SubmitPracticeWordInputCopyWithImpl(this._self, this._then);

  final SubmitPracticeWordInput _self;
  final $Res Function(SubmitPracticeWordInput) _then;

/// Create a copy of SubmitPracticeWordInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? sessionId = null,Object? index = null,Object? answer = null,Object? bridgeWord = freezed,}) {
  return _then(SubmitPracticeWordInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,bridgeWord: freezed == bridgeWord ? _self.bridgeWord : bridgeWord // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitPracticeWordInput].
extension SubmitPracticeWordInputPatterns on SubmitPracticeWordInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitPracticeWordInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitPracticeWordInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitPracticeWordInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitPracticeWordInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitPracticeWordInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitPracticeWordInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String sessionId,  int index,  String answer,  String? bridgeWord)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitPracticeWordInput() when $default != null:
return $default(_that.uid,_that.sessionId,_that.index,_that.answer,_that.bridgeWord);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String sessionId,  int index,  String answer,  String? bridgeWord)  $default,) {final _that = this;
switch (_that) {
case _SubmitPracticeWordInput():
return $default(_that.uid,_that.sessionId,_that.index,_that.answer,_that.bridgeWord);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String sessionId,  int index,  String answer,  String? bridgeWord)?  $default,) {final _that = this;
switch (_that) {
case _SubmitPracticeWordInput() when $default != null:
return $default(_that.uid,_that.sessionId,_that.index,_that.answer,_that.bridgeWord);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitPracticeWordInput extends SubmitPracticeWordInput {
  const _SubmitPracticeWordInput({required this.uid, required this.sessionId, required this.index, required this.answer, this.bridgeWord}): super._();
  

@override final  String uid;
@override final  String sessionId;
@override final  int index;
@override final  String answer;
@override final  String? bridgeWord;

/// Create a copy of SubmitPracticeWordInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitPracticeWordInputCopyWith<_SubmitPracticeWordInput> get copyWith => __$SubmitPracticeWordInputCopyWithImpl<_SubmitPracticeWordInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPracticeWordInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.index, index) || other.index == index)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.bridgeWord, bridgeWord) || other.bridgeWord == bridgeWord));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,sessionId,index,answer,bridgeWord);
}

@override
String toString() {
    return 'SubmitPracticeWordInput(uid: $uid, sessionId: $sessionId, index: $index, answer: $answer, bridgeWord: $bridgeWord)';
}


}

/// @nodoc
abstract mixin class _$SubmitPracticeWordInputCopyWith<$Res> implements $SubmitPracticeWordInputCopyWith<$Res> {
  factory _$SubmitPracticeWordInputCopyWith(_SubmitPracticeWordInput value, $Res Function(_SubmitPracticeWordInput) _then) = __$SubmitPracticeWordInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, String sessionId, int index, String answer, String? bridgeWord
});




}
/// @nodoc
class __$SubmitPracticeWordInputCopyWithImpl<$Res>
    implements _$SubmitPracticeWordInputCopyWith<$Res> {
  __$SubmitPracticeWordInputCopyWithImpl(this._self, this._then);

  final _SubmitPracticeWordInput _self;
  final $Res Function(_SubmitPracticeWordInput) _then;

/// Create a copy of SubmitPracticeWordInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? sessionId = null,Object? index = null,Object? answer = null,Object? bridgeWord = freezed,}) {
  return _then(_SubmitPracticeWordInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,bridgeWord: freezed == bridgeWord ? _self.bridgeWord : bridgeWord // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SubmitPracticeWordOutput {

 Reward get reward;
/// Create a copy of SubmitPracticeWordOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitPracticeWordOutputCopyWith<SubmitPracticeWordOutput> get copyWith => _$SubmitPracticeWordOutputCopyWithImpl<SubmitPracticeWordOutput>(this as SubmitPracticeWordOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitPracticeWordOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitPracticeWordOutput&&(identical(other.reward, _this.reward) || other.reward == _this.reward));
}


@override
int get hashCode {
  final _this = this as SubmitPracticeWordOutput;
  return Object.hash(runtimeType,_this.reward);
}

@override
String toString() {
  final _this = this as SubmitPracticeWordOutput;
  return 'SubmitPracticeWordOutput(reward: ${_this.reward})';
}


}

/// @nodoc
abstract mixin class $SubmitPracticeWordOutputCopyWith<$Res>  {
  factory $SubmitPracticeWordOutputCopyWith(SubmitPracticeWordOutput value, $Res Function(SubmitPracticeWordOutput) _then) = _$SubmitPracticeWordOutputCopyWithImpl;
@useResult
$Res call({
 Reward reward
});


$RewardCopyWith<$Res> get reward;

}
/// @nodoc
class _$SubmitPracticeWordOutputCopyWithImpl<$Res>
    implements $SubmitPracticeWordOutputCopyWith<$Res> {
  _$SubmitPracticeWordOutputCopyWithImpl(this._self, this._then);

  final SubmitPracticeWordOutput _self;
  final $Res Function(SubmitPracticeWordOutput) _then;

/// Create a copy of SubmitPracticeWordOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reward = null,}) {
  return _then(SubmitPracticeWordOutput(
null == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as Reward,
  ));
}
/// Create a copy of SubmitPracticeWordOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardCopyWith<$Res> get reward {
  
  return $RewardCopyWith<$Res>(_self.reward, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmitPracticeWordOutput].
extension SubmitPracticeWordOutputPatterns on SubmitPracticeWordOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitPracticeWordOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitPracticeWordOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitPracticeWordOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitPracticeWordOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitPracticeWordOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitPracticeWordOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Reward reward)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitPracticeWordOutput() when $default != null:
return $default(_that.reward);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Reward reward)  $default,) {final _that = this;
switch (_that) {
case _SubmitPracticeWordOutput():
return $default(_that.reward);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Reward reward)?  $default,) {final _that = this;
switch (_that) {
case _SubmitPracticeWordOutput() when $default != null:
return $default(_that.reward);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitPracticeWordOutput extends SubmitPracticeWordOutput {
  const _SubmitPracticeWordOutput(this.reward): super._();
  

@override final  Reward reward;

/// Create a copy of SubmitPracticeWordOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitPracticeWordOutputCopyWith<_SubmitPracticeWordOutput> get copyWith => __$SubmitPracticeWordOutputCopyWithImpl<_SubmitPracticeWordOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitPracticeWordOutput&&(identical(other.reward, reward) || other.reward == reward));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reward);
}

@override
String toString() {
    return 'SubmitPracticeWordOutput(reward: $reward)';
}


}

/// @nodoc
abstract mixin class _$SubmitPracticeWordOutputCopyWith<$Res> implements $SubmitPracticeWordOutputCopyWith<$Res> {
  factory _$SubmitPracticeWordOutputCopyWith(_SubmitPracticeWordOutput value, $Res Function(_SubmitPracticeWordOutput) _then) = __$SubmitPracticeWordOutputCopyWithImpl;
@override @useResult
$Res call({
 Reward reward
});


@override $RewardCopyWith<$Res> get reward;

}
/// @nodoc
class __$SubmitPracticeWordOutputCopyWithImpl<$Res>
    implements _$SubmitPracticeWordOutputCopyWith<$Res> {
  __$SubmitPracticeWordOutputCopyWithImpl(this._self, this._then);

  final _SubmitPracticeWordOutput _self;
  final $Res Function(_SubmitPracticeWordOutput) _then;

/// Create a copy of SubmitPracticeWordOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reward = null,}) {
  return _then(_SubmitPracticeWordOutput(
null == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as Reward,
  ));
}

/// Create a copy of SubmitPracticeWordOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardCopyWith<$Res> get reward {
  
  return $RewardCopyWith<$Res>(_self.reward, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}

// dart format on
