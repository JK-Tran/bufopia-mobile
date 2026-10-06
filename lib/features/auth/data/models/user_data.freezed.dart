// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserData {

@JsonKey(name: 'uid') String get uid;@JsonKey(name: 'display_name') String? get displayName;@JsonKey(name: 'avatar_url') String? get avatarUrl;@JsonKey(name: 'xp') int? get xp;@JsonKey(name: 'level') int? get level;@JsonKey(name: 'streak') int? get streak;@JsonKey(name: 'win_streak') int? get winStreak;@JsonKey(name: 'last_active_date') String? get lastActiveDate;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'currentLevelXp') int? get currentLevelXp;@JsonKey(name: 'neededForNext') int? get neededForNext;@JsonKey(name: 'progressPercent') double? get progressPercent;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.xp, _this.xp) || other.xp == _this.xp)&&(identical(other.level, _this.level) || other.level == _this.level)&&(identical(other.streak, _this.streak) || other.streak == _this.streak)&&(identical(other.winStreak, _this.winStreak) || other.winStreak == _this.winStreak)&&(identical(other.lastActiveDate, _this.lastActiveDate) || other.lastActiveDate == _this.lastActiveDate)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.currentLevelXp, _this.currentLevelXp) || other.currentLevelXp == _this.currentLevelXp)&&(identical(other.neededForNext, _this.neededForNext) || other.neededForNext == _this.neededForNext)&&(identical(other.progressPercent, _this.progressPercent) || other.progressPercent == _this.progressPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserData;
  return Object.hash(runtimeType,_this.uid,_this.displayName,_this.avatarUrl,_this.xp,_this.level,_this.streak,_this.winStreak,_this.lastActiveDate,_this.createdAt,_this.updatedAt,_this.currentLevelXp,_this.neededForNext,_this.progressPercent);
}

@override
String toString() {
  final _this = this as UserData;
  return 'UserData(uid: ${_this.uid}, displayName: ${_this.displayName}, avatarUrl: ${_this.avatarUrl}, xp: ${_this.xp}, level: ${_this.level}, streak: ${_this.streak}, winStreak: ${_this.winStreak}, lastActiveDate: ${_this.lastActiveDate}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, currentLevelXp: ${_this.currentLevelXp}, neededForNext: ${_this.neededForNext}, progressPercent: ${_this.progressPercent})';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String uid,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'xp') int? xp,@JsonKey(name: 'level') int? level,@JsonKey(name: 'streak') int? streak,@JsonKey(name: 'win_streak') int? winStreak,@JsonKey(name: 'last_active_date') String? lastActiveDate,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'currentLevelXp') int? currentLevelXp,@JsonKey(name: 'neededForNext') int? neededForNext,@JsonKey(name: 'progressPercent') double? progressPercent
});




}
/// @nodoc
class _$UserDataCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? xp = freezed,Object? level = freezed,Object? streak = freezed,Object? winStreak = freezed,Object? lastActiveDate = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? currentLevelXp = freezed,Object? neededForNext = freezed,Object? progressPercent = freezed,}) {
  return _then(UserData(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,xp: freezed == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,streak: freezed == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int?,winStreak: freezed == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int?,lastActiveDate: freezed == lastActiveDate ? _self.lastActiveDate : lastActiveDate // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,currentLevelXp: freezed == currentLevelXp ? _self.currentLevelXp : currentLevelXp // ignore: cast_nullable_to_non_nullable
as int?,neededForNext: freezed == neededForNext ? _self.neededForNext : neededForNext // ignore: cast_nullable_to_non_nullable
as int?,progressPercent: freezed == progressPercent ? _self.progressPercent : progressPercent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserData value)  $default,){
final _that = this;
switch (_that) {
case _UserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserData value)?  $default,){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'xp')  int? xp, @JsonKey(name: 'level')  int? level, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'win_streak')  int? winStreak, @JsonKey(name: 'last_active_date')  String? lastActiveDate, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'currentLevelXp')  int? currentLevelXp, @JsonKey(name: 'neededForNext')  int? neededForNext, @JsonKey(name: 'progressPercent')  double? progressPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.lastActiveDate,_that.createdAt,_that.updatedAt,_that.currentLevelXp,_that.neededForNext,_that.progressPercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'xp')  int? xp, @JsonKey(name: 'level')  int? level, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'win_streak')  int? winStreak, @JsonKey(name: 'last_active_date')  String? lastActiveDate, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'currentLevelXp')  int? currentLevelXp, @JsonKey(name: 'neededForNext')  int? neededForNext, @JsonKey(name: 'progressPercent')  double? progressPercent)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.lastActiveDate,_that.createdAt,_that.updatedAt,_that.currentLevelXp,_that.neededForNext,_that.progressPercent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'xp')  int? xp, @JsonKey(name: 'level')  int? level, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'win_streak')  int? winStreak, @JsonKey(name: 'last_active_date')  String? lastActiveDate, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'currentLevelXp')  int? currentLevelXp, @JsonKey(name: 'neededForNext')  int? neededForNext, @JsonKey(name: 'progressPercent')  double? progressPercent)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.lastActiveDate,_that.createdAt,_that.updatedAt,_that.currentLevelXp,_that.neededForNext,_that.progressPercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserData extends UserData {
  const _UserData({@JsonKey(name: 'uid') required this.uid, @JsonKey(name: 'display_name') this.displayName, @JsonKey(name: 'avatar_url') this.avatarUrl, @JsonKey(name: 'xp') this.xp, @JsonKey(name: 'level') this.level, @JsonKey(name: 'streak') this.streak, @JsonKey(name: 'win_streak') this.winStreak, @JsonKey(name: 'last_active_date') this.lastActiveDate, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'currentLevelXp') this.currentLevelXp, @JsonKey(name: 'neededForNext') this.neededForNext, @JsonKey(name: 'progressPercent') this.progressPercent}): super._();
  factory _UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

@override@JsonKey(name: 'uid') final  String uid;
@override@JsonKey(name: 'display_name') final  String? displayName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override@JsonKey(name: 'xp') final  int? xp;
@override@JsonKey(name: 'level') final  int? level;
@override@JsonKey(name: 'streak') final  int? streak;
@override@JsonKey(name: 'win_streak') final  int? winStreak;
@override@JsonKey(name: 'last_active_date') final  String? lastActiveDate;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'currentLevelXp') final  int? currentLevelXp;
@override@JsonKey(name: 'neededForNext') final  int? neededForNext;
@override@JsonKey(name: 'progressPercent') final  double? progressPercent;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataCopyWith<_UserData> get copyWith => __$UserDataCopyWithImpl<_UserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.level, level) || other.level == level)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.winStreak, winStreak) || other.winStreak == winStreak)&&(identical(other.lastActiveDate, lastActiveDate) || other.lastActiveDate == lastActiveDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.currentLevelXp, currentLevelXp) || other.currentLevelXp == currentLevelXp)&&(identical(other.neededForNext, neededForNext) || other.neededForNext == neededForNext)&&(identical(other.progressPercent, progressPercent) || other.progressPercent == progressPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,uid,displayName,avatarUrl,xp,level,streak,winStreak,lastActiveDate,createdAt,updatedAt,currentLevelXp,neededForNext,progressPercent);
}

@override
String toString() {
    return 'UserData(uid: $uid, displayName: $displayName, avatarUrl: $avatarUrl, xp: $xp, level: $level, streak: $streak, winStreak: $winStreak, lastActiveDate: $lastActiveDate, createdAt: $createdAt, updatedAt: $updatedAt, currentLevelXp: $currentLevelXp, neededForNext: $neededForNext, progressPercent: $progressPercent)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String uid,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'xp') int? xp,@JsonKey(name: 'level') int? level,@JsonKey(name: 'streak') int? streak,@JsonKey(name: 'win_streak') int? winStreak,@JsonKey(name: 'last_active_date') String? lastActiveDate,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'currentLevelXp') int? currentLevelXp,@JsonKey(name: 'neededForNext') int? neededForNext,@JsonKey(name: 'progressPercent') double? progressPercent
});




}
/// @nodoc
class __$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? xp = freezed,Object? level = freezed,Object? streak = freezed,Object? winStreak = freezed,Object? lastActiveDate = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? currentLevelXp = freezed,Object? neededForNext = freezed,Object? progressPercent = freezed,}) {
  return _then(_UserData(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,xp: freezed == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,streak: freezed == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int?,winStreak: freezed == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int?,lastActiveDate: freezed == lastActiveDate ? _self.lastActiveDate : lastActiveDate // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,currentLevelXp: freezed == currentLevelXp ? _self.currentLevelXp : currentLevelXp // ignore: cast_nullable_to_non_nullable
as int?,neededForNext: freezed == neededForNext ? _self.neededForNext : neededForNext // ignore: cast_nullable_to_non_nullable
as int?,progressPercent: freezed == progressPercent ? _self.progressPercent : progressPercent // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
