// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Reward {

 int get gainedXp; int get streak; User? get user;
/// Create a copy of Reward
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardCopyWith<Reward> get copyWith => _$RewardCopyWithImpl<Reward>(this as Reward, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Reward;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reward&&(identical(other.gainedXp, _this.gainedXp) || other.gainedXp == _this.gainedXp)&&(identical(other.streak, _this.streak) || other.streak == _this.streak)&&(identical(other.user, _this.user) || other.user == _this.user));
}


@override
int get hashCode {
  final _this = this as Reward;
  return Object.hash(runtimeType,_this.gainedXp,_this.streak,_this.user);
}

@override
String toString() {
  final _this = this as Reward;
  return 'Reward(gainedXp: ${_this.gainedXp}, streak: ${_this.streak}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $RewardCopyWith<$Res>  {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) _then) = _$RewardCopyWithImpl;
@useResult
$Res call({
 int gainedXp, int streak, User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$RewardCopyWithImpl<$Res>
    implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._self, this._then);

  final Reward _self;
  final $Res Function(Reward) _then;

/// Create a copy of Reward
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gainedXp = null,Object? streak = null,Object? user = freezed,}) {
  return _then(Reward(
gainedXp: null == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of Reward
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Reward].
extension RewardPatterns on Reward {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Reward value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Reward() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Reward value)  $default,){
final _that = this;
switch (_that) {
case _Reward():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Reward value)?  $default,){
final _that = this;
switch (_that) {
case _Reward() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int gainedXp,  int streak,  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Reward() when $default != null:
return $default(_that.gainedXp,_that.streak,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int gainedXp,  int streak,  User? user)  $default,) {final _that = this;
switch (_that) {
case _Reward():
return $default(_that.gainedXp,_that.streak,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int gainedXp,  int streak,  User? user)?  $default,) {final _that = this;
switch (_that) {
case _Reward() when $default != null:
return $default(_that.gainedXp,_that.streak,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _Reward implements Reward {
  const _Reward({this.gainedXp = 0, this.streak = 0, this.user});
  

@override@JsonKey() final  int gainedXp;
@override@JsonKey() final  int streak;
@override final  User? user;

/// Create a copy of Reward
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardCopyWith<_Reward> get copyWith => __$RewardCopyWithImpl<_Reward>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reward&&(identical(other.gainedXp, gainedXp) || other.gainedXp == gainedXp)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,gainedXp,streak,user);
}

@override
String toString() {
    return 'Reward(gainedXp: $gainedXp, streak: $streak, user: $user)';
}


}

/// @nodoc
abstract mixin class _$RewardCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$RewardCopyWith(_Reward value, $Res Function(_Reward) _then) = __$RewardCopyWithImpl;
@override @useResult
$Res call({
 int gainedXp, int streak, User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$RewardCopyWithImpl<$Res>
    implements _$RewardCopyWith<$Res> {
  __$RewardCopyWithImpl(this._self, this._then);

  final _Reward _self;
  final $Res Function(_Reward) _then;

/// Create a copy of Reward
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gainedXp = null,Object? streak = null,Object? user = freezed,}) {
  return _then(_Reward(
gainedXp: null == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of Reward
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
