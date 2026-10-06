// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_battle_reward_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitBattleRewardInput {

 String get uid; bool get isWin; int get correctCount; int get points;
/// Create a copy of SubmitBattleRewardInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitBattleRewardInputCopyWith<SubmitBattleRewardInput> get copyWith => _$SubmitBattleRewardInputCopyWithImpl<SubmitBattleRewardInput>(this as SubmitBattleRewardInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitBattleRewardInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitBattleRewardInput&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.isWin, _this.isWin) || other.isWin == _this.isWin)&&(identical(other.correctCount, _this.correctCount) || other.correctCount == _this.correctCount)&&(identical(other.points, _this.points) || other.points == _this.points));
}


@override
int get hashCode {
  final _this = this as SubmitBattleRewardInput;
  return Object.hash(runtimeType,_this.uid,_this.isWin,_this.correctCount,_this.points);
}

@override
String toString() {
  final _this = this as SubmitBattleRewardInput;
  return 'SubmitBattleRewardInput(uid: ${_this.uid}, isWin: ${_this.isWin}, correctCount: ${_this.correctCount}, points: ${_this.points})';
}


}

/// @nodoc
abstract mixin class $SubmitBattleRewardInputCopyWith<$Res>  {
  factory $SubmitBattleRewardInputCopyWith(SubmitBattleRewardInput value, $Res Function(SubmitBattleRewardInput) _then) = _$SubmitBattleRewardInputCopyWithImpl;
@useResult
$Res call({
 String uid, bool isWin, int correctCount, int points
});




}
/// @nodoc
class _$SubmitBattleRewardInputCopyWithImpl<$Res>
    implements $SubmitBattleRewardInputCopyWith<$Res> {
  _$SubmitBattleRewardInputCopyWithImpl(this._self, this._then);

  final SubmitBattleRewardInput _self;
  final $Res Function(SubmitBattleRewardInput) _then;

/// Create a copy of SubmitBattleRewardInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? isWin = null,Object? correctCount = null,Object? points = null,}) {
  return _then(SubmitBattleRewardInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,isWin: null == isWin ? _self.isWin : isWin // ignore: cast_nullable_to_non_nullable
as bool,correctCount: null == correctCount ? _self.correctCount : correctCount // ignore: cast_nullable_to_non_nullable
as int,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitBattleRewardInput].
extension SubmitBattleRewardInputPatterns on SubmitBattleRewardInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitBattleRewardInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitBattleRewardInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitBattleRewardInput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitBattleRewardInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitBattleRewardInput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitBattleRewardInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  bool isWin,  int correctCount,  int points)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitBattleRewardInput() when $default != null:
return $default(_that.uid,_that.isWin,_that.correctCount,_that.points);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  bool isWin,  int correctCount,  int points)  $default,) {final _that = this;
switch (_that) {
case _SubmitBattleRewardInput():
return $default(_that.uid,_that.isWin,_that.correctCount,_that.points);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  bool isWin,  int correctCount,  int points)?  $default,) {final _that = this;
switch (_that) {
case _SubmitBattleRewardInput() when $default != null:
return $default(_that.uid,_that.isWin,_that.correctCount,_that.points);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitBattleRewardInput extends SubmitBattleRewardInput {
  const _SubmitBattleRewardInput({required this.uid, required this.isWin, required this.correctCount, required this.points}): super._();
  

@override final  String uid;
@override final  bool isWin;
@override final  int correctCount;
@override final  int points;

/// Create a copy of SubmitBattleRewardInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitBattleRewardInputCopyWith<_SubmitBattleRewardInput> get copyWith => __$SubmitBattleRewardInputCopyWithImpl<_SubmitBattleRewardInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitBattleRewardInput&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.isWin, isWin) || other.isWin == isWin)&&(identical(other.correctCount, correctCount) || other.correctCount == correctCount)&&(identical(other.points, points) || other.points == points));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,isWin,correctCount,points);
}

@override
String toString() {
    return 'SubmitBattleRewardInput(uid: $uid, isWin: $isWin, correctCount: $correctCount, points: $points)';
}


}

/// @nodoc
abstract mixin class _$SubmitBattleRewardInputCopyWith<$Res> implements $SubmitBattleRewardInputCopyWith<$Res> {
  factory _$SubmitBattleRewardInputCopyWith(_SubmitBattleRewardInput value, $Res Function(_SubmitBattleRewardInput) _then) = __$SubmitBattleRewardInputCopyWithImpl;
@override @useResult
$Res call({
 String uid, bool isWin, int correctCount, int points
});




}
/// @nodoc
class __$SubmitBattleRewardInputCopyWithImpl<$Res>
    implements _$SubmitBattleRewardInputCopyWith<$Res> {
  __$SubmitBattleRewardInputCopyWithImpl(this._self, this._then);

  final _SubmitBattleRewardInput _self;
  final $Res Function(_SubmitBattleRewardInput) _then;

/// Create a copy of SubmitBattleRewardInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? isWin = null,Object? correctCount = null,Object? points = null,}) {
  return _then(_SubmitBattleRewardInput(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,isWin: null == isWin ? _self.isWin : isWin // ignore: cast_nullable_to_non_nullable
as bool,correctCount: null == correctCount ? _self.correctCount : correctCount // ignore: cast_nullable_to_non_nullable
as int,points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SubmitBattleRewardOutput {

 BattleRewardEntity get reward;
/// Create a copy of SubmitBattleRewardOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitBattleRewardOutputCopyWith<SubmitBattleRewardOutput> get copyWith => _$SubmitBattleRewardOutputCopyWithImpl<SubmitBattleRewardOutput>(this as SubmitBattleRewardOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitBattleRewardOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitBattleRewardOutput&&(identical(other.reward, _this.reward) || other.reward == _this.reward));
}


@override
int get hashCode {
  final _this = this as SubmitBattleRewardOutput;
  return Object.hash(runtimeType,_this.reward);
}

@override
String toString() {
  final _this = this as SubmitBattleRewardOutput;
  return 'SubmitBattleRewardOutput(reward: ${_this.reward})';
}


}

/// @nodoc
abstract mixin class $SubmitBattleRewardOutputCopyWith<$Res>  {
  factory $SubmitBattleRewardOutputCopyWith(SubmitBattleRewardOutput value, $Res Function(SubmitBattleRewardOutput) _then) = _$SubmitBattleRewardOutputCopyWithImpl;
@useResult
$Res call({
 BattleRewardEntity reward
});


$BattleRewardEntityCopyWith<$Res> get reward;

}
/// @nodoc
class _$SubmitBattleRewardOutputCopyWithImpl<$Res>
    implements $SubmitBattleRewardOutputCopyWith<$Res> {
  _$SubmitBattleRewardOutputCopyWithImpl(this._self, this._then);

  final SubmitBattleRewardOutput _self;
  final $Res Function(SubmitBattleRewardOutput) _then;

/// Create a copy of SubmitBattleRewardOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reward = null,}) {
  return _then(SubmitBattleRewardOutput(
reward: null == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as BattleRewardEntity,
  ));
}
/// Create a copy of SubmitBattleRewardOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattleRewardEntityCopyWith<$Res> get reward {
  
  return $BattleRewardEntityCopyWith<$Res>(_self.reward, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmitBattleRewardOutput].
extension SubmitBattleRewardOutputPatterns on SubmitBattleRewardOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitBattleRewardOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitBattleRewardOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitBattleRewardOutput value)  $default,){
final _that = this;
switch (_that) {
case _SubmitBattleRewardOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitBattleRewardOutput value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitBattleRewardOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BattleRewardEntity reward)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitBattleRewardOutput() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BattleRewardEntity reward)  $default,) {final _that = this;
switch (_that) {
case _SubmitBattleRewardOutput():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BattleRewardEntity reward)?  $default,) {final _that = this;
switch (_that) {
case _SubmitBattleRewardOutput() when $default != null:
return $default(_that.reward);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitBattleRewardOutput extends SubmitBattleRewardOutput {
  const _SubmitBattleRewardOutput({required this.reward}): super._();
  

@override final  BattleRewardEntity reward;

/// Create a copy of SubmitBattleRewardOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitBattleRewardOutputCopyWith<_SubmitBattleRewardOutput> get copyWith => __$SubmitBattleRewardOutputCopyWithImpl<_SubmitBattleRewardOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitBattleRewardOutput&&(identical(other.reward, reward) || other.reward == reward));
}


@override
int get hashCode {
    return Object.hash(runtimeType,reward);
}

@override
String toString() {
    return 'SubmitBattleRewardOutput(reward: $reward)';
}


}

/// @nodoc
abstract mixin class _$SubmitBattleRewardOutputCopyWith<$Res> implements $SubmitBattleRewardOutputCopyWith<$Res> {
  factory _$SubmitBattleRewardOutputCopyWith(_SubmitBattleRewardOutput value, $Res Function(_SubmitBattleRewardOutput) _then) = __$SubmitBattleRewardOutputCopyWithImpl;
@override @useResult
$Res call({
 BattleRewardEntity reward
});


@override $BattleRewardEntityCopyWith<$Res> get reward;

}
/// @nodoc
class __$SubmitBattleRewardOutputCopyWithImpl<$Res>
    implements _$SubmitBattleRewardOutputCopyWith<$Res> {
  __$SubmitBattleRewardOutputCopyWithImpl(this._self, this._then);

  final _SubmitBattleRewardOutput _self;
  final $Res Function(_SubmitBattleRewardOutput) _then;

/// Create a copy of SubmitBattleRewardOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reward = null,}) {
  return _then(_SubmitBattleRewardOutput(
reward: null == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as BattleRewardEntity,
  ));
}

/// Create a copy of SubmitBattleRewardOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattleRewardEntityCopyWith<$Res> get reward {
  
  return $BattleRewardEntityCopyWith<$Res>(_self.reward, (value) {
    return _then(_self.copyWith(reward: value));
  });
}
}

// dart format on
