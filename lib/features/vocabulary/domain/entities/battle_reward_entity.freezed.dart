// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_reward_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BattleRewardEntity {

 bool get success; int get gainedXp; bool get leveledUp; int get oldLevel; int get newLevel; bool get streakIncreased; int get streak; int get winStreak; UserEntity? get user;
/// Create a copy of BattleRewardEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleRewardEntityCopyWith<BattleRewardEntity> get copyWith => _$BattleRewardEntityCopyWithImpl<BattleRewardEntity>(this as BattleRewardEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BattleRewardEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleRewardEntity&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.gainedXp, _this.gainedXp) || other.gainedXp == _this.gainedXp)&&(identical(other.leveledUp, _this.leveledUp) || other.leveledUp == _this.leveledUp)&&(identical(other.oldLevel, _this.oldLevel) || other.oldLevel == _this.oldLevel)&&(identical(other.newLevel, _this.newLevel) || other.newLevel == _this.newLevel)&&(identical(other.streakIncreased, _this.streakIncreased) || other.streakIncreased == _this.streakIncreased)&&(identical(other.streak, _this.streak) || other.streak == _this.streak)&&(identical(other.winStreak, _this.winStreak) || other.winStreak == _this.winStreak)&&(identical(other.user, _this.user) || other.user == _this.user));
}


@override
int get hashCode {
  final _this = this as BattleRewardEntity;
  return Object.hash(runtimeType,_this.success,_this.gainedXp,_this.leveledUp,_this.oldLevel,_this.newLevel,_this.streakIncreased,_this.streak,_this.winStreak,_this.user);
}

@override
String toString() {
  final _this = this as BattleRewardEntity;
  return 'BattleRewardEntity(success: ${_this.success}, gainedXp: ${_this.gainedXp}, leveledUp: ${_this.leveledUp}, oldLevel: ${_this.oldLevel}, newLevel: ${_this.newLevel}, streakIncreased: ${_this.streakIncreased}, streak: ${_this.streak}, winStreak: ${_this.winStreak}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $BattleRewardEntityCopyWith<$Res>  {
  factory $BattleRewardEntityCopyWith(BattleRewardEntity value, $Res Function(BattleRewardEntity) _then) = _$BattleRewardEntityCopyWithImpl;
@useResult
$Res call({
 bool success, int gainedXp, bool leveledUp, int oldLevel, int newLevel, bool streakIncreased, int streak, int winStreak, UserEntity? user
});


$UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class _$BattleRewardEntityCopyWithImpl<$Res>
    implements $BattleRewardEntityCopyWith<$Res> {
  _$BattleRewardEntityCopyWithImpl(this._self, this._then);

  final BattleRewardEntity _self;
  final $Res Function(BattleRewardEntity) _then;

/// Create a copy of BattleRewardEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? gainedXp = null,Object? leveledUp = null,Object? oldLevel = null,Object? newLevel = null,Object? streakIncreased = null,Object? streak = null,Object? winStreak = null,Object? user = freezed,}) {
  return _then(BattleRewardEntity(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,gainedXp: null == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int,leveledUp: null == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool,oldLevel: null == oldLevel ? _self.oldLevel : oldLevel // ignore: cast_nullable_to_non_nullable
as int,newLevel: null == newLevel ? _self.newLevel : newLevel // ignore: cast_nullable_to_non_nullable
as int,streakIncreased: null == streakIncreased ? _self.streakIncreased : streakIncreased // ignore: cast_nullable_to_non_nullable
as bool,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,winStreak: null == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,
  ));
}
/// Create a copy of BattleRewardEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [BattleRewardEntity].
extension BattleRewardEntityPatterns on BattleRewardEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleRewardEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleRewardEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleRewardEntity value)  $default,){
final _that = this;
switch (_that) {
case _BattleRewardEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleRewardEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BattleRewardEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  int gainedXp,  bool leveledUp,  int oldLevel,  int newLevel,  bool streakIncreased,  int streak,  int winStreak,  UserEntity? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleRewardEntity() when $default != null:
return $default(_that.success,_that.gainedXp,_that.leveledUp,_that.oldLevel,_that.newLevel,_that.streakIncreased,_that.streak,_that.winStreak,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  int gainedXp,  bool leveledUp,  int oldLevel,  int newLevel,  bool streakIncreased,  int streak,  int winStreak,  UserEntity? user)  $default,) {final _that = this;
switch (_that) {
case _BattleRewardEntity():
return $default(_that.success,_that.gainedXp,_that.leveledUp,_that.oldLevel,_that.newLevel,_that.streakIncreased,_that.streak,_that.winStreak,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  int gainedXp,  bool leveledUp,  int oldLevel,  int newLevel,  bool streakIncreased,  int streak,  int winStreak,  UserEntity? user)?  $default,) {final _that = this;
switch (_that) {
case _BattleRewardEntity() when $default != null:
return $default(_that.success,_that.gainedXp,_that.leveledUp,_that.oldLevel,_that.newLevel,_that.streakIncreased,_that.streak,_that.winStreak,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _BattleRewardEntity implements BattleRewardEntity {
  const _BattleRewardEntity({this.success = true, this.gainedXp = 0, this.leveledUp = false, this.oldLevel = 1, this.newLevel = 1, this.streakIncreased = false, this.streak = 0, this.winStreak = 0, this.user});
  

@override@JsonKey() final  bool success;
@override@JsonKey() final  int gainedXp;
@override@JsonKey() final  bool leveledUp;
@override@JsonKey() final  int oldLevel;
@override@JsonKey() final  int newLevel;
@override@JsonKey() final  bool streakIncreased;
@override@JsonKey() final  int streak;
@override@JsonKey() final  int winStreak;
@override final  UserEntity? user;

/// Create a copy of BattleRewardEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleRewardEntityCopyWith<_BattleRewardEntity> get copyWith => __$BattleRewardEntityCopyWithImpl<_BattleRewardEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleRewardEntity&&(identical(other.success, success) || other.success == success)&&(identical(other.gainedXp, gainedXp) || other.gainedXp == gainedXp)&&(identical(other.leveledUp, leveledUp) || other.leveledUp == leveledUp)&&(identical(other.oldLevel, oldLevel) || other.oldLevel == oldLevel)&&(identical(other.newLevel, newLevel) || other.newLevel == newLevel)&&(identical(other.streakIncreased, streakIncreased) || other.streakIncreased == streakIncreased)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.winStreak, winStreak) || other.winStreak == winStreak)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success,gainedXp,leveledUp,oldLevel,newLevel,streakIncreased,streak,winStreak,user);
}

@override
String toString() {
    return 'BattleRewardEntity(success: $success, gainedXp: $gainedXp, leveledUp: $leveledUp, oldLevel: $oldLevel, newLevel: $newLevel, streakIncreased: $streakIncreased, streak: $streak, winStreak: $winStreak, user: $user)';
}


}

/// @nodoc
abstract mixin class _$BattleRewardEntityCopyWith<$Res> implements $BattleRewardEntityCopyWith<$Res> {
  factory _$BattleRewardEntityCopyWith(_BattleRewardEntity value, $Res Function(_BattleRewardEntity) _then) = __$BattleRewardEntityCopyWithImpl;
@override @useResult
$Res call({
 bool success, int gainedXp, bool leveledUp, int oldLevel, int newLevel, bool streakIncreased, int streak, int winStreak, UserEntity? user
});


@override $UserEntityCopyWith<$Res>? get user;

}
/// @nodoc
class __$BattleRewardEntityCopyWithImpl<$Res>
    implements _$BattleRewardEntityCopyWith<$Res> {
  __$BattleRewardEntityCopyWithImpl(this._self, this._then);

  final _BattleRewardEntity _self;
  final $Res Function(_BattleRewardEntity) _then;

/// Create a copy of BattleRewardEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? gainedXp = null,Object? leveledUp = null,Object? oldLevel = null,Object? newLevel = null,Object? streakIncreased = null,Object? streak = null,Object? winStreak = null,Object? user = freezed,}) {
  return _then(_BattleRewardEntity(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,gainedXp: null == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int,leveledUp: null == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool,oldLevel: null == oldLevel ? _self.oldLevel : oldLevel // ignore: cast_nullable_to_non_nullable
as int,newLevel: null == newLevel ? _self.newLevel : newLevel // ignore: cast_nullable_to_non_nullable
as int,streakIncreased: null == streakIncreased ? _self.streakIncreased : streakIncreased // ignore: cast_nullable_to_non_nullable
as bool,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,winStreak: null == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity?,
  ));
}

/// Create a copy of BattleRewardEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntityCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntityCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
