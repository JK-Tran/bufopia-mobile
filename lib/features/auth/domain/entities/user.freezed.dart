// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$User {

 String get uid; String get displayName; String get avatarUrl; int get xp; int get level; int get streak; int get winStreak; String get lastActiveDate; int get currentLevelXp; int get neededForNext; double get progressPercent; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as User;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.xp, _this.xp) || other.xp == _this.xp)&&(identical(other.level, _this.level) || other.level == _this.level)&&(identical(other.streak, _this.streak) || other.streak == _this.streak)&&(identical(other.winStreak, _this.winStreak) || other.winStreak == _this.winStreak)&&(identical(other.lastActiveDate, _this.lastActiveDate) || other.lastActiveDate == _this.lastActiveDate)&&(identical(other.currentLevelXp, _this.currentLevelXp) || other.currentLevelXp == _this.currentLevelXp)&&(identical(other.neededForNext, _this.neededForNext) || other.neededForNext == _this.neededForNext)&&(identical(other.progressPercent, _this.progressPercent) || other.progressPercent == _this.progressPercent)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt));
}


@override
int get hashCode {
  final _this = this as User;
  return Object.hash(runtimeType,_this.uid,_this.displayName,_this.avatarUrl,_this.xp,_this.level,_this.streak,_this.winStreak,_this.lastActiveDate,_this.currentLevelXp,_this.neededForNext,_this.progressPercent,_this.createdAt,_this.updatedAt);
}

@override
String toString() {
  final _this = this as User;
  return 'User(uid: ${_this.uid}, displayName: ${_this.displayName}, avatarUrl: ${_this.avatarUrl}, xp: ${_this.xp}, level: ${_this.level}, streak: ${_this.streak}, winStreak: ${_this.winStreak}, lastActiveDate: ${_this.lastActiveDate}, currentLevelXp: ${_this.currentLevelXp}, neededForNext: ${_this.neededForNext}, progressPercent: ${_this.progressPercent}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt})';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String uid, String displayName, String avatarUrl, int xp, int level, int streak, int winStreak, String lastActiveDate, int currentLevelXp, int neededForNext, double progressPercent, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? displayName = null,Object? avatarUrl = null,Object? xp = null,Object? level = null,Object? streak = null,Object? winStreak = null,Object? lastActiveDate = null,Object? currentLevelXp = null,Object? neededForNext = null,Object? progressPercent = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(User(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,winStreak: null == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int,lastActiveDate: null == lastActiveDate ? _self.lastActiveDate : lastActiveDate // ignore: cast_nullable_to_non_nullable
as String,currentLevelXp: null == currentLevelXp ? _self.currentLevelXp : currentLevelXp // ignore: cast_nullable_to_non_nullable
as int,neededForNext: null == neededForNext ? _self.neededForNext : neededForNext // ignore: cast_nullable_to_non_nullable
as int,progressPercent: null == progressPercent ? _self.progressPercent : progressPercent // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String displayName,  String avatarUrl,  int xp,  int level,  int streak,  int winStreak,  String lastActiveDate,  int currentLevelXp,  int neededForNext,  double progressPercent,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.lastActiveDate,_that.currentLevelXp,_that.neededForNext,_that.progressPercent,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String displayName,  String avatarUrl,  int xp,  int level,  int streak,  int winStreak,  String lastActiveDate,  int currentLevelXp,  int neededForNext,  double progressPercent,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.lastActiveDate,_that.currentLevelXp,_that.neededForNext,_that.progressPercent,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String displayName,  String avatarUrl,  int xp,  int level,  int streak,  int winStreak,  String lastActiveDate,  int currentLevelXp,  int neededForNext,  double progressPercent,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.lastActiveDate,_that.currentLevelXp,_that.neededForNext,_that.progressPercent,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _User implements User {
  const _User({this.uid = '', this.displayName = '', this.avatarUrl = '', this.xp = 0, this.level = 1, this.streak = 0, this.winStreak = 0, this.lastActiveDate = '', this.currentLevelXp = 0, this.neededForNext = 100, this.progressPercent = 0.0, this.createdAt, this.updatedAt});
  

@override@JsonKey() final  String uid;
@override@JsonKey() final  String displayName;
@override@JsonKey() final  String avatarUrl;
@override@JsonKey() final  int xp;
@override@JsonKey() final  int level;
@override@JsonKey() final  int streak;
@override@JsonKey() final  int winStreak;
@override@JsonKey() final  String lastActiveDate;
@override@JsonKey() final  int currentLevelXp;
@override@JsonKey() final  int neededForNext;
@override@JsonKey() final  double progressPercent;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.level, level) || other.level == level)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.winStreak, winStreak) || other.winStreak == winStreak)&&(identical(other.lastActiveDate, lastActiveDate) || other.lastActiveDate == lastActiveDate)&&(identical(other.currentLevelXp, currentLevelXp) || other.currentLevelXp == currentLevelXp)&&(identical(other.neededForNext, neededForNext) || other.neededForNext == neededForNext)&&(identical(other.progressPercent, progressPercent) || other.progressPercent == progressPercent)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,displayName,avatarUrl,xp,level,streak,winStreak,lastActiveDate,currentLevelXp,neededForNext,progressPercent,createdAt,updatedAt);
}

@override
String toString() {
    return 'User(uid: $uid, displayName: $displayName, avatarUrl: $avatarUrl, xp: $xp, level: $level, streak: $streak, winStreak: $winStreak, lastActiveDate: $lastActiveDate, currentLevelXp: $currentLevelXp, neededForNext: $neededForNext, progressPercent: $progressPercent, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String uid, String displayName, String avatarUrl, int xp, int level, int streak, int winStreak, String lastActiveDate, int currentLevelXp, int neededForNext, double progressPercent, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? displayName = null,Object? avatarUrl = null,Object? xp = null,Object? level = null,Object? streak = null,Object? winStreak = null,Object? lastActiveDate = null,Object? currentLevelXp = null,Object? neededForNext = null,Object? progressPercent = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_User(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,winStreak: null == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int,lastActiveDate: null == lastActiveDate ? _self.lastActiveDate : lastActiveDate // ignore: cast_nullable_to_non_nullable
as String,currentLevelXp: null == currentLevelXp ? _self.currentLevelXp : currentLevelXp // ignore: cast_nullable_to_non_nullable
as int,neededForNext: null == neededForNext ? _self.neededForNext : neededForNext // ignore: cast_nullable_to_non_nullable
as int,progressPercent: null == progressPercent ? _self.progressPercent : progressPercent // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
