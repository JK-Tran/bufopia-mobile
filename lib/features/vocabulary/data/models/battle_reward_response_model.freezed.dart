// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_reward_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BattleRewardResponseModel {

@JsonKey(name: 'success') bool? get success;@JsonKey(name: 'gainedXp') int? get gainedXp;@JsonKey(name: 'leveledUp') bool? get leveledUp;@JsonKey(name: 'oldLevel') int? get oldLevel;@JsonKey(name: 'newLevel') int? get newLevel;@JsonKey(name: 'streakIncreased') bool? get streakIncreased;@JsonKey(name: 'streak') int? get streak;@JsonKey(name: 'winStreak') int? get winStreak;@JsonKey(name: 'user') UserModel? get user;
/// Create a copy of BattleRewardResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleRewardResponseModelCopyWith<BattleRewardResponseModel> get copyWith => _$BattleRewardResponseModelCopyWithImpl<BattleRewardResponseModel>(this as BattleRewardResponseModel, _$identity);

  /// Serializes this BattleRewardResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BattleRewardResponseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleRewardResponseModel&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.gainedXp, _this.gainedXp) || other.gainedXp == _this.gainedXp)&&(identical(other.leveledUp, _this.leveledUp) || other.leveledUp == _this.leveledUp)&&(identical(other.oldLevel, _this.oldLevel) || other.oldLevel == _this.oldLevel)&&(identical(other.newLevel, _this.newLevel) || other.newLevel == _this.newLevel)&&(identical(other.streakIncreased, _this.streakIncreased) || other.streakIncreased == _this.streakIncreased)&&(identical(other.streak, _this.streak) || other.streak == _this.streak)&&(identical(other.winStreak, _this.winStreak) || other.winStreak == _this.winStreak)&&(identical(other.user, _this.user) || other.user == _this.user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BattleRewardResponseModel;
  return Object.hash(runtimeType,_this.success,_this.gainedXp,_this.leveledUp,_this.oldLevel,_this.newLevel,_this.streakIncreased,_this.streak,_this.winStreak,_this.user);
}

@override
String toString() {
  final _this = this as BattleRewardResponseModel;
  return 'BattleRewardResponseModel(success: ${_this.success}, gainedXp: ${_this.gainedXp}, leveledUp: ${_this.leveledUp}, oldLevel: ${_this.oldLevel}, newLevel: ${_this.newLevel}, streakIncreased: ${_this.streakIncreased}, streak: ${_this.streak}, winStreak: ${_this.winStreak}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $BattleRewardResponseModelCopyWith<$Res>  {
  factory $BattleRewardResponseModelCopyWith(BattleRewardResponseModel value, $Res Function(BattleRewardResponseModel) _then) = _$BattleRewardResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'gainedXp') int? gainedXp,@JsonKey(name: 'leveledUp') bool? leveledUp,@JsonKey(name: 'oldLevel') int? oldLevel,@JsonKey(name: 'newLevel') int? newLevel,@JsonKey(name: 'streakIncreased') bool? streakIncreased,@JsonKey(name: 'streak') int? streak,@JsonKey(name: 'winStreak') int? winStreak,@JsonKey(name: 'user') UserModel? user
});


$UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$BattleRewardResponseModelCopyWithImpl<$Res>
    implements $BattleRewardResponseModelCopyWith<$Res> {
  _$BattleRewardResponseModelCopyWithImpl(this._self, this._then);

  final BattleRewardResponseModel _self;
  final $Res Function(BattleRewardResponseModel) _then;

/// Create a copy of BattleRewardResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? gainedXp = freezed,Object? leveledUp = freezed,Object? oldLevel = freezed,Object? newLevel = freezed,Object? streakIncreased = freezed,Object? streak = freezed,Object? winStreak = freezed,Object? user = freezed,}) {
  return _then(BattleRewardResponseModel(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,gainedXp: freezed == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int?,leveledUp: freezed == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool?,oldLevel: freezed == oldLevel ? _self.oldLevel : oldLevel // ignore: cast_nullable_to_non_nullable
as int?,newLevel: freezed == newLevel ? _self.newLevel : newLevel // ignore: cast_nullable_to_non_nullable
as int?,streakIncreased: freezed == streakIncreased ? _self.streakIncreased : streakIncreased // ignore: cast_nullable_to_non_nullable
as bool?,streak: freezed == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int?,winStreak: freezed == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}
/// Create a copy of BattleRewardResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [BattleRewardResponseModel].
extension BattleRewardResponseModelPatterns on BattleRewardResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleRewardResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleRewardResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleRewardResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _BattleRewardResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleRewardResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _BattleRewardResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'gainedXp')  int? gainedXp, @JsonKey(name: 'leveledUp')  bool? leveledUp, @JsonKey(name: 'oldLevel')  int? oldLevel, @JsonKey(name: 'newLevel')  int? newLevel, @JsonKey(name: 'streakIncreased')  bool? streakIncreased, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'winStreak')  int? winStreak, @JsonKey(name: 'user')  UserModel? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BattleRewardResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'gainedXp')  int? gainedXp, @JsonKey(name: 'leveledUp')  bool? leveledUp, @JsonKey(name: 'oldLevel')  int? oldLevel, @JsonKey(name: 'newLevel')  int? newLevel, @JsonKey(name: 'streakIncreased')  bool? streakIncreased, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'winStreak')  int? winStreak, @JsonKey(name: 'user')  UserModel? user)  $default,) {final _that = this;
switch (_that) {
case _BattleRewardResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'gainedXp')  int? gainedXp, @JsonKey(name: 'leveledUp')  bool? leveledUp, @JsonKey(name: 'oldLevel')  int? oldLevel, @JsonKey(name: 'newLevel')  int? newLevel, @JsonKey(name: 'streakIncreased')  bool? streakIncreased, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'winStreak')  int? winStreak, @JsonKey(name: 'user')  UserModel? user)?  $default,) {final _that = this;
switch (_that) {
case _BattleRewardResponseModel() when $default != null:
return $default(_that.success,_that.gainedXp,_that.leveledUp,_that.oldLevel,_that.newLevel,_that.streakIncreased,_that.streak,_that.winStreak,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BattleRewardResponseModel extends BattleRewardResponseModel {
  const _BattleRewardResponseModel({@JsonKey(name: 'success') this.success, @JsonKey(name: 'gainedXp') this.gainedXp, @JsonKey(name: 'leveledUp') this.leveledUp, @JsonKey(name: 'oldLevel') this.oldLevel, @JsonKey(name: 'newLevel') this.newLevel, @JsonKey(name: 'streakIncreased') this.streakIncreased, @JsonKey(name: 'streak') this.streak, @JsonKey(name: 'winStreak') this.winStreak, @JsonKey(name: 'user') this.user}): super._();
  factory _BattleRewardResponseModel.fromJson(Map<String, dynamic> json) => _$BattleRewardResponseModelFromJson(json);

@override@JsonKey(name: 'success') final  bool? success;
@override@JsonKey(name: 'gainedXp') final  int? gainedXp;
@override@JsonKey(name: 'leveledUp') final  bool? leveledUp;
@override@JsonKey(name: 'oldLevel') final  int? oldLevel;
@override@JsonKey(name: 'newLevel') final  int? newLevel;
@override@JsonKey(name: 'streakIncreased') final  bool? streakIncreased;
@override@JsonKey(name: 'streak') final  int? streak;
@override@JsonKey(name: 'winStreak') final  int? winStreak;
@override@JsonKey(name: 'user') final  UserModel? user;

/// Create a copy of BattleRewardResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleRewardResponseModelCopyWith<_BattleRewardResponseModel> get copyWith => __$BattleRewardResponseModelCopyWithImpl<_BattleRewardResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BattleRewardResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleRewardResponseModel&&(identical(other.success, success) || other.success == success)&&(identical(other.gainedXp, gainedXp) || other.gainedXp == gainedXp)&&(identical(other.leveledUp, leveledUp) || other.leveledUp == leveledUp)&&(identical(other.oldLevel, oldLevel) || other.oldLevel == oldLevel)&&(identical(other.newLevel, newLevel) || other.newLevel == newLevel)&&(identical(other.streakIncreased, streakIncreased) || other.streakIncreased == streakIncreased)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.winStreak, winStreak) || other.winStreak == winStreak)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,success,gainedXp,leveledUp,oldLevel,newLevel,streakIncreased,streak,winStreak,user);
}

@override
String toString() {
    return 'BattleRewardResponseModel(success: $success, gainedXp: $gainedXp, leveledUp: $leveledUp, oldLevel: $oldLevel, newLevel: $newLevel, streakIncreased: $streakIncreased, streak: $streak, winStreak: $winStreak, user: $user)';
}


}

/// @nodoc
abstract mixin class _$BattleRewardResponseModelCopyWith<$Res> implements $BattleRewardResponseModelCopyWith<$Res> {
  factory _$BattleRewardResponseModelCopyWith(_BattleRewardResponseModel value, $Res Function(_BattleRewardResponseModel) _then) = __$BattleRewardResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'gainedXp') int? gainedXp,@JsonKey(name: 'leveledUp') bool? leveledUp,@JsonKey(name: 'oldLevel') int? oldLevel,@JsonKey(name: 'newLevel') int? newLevel,@JsonKey(name: 'streakIncreased') bool? streakIncreased,@JsonKey(name: 'streak') int? streak,@JsonKey(name: 'winStreak') int? winStreak,@JsonKey(name: 'user') UserModel? user
});


@override $UserModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$BattleRewardResponseModelCopyWithImpl<$Res>
    implements _$BattleRewardResponseModelCopyWith<$Res> {
  __$BattleRewardResponseModelCopyWithImpl(this._self, this._then);

  final _BattleRewardResponseModel _self;
  final $Res Function(_BattleRewardResponseModel) _then;

/// Create a copy of BattleRewardResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? gainedXp = freezed,Object? leveledUp = freezed,Object? oldLevel = freezed,Object? newLevel = freezed,Object? streakIncreased = freezed,Object? streak = freezed,Object? winStreak = freezed,Object? user = freezed,}) {
  return _then(_BattleRewardResponseModel(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,gainedXp: freezed == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int?,leveledUp: freezed == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool?,oldLevel: freezed == oldLevel ? _self.oldLevel : oldLevel // ignore: cast_nullable_to_non_nullable
as int?,newLevel: freezed == newLevel ? _self.newLevel : newLevel // ignore: cast_nullable_to_non_nullable
as int?,streakIncreased: freezed == streakIncreased ? _self.streakIncreased : streakIncreased // ignore: cast_nullable_to_non_nullable
as bool?,streak: freezed == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int?,winStreak: freezed == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,
  ));
}

/// Create a copy of BattleRewardResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
