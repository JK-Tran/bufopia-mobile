// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_player_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaderboardPlayerModel {

@JsonKey(name: 'uid') String get uid;@JsonKey(name: 'display_name') String? get displayName;@JsonKey(name: 'avatar_url') String? get avatarUrl;@JsonKey(name: 'xp') int? get xp;@JsonKey(name: 'level') int? get level;@JsonKey(name: 'streak') int? get streak;@JsonKey(name: 'win_streak') int? get winStreak;@JsonKey(name: 'value') int? get value;@JsonKey(name: 'rank') int? get rank;
/// Create a copy of LeaderboardPlayerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardPlayerModelCopyWith<LeaderboardPlayerModel> get copyWith => _$LeaderboardPlayerModelCopyWithImpl<LeaderboardPlayerModel>(this as LeaderboardPlayerModel, _$identity);

  /// Serializes this LeaderboardPlayerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaderboardPlayerModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardPlayerModel&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.xp, _this.xp) || other.xp == _this.xp)&&(identical(other.level, _this.level) || other.level == _this.level)&&(identical(other.streak, _this.streak) || other.streak == _this.streak)&&(identical(other.winStreak, _this.winStreak) || other.winStreak == _this.winStreak)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.rank, _this.rank) || other.rank == _this.rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaderboardPlayerModel;
  return Object.hash(runtimeType,_this.uid,_this.displayName,_this.avatarUrl,_this.xp,_this.level,_this.streak,_this.winStreak,_this.value,_this.rank);
}

@override
String toString() {
  final _this = this as LeaderboardPlayerModel;
  return 'LeaderboardPlayerModel(uid: ${_this.uid}, displayName: ${_this.displayName}, avatarUrl: ${_this.avatarUrl}, xp: ${_this.xp}, level: ${_this.level}, streak: ${_this.streak}, winStreak: ${_this.winStreak}, value: ${_this.value}, rank: ${_this.rank})';
}


}

/// @nodoc
abstract mixin class $LeaderboardPlayerModelCopyWith<$Res>  {
  factory $LeaderboardPlayerModelCopyWith(LeaderboardPlayerModel value, $Res Function(LeaderboardPlayerModel) _then) = _$LeaderboardPlayerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String uid,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'xp') int? xp,@JsonKey(name: 'level') int? level,@JsonKey(name: 'streak') int? streak,@JsonKey(name: 'win_streak') int? winStreak,@JsonKey(name: 'value') int? value,@JsonKey(name: 'rank') int? rank
});




}
/// @nodoc
class _$LeaderboardPlayerModelCopyWithImpl<$Res>
    implements $LeaderboardPlayerModelCopyWith<$Res> {
  _$LeaderboardPlayerModelCopyWithImpl(this._self, this._then);

  final LeaderboardPlayerModel _self;
  final $Res Function(LeaderboardPlayerModel) _then;

/// Create a copy of LeaderboardPlayerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? xp = freezed,Object? level = freezed,Object? streak = freezed,Object? winStreak = freezed,Object? value = freezed,Object? rank = freezed,}) {
  return _then(LeaderboardPlayerModel(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,xp: freezed == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,streak: freezed == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int?,winStreak: freezed == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaderboardPlayerModel].
extension LeaderboardPlayerModelPatterns on LeaderboardPlayerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardPlayerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardPlayerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardPlayerModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardPlayerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardPlayerModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardPlayerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'xp')  int? xp, @JsonKey(name: 'level')  int? level, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'win_streak')  int? winStreak, @JsonKey(name: 'value')  int? value, @JsonKey(name: 'rank')  int? rank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaderboardPlayerModel() when $default != null:
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.value,_that.rank);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'xp')  int? xp, @JsonKey(name: 'level')  int? level, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'win_streak')  int? winStreak, @JsonKey(name: 'value')  int? value, @JsonKey(name: 'rank')  int? rank)  $default,) {final _that = this;
switch (_that) {
case _LeaderboardPlayerModel():
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.value,_that.rank);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'xp')  int? xp, @JsonKey(name: 'level')  int? level, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'win_streak')  int? winStreak, @JsonKey(name: 'value')  int? value, @JsonKey(name: 'rank')  int? rank)?  $default,) {final _that = this;
switch (_that) {
case _LeaderboardPlayerModel() when $default != null:
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.value,_that.rank);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaderboardPlayerModel extends LeaderboardPlayerModel {
  const _LeaderboardPlayerModel({@JsonKey(name: 'uid') required this.uid, @JsonKey(name: 'display_name') this.displayName, @JsonKey(name: 'avatar_url') this.avatarUrl, @JsonKey(name: 'xp') this.xp, @JsonKey(name: 'level') this.level, @JsonKey(name: 'streak') this.streak, @JsonKey(name: 'win_streak') this.winStreak, @JsonKey(name: 'value') this.value, @JsonKey(name: 'rank') this.rank}): super._();
  factory _LeaderboardPlayerModel.fromJson(Map<String, dynamic> json) => _$LeaderboardPlayerModelFromJson(json);

@override@JsonKey(name: 'uid') final  String uid;
@override@JsonKey(name: 'display_name') final  String? displayName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override@JsonKey(name: 'xp') final  int? xp;
@override@JsonKey(name: 'level') final  int? level;
@override@JsonKey(name: 'streak') final  int? streak;
@override@JsonKey(name: 'win_streak') final  int? winStreak;
@override@JsonKey(name: 'value') final  int? value;
@override@JsonKey(name: 'rank') final  int? rank;

/// Create a copy of LeaderboardPlayerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardPlayerModelCopyWith<_LeaderboardPlayerModel> get copyWith => __$LeaderboardPlayerModelCopyWithImpl<_LeaderboardPlayerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaderboardPlayerModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardPlayerModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.level, level) || other.level == level)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.winStreak, winStreak) || other.winStreak == winStreak)&&(identical(other.value, value) || other.value == value)&&(identical(other.rank, rank) || other.rank == rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,uid,displayName,avatarUrl,xp,level,streak,winStreak,value,rank);
}

@override
String toString() {
    return 'LeaderboardPlayerModel(uid: $uid, displayName: $displayName, avatarUrl: $avatarUrl, xp: $xp, level: $level, streak: $streak, winStreak: $winStreak, value: $value, rank: $rank)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardPlayerModelCopyWith<$Res> implements $LeaderboardPlayerModelCopyWith<$Res> {
  factory _$LeaderboardPlayerModelCopyWith(_LeaderboardPlayerModel value, $Res Function(_LeaderboardPlayerModel) _then) = __$LeaderboardPlayerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String uid,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'xp') int? xp,@JsonKey(name: 'level') int? level,@JsonKey(name: 'streak') int? streak,@JsonKey(name: 'win_streak') int? winStreak,@JsonKey(name: 'value') int? value,@JsonKey(name: 'rank') int? rank
});




}
/// @nodoc
class __$LeaderboardPlayerModelCopyWithImpl<$Res>
    implements _$LeaderboardPlayerModelCopyWith<$Res> {
  __$LeaderboardPlayerModelCopyWithImpl(this._self, this._then);

  final _LeaderboardPlayerModel _self;
  final $Res Function(_LeaderboardPlayerModel) _then;

/// Create a copy of LeaderboardPlayerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? xp = freezed,Object? level = freezed,Object? streak = freezed,Object? winStreak = freezed,Object? value = freezed,Object? rank = freezed,}) {
  return _then(_LeaderboardPlayerModel(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,xp: freezed == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,streak: freezed == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int?,winStreak: freezed == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int?,rank: freezed == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
