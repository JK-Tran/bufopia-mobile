// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Leaderboard {

 String get metric; List<LeaderboardPlayer> get players;
/// Create a copy of Leaderboard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardCopyWith<Leaderboard> get copyWith => _$LeaderboardCopyWithImpl<Leaderboard>(this as Leaderboard, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Leaderboard;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Leaderboard&&(identical(other.metric, _this.metric) || other.metric == _this.metric)&&const DeepCollectionEquality().equals(other.players, _this.players));
}


@override
int get hashCode {
  final _this = this as Leaderboard;
  return Object.hash(runtimeType,_this.metric,const DeepCollectionEquality().hash(_this.players));
}

@override
String toString() {
  final _this = this as Leaderboard;
  return 'Leaderboard(metric: ${_this.metric}, players: ${_this.players})';
}


}

/// @nodoc
abstract mixin class $LeaderboardCopyWith<$Res>  {
  factory $LeaderboardCopyWith(Leaderboard value, $Res Function(Leaderboard) _then) = _$LeaderboardCopyWithImpl;
@useResult
$Res call({
 String metric, List<LeaderboardPlayer> players
});




}
/// @nodoc
class _$LeaderboardCopyWithImpl<$Res>
    implements $LeaderboardCopyWith<$Res> {
  _$LeaderboardCopyWithImpl(this._self, this._then);

  final Leaderboard _self;
  final $Res Function(Leaderboard) _then;

/// Create a copy of Leaderboard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metric = null,Object? players = null,}) {
  return _then(Leaderboard(
metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<LeaderboardPlayer>,
  ));
}

}


/// Adds pattern-matching-related methods to [Leaderboard].
extension LeaderboardPatterns on Leaderboard {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Leaderboard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Leaderboard() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Leaderboard value)  $default,){
final _that = this;
switch (_that) {
case _Leaderboard():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Leaderboard value)?  $default,){
final _that = this;
switch (_that) {
case _Leaderboard() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String metric,  List<LeaderboardPlayer> players)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Leaderboard() when $default != null:
return $default(_that.metric,_that.players);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String metric,  List<LeaderboardPlayer> players)  $default,) {final _that = this;
switch (_that) {
case _Leaderboard():
return $default(_that.metric,_that.players);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String metric,  List<LeaderboardPlayer> players)?  $default,) {final _that = this;
switch (_that) {
case _Leaderboard() when $default != null:
return $default(_that.metric,_that.players);case _:
  return null;

}
}

}

/// @nodoc


class _Leaderboard implements Leaderboard {
  const _Leaderboard({this.metric = 'xp',  List<LeaderboardPlayer> players = const []}): _players = players;
  

@override@JsonKey() final  String metric;
 final  List<LeaderboardPlayer> _players;
@override@JsonKey() List<LeaderboardPlayer> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}


/// Create a copy of Leaderboard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardCopyWith<_Leaderboard> get copyWith => __$LeaderboardCopyWithImpl<_Leaderboard>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Leaderboard&&(identical(other.metric, metric) || other.metric == metric)&&const DeepCollectionEquality().equals(other.players, _players));
}


@override
int get hashCode {
    return Object.hash(runtimeType,metric,const DeepCollectionEquality().hash(_players));
}

@override
String toString() {
    return 'Leaderboard(metric: $metric, players: $players)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardCopyWith<$Res> implements $LeaderboardCopyWith<$Res> {
  factory _$LeaderboardCopyWith(_Leaderboard value, $Res Function(_Leaderboard) _then) = __$LeaderboardCopyWithImpl;
@override @useResult
$Res call({
 String metric, List<LeaderboardPlayer> players
});




}
/// @nodoc
class __$LeaderboardCopyWithImpl<$Res>
    implements _$LeaderboardCopyWith<$Res> {
  __$LeaderboardCopyWithImpl(this._self, this._then);

  final _Leaderboard _self;
  final $Res Function(_Leaderboard) _then;

/// Create a copy of Leaderboard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metric = null,Object? players = null,}) {
  return _then(_Leaderboard(
metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<LeaderboardPlayer>,
  ));
}


}

/// @nodoc
mixin _$LeaderboardPlayer {

 String get uid; String get displayName; String get avatarUrl; int get xp; int get level; int get streak; int get winStreak; int get value; int get rank;
/// Create a copy of LeaderboardPlayer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardPlayerCopyWith<LeaderboardPlayer> get copyWith => _$LeaderboardPlayerCopyWithImpl<LeaderboardPlayer>(this as LeaderboardPlayer, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LeaderboardPlayer;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardPlayer&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.xp, _this.xp) || other.xp == _this.xp)&&(identical(other.level, _this.level) || other.level == _this.level)&&(identical(other.streak, _this.streak) || other.streak == _this.streak)&&(identical(other.winStreak, _this.winStreak) || other.winStreak == _this.winStreak)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.rank, _this.rank) || other.rank == _this.rank));
}


@override
int get hashCode {
  final _this = this as LeaderboardPlayer;
  return Object.hash(runtimeType,_this.uid,_this.displayName,_this.avatarUrl,_this.xp,_this.level,_this.streak,_this.winStreak,_this.value,_this.rank);
}

@override
String toString() {
  final _this = this as LeaderboardPlayer;
  return 'LeaderboardPlayer(uid: ${_this.uid}, displayName: ${_this.displayName}, avatarUrl: ${_this.avatarUrl}, xp: ${_this.xp}, level: ${_this.level}, streak: ${_this.streak}, winStreak: ${_this.winStreak}, value: ${_this.value}, rank: ${_this.rank})';
}


}

/// @nodoc
abstract mixin class $LeaderboardPlayerCopyWith<$Res>  {
  factory $LeaderboardPlayerCopyWith(LeaderboardPlayer value, $Res Function(LeaderboardPlayer) _then) = _$LeaderboardPlayerCopyWithImpl;
@useResult
$Res call({
 String uid, String displayName, String avatarUrl, int xp, int level, int streak, int winStreak, int value, int rank
});




}
/// @nodoc
class _$LeaderboardPlayerCopyWithImpl<$Res>
    implements $LeaderboardPlayerCopyWith<$Res> {
  _$LeaderboardPlayerCopyWithImpl(this._self, this._then);

  final LeaderboardPlayer _self;
  final $Res Function(LeaderboardPlayer) _then;

/// Create a copy of LeaderboardPlayer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? displayName = null,Object? avatarUrl = null,Object? xp = null,Object? level = null,Object? streak = null,Object? winStreak = null,Object? value = null,Object? rank = null,}) {
  return _then(LeaderboardPlayer(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,winStreak: null == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaderboardPlayer].
extension LeaderboardPlayerPatterns on LeaderboardPlayer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardPlayer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardPlayer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardPlayer value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardPlayer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardPlayer value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardPlayer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String displayName,  String avatarUrl,  int xp,  int level,  int streak,  int winStreak,  int value,  int rank)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaderboardPlayer() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String displayName,  String avatarUrl,  int xp,  int level,  int streak,  int winStreak,  int value,  int rank)  $default,) {final _that = this;
switch (_that) {
case _LeaderboardPlayer():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String displayName,  String avatarUrl,  int xp,  int level,  int streak,  int winStreak,  int value,  int rank)?  $default,) {final _that = this;
switch (_that) {
case _LeaderboardPlayer() when $default != null:
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.value,_that.rank);case _:
  return null;

}
}

}

/// @nodoc


class _LeaderboardPlayer implements LeaderboardPlayer {
  const _LeaderboardPlayer({this.uid = '', this.displayName = '', this.avatarUrl = '', this.xp = 0, this.level = 1, this.streak = 0, this.winStreak = 0, this.value = 0, this.rank = 0});
  

@override@JsonKey() final  String uid;
@override@JsonKey() final  String displayName;
@override@JsonKey() final  String avatarUrl;
@override@JsonKey() final  int xp;
@override@JsonKey() final  int level;
@override@JsonKey() final  int streak;
@override@JsonKey() final  int winStreak;
@override@JsonKey() final  int value;
@override@JsonKey() final  int rank;

/// Create a copy of LeaderboardPlayer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardPlayerCopyWith<_LeaderboardPlayer> get copyWith => __$LeaderboardPlayerCopyWithImpl<_LeaderboardPlayer>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardPlayer&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.level, level) || other.level == level)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.winStreak, winStreak) || other.winStreak == winStreak)&&(identical(other.value, value) || other.value == value)&&(identical(other.rank, rank) || other.rank == rank));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,displayName,avatarUrl,xp,level,streak,winStreak,value,rank);
}

@override
String toString() {
    return 'LeaderboardPlayer(uid: $uid, displayName: $displayName, avatarUrl: $avatarUrl, xp: $xp, level: $level, streak: $streak, winStreak: $winStreak, value: $value, rank: $rank)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardPlayerCopyWith<$Res> implements $LeaderboardPlayerCopyWith<$Res> {
  factory _$LeaderboardPlayerCopyWith(_LeaderboardPlayer value, $Res Function(_LeaderboardPlayer) _then) = __$LeaderboardPlayerCopyWithImpl;
@override @useResult
$Res call({
 String uid, String displayName, String avatarUrl, int xp, int level, int streak, int winStreak, int value, int rank
});




}
/// @nodoc
class __$LeaderboardPlayerCopyWithImpl<$Res>
    implements _$LeaderboardPlayerCopyWith<$Res> {
  __$LeaderboardPlayerCopyWithImpl(this._self, this._then);

  final _LeaderboardPlayer _self;
  final $Res Function(_LeaderboardPlayer) _then;

/// Create a copy of LeaderboardPlayer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? displayName = null,Object? avatarUrl = null,Object? xp = null,Object? level = null,Object? streak = null,Object? winStreak = null,Object? value = null,Object? rank = null,}) {
  return _then(_LeaderboardPlayer(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,streak: null == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int,winStreak: null == winStreak ? _self.winStreak : winStreak // ignore: cast_nullable_to_non_nullable
as int,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
