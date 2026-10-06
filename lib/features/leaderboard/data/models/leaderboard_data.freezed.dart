// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaderboardPlayerData {

@JsonKey(name: 'uid') String get uid;@JsonKey(name: 'display_name') String? get displayName;@JsonKey(name: 'avatar_url') String? get avatarUrl;@JsonKey(name: 'xp') int? get xp;@JsonKey(name: 'level') int? get level;@JsonKey(name: 'streak') int? get streak;@JsonKey(name: 'win_streak') int? get winStreak;@JsonKey(name: 'value') int? get value;@JsonKey(name: 'rank') int? get rank;
/// Create a copy of LeaderboardPlayerData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardPlayerDataCopyWith<LeaderboardPlayerData> get copyWith => _$LeaderboardPlayerDataCopyWithImpl<LeaderboardPlayerData>(this as LeaderboardPlayerData, _$identity);

  /// Serializes this LeaderboardPlayerData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaderboardPlayerData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardPlayerData&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.xp, _this.xp) || other.xp == _this.xp)&&(identical(other.level, _this.level) || other.level == _this.level)&&(identical(other.streak, _this.streak) || other.streak == _this.streak)&&(identical(other.winStreak, _this.winStreak) || other.winStreak == _this.winStreak)&&(identical(other.value, _this.value) || other.value == _this.value)&&(identical(other.rank, _this.rank) || other.rank == _this.rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaderboardPlayerData;
  return Object.hash(runtimeType,_this.uid,_this.displayName,_this.avatarUrl,_this.xp,_this.level,_this.streak,_this.winStreak,_this.value,_this.rank);
}

@override
String toString() {
  final _this = this as LeaderboardPlayerData;
  return 'LeaderboardPlayerData(uid: ${_this.uid}, displayName: ${_this.displayName}, avatarUrl: ${_this.avatarUrl}, xp: ${_this.xp}, level: ${_this.level}, streak: ${_this.streak}, winStreak: ${_this.winStreak}, value: ${_this.value}, rank: ${_this.rank})';
}


}

/// @nodoc
abstract mixin class $LeaderboardPlayerDataCopyWith<$Res>  {
  factory $LeaderboardPlayerDataCopyWith(LeaderboardPlayerData value, $Res Function(LeaderboardPlayerData) _then) = _$LeaderboardPlayerDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String uid,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'xp') int? xp,@JsonKey(name: 'level') int? level,@JsonKey(name: 'streak') int? streak,@JsonKey(name: 'win_streak') int? winStreak,@JsonKey(name: 'value') int? value,@JsonKey(name: 'rank') int? rank
});




}
/// @nodoc
class _$LeaderboardPlayerDataCopyWithImpl<$Res>
    implements $LeaderboardPlayerDataCopyWith<$Res> {
  _$LeaderboardPlayerDataCopyWithImpl(this._self, this._then);

  final LeaderboardPlayerData _self;
  final $Res Function(LeaderboardPlayerData) _then;

/// Create a copy of LeaderboardPlayerData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? xp = freezed,Object? level = freezed,Object? streak = freezed,Object? winStreak = freezed,Object? value = freezed,Object? rank = freezed,}) {
  return _then(LeaderboardPlayerData(
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


/// Adds pattern-matching-related methods to [LeaderboardPlayerData].
extension LeaderboardPlayerDataPatterns on LeaderboardPlayerData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardPlayerData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardPlayerData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardPlayerData value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardPlayerData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardPlayerData value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardPlayerData() when $default != null:
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
case _LeaderboardPlayerData() when $default != null:
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
case _LeaderboardPlayerData():
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
case _LeaderboardPlayerData() when $default != null:
return $default(_that.uid,_that.displayName,_that.avatarUrl,_that.xp,_that.level,_that.streak,_that.winStreak,_that.value,_that.rank);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaderboardPlayerData extends LeaderboardPlayerData {
  const _LeaderboardPlayerData({@JsonKey(name: 'uid') required this.uid, @JsonKey(name: 'display_name') this.displayName, @JsonKey(name: 'avatar_url') this.avatarUrl, @JsonKey(name: 'xp') this.xp, @JsonKey(name: 'level') this.level, @JsonKey(name: 'streak') this.streak, @JsonKey(name: 'win_streak') this.winStreak, @JsonKey(name: 'value') this.value, @JsonKey(name: 'rank') this.rank}): super._();
  factory _LeaderboardPlayerData.fromJson(Map<String, dynamic> json) => _$LeaderboardPlayerDataFromJson(json);

@override@JsonKey(name: 'uid') final  String uid;
@override@JsonKey(name: 'display_name') final  String? displayName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override@JsonKey(name: 'xp') final  int? xp;
@override@JsonKey(name: 'level') final  int? level;
@override@JsonKey(name: 'streak') final  int? streak;
@override@JsonKey(name: 'win_streak') final  int? winStreak;
@override@JsonKey(name: 'value') final  int? value;
@override@JsonKey(name: 'rank') final  int? rank;

/// Create a copy of LeaderboardPlayerData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardPlayerDataCopyWith<_LeaderboardPlayerData> get copyWith => __$LeaderboardPlayerDataCopyWithImpl<_LeaderboardPlayerData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaderboardPlayerDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardPlayerData&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.xp, xp) || other.xp == xp)&&(identical(other.level, level) || other.level == level)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.winStreak, winStreak) || other.winStreak == winStreak)&&(identical(other.value, value) || other.value == value)&&(identical(other.rank, rank) || other.rank == rank));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,uid,displayName,avatarUrl,xp,level,streak,winStreak,value,rank);
}

@override
String toString() {
    return 'LeaderboardPlayerData(uid: $uid, displayName: $displayName, avatarUrl: $avatarUrl, xp: $xp, level: $level, streak: $streak, winStreak: $winStreak, value: $value, rank: $rank)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardPlayerDataCopyWith<$Res> implements $LeaderboardPlayerDataCopyWith<$Res> {
  factory _$LeaderboardPlayerDataCopyWith(_LeaderboardPlayerData value, $Res Function(_LeaderboardPlayerData) _then) = __$LeaderboardPlayerDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String uid,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'xp') int? xp,@JsonKey(name: 'level') int? level,@JsonKey(name: 'streak') int? streak,@JsonKey(name: 'win_streak') int? winStreak,@JsonKey(name: 'value') int? value,@JsonKey(name: 'rank') int? rank
});




}
/// @nodoc
class __$LeaderboardPlayerDataCopyWithImpl<$Res>
    implements _$LeaderboardPlayerDataCopyWith<$Res> {
  __$LeaderboardPlayerDataCopyWithImpl(this._self, this._then);

  final _LeaderboardPlayerData _self;
  final $Res Function(_LeaderboardPlayerData) _then;

/// Create a copy of LeaderboardPlayerData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? xp = freezed,Object? level = freezed,Object? streak = freezed,Object? winStreak = freezed,Object? value = freezed,Object? rank = freezed,}) {
  return _then(_LeaderboardPlayerData(
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


/// @nodoc
mixin _$LeaderboardDataResponse {

@JsonKey(name: 'metric') String? get metric;@JsonKey(name: 'players') List<LeaderboardPlayerData>? get players;
/// Create a copy of LeaderboardDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardDataResponseCopyWith<LeaderboardDataResponse> get copyWith => _$LeaderboardDataResponseCopyWithImpl<LeaderboardDataResponse>(this as LeaderboardDataResponse, _$identity);

  /// Serializes this LeaderboardDataResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaderboardDataResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardDataResponse&&(identical(other.metric, _this.metric) || other.metric == _this.metric)&&const DeepCollectionEquality().equals(other.players, _this.players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaderboardDataResponse;
  return Object.hash(runtimeType,_this.metric,const DeepCollectionEquality().hash(_this.players));
}

@override
String toString() {
  final _this = this as LeaderboardDataResponse;
  return 'LeaderboardDataResponse(metric: ${_this.metric}, players: ${_this.players})';
}


}

/// @nodoc
abstract mixin class $LeaderboardDataResponseCopyWith<$Res>  {
  factory $LeaderboardDataResponseCopyWith(LeaderboardDataResponse value, $Res Function(LeaderboardDataResponse) _then) = _$LeaderboardDataResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'metric') String? metric,@JsonKey(name: 'players') List<LeaderboardPlayerData>? players
});




}
/// @nodoc
class _$LeaderboardDataResponseCopyWithImpl<$Res>
    implements $LeaderboardDataResponseCopyWith<$Res> {
  _$LeaderboardDataResponseCopyWithImpl(this._self, this._then);

  final LeaderboardDataResponse _self;
  final $Res Function(LeaderboardDataResponse) _then;

/// Create a copy of LeaderboardDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metric = freezed,Object? players = freezed,}) {
  return _then(LeaderboardDataResponse(
metric: freezed == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String?,players: freezed == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<LeaderboardPlayerData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaderboardDataResponse].
extension LeaderboardDataResponsePatterns on LeaderboardDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'metric')  String? metric, @JsonKey(name: 'players')  List<LeaderboardPlayerData>? players)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaderboardDataResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'metric')  String? metric, @JsonKey(name: 'players')  List<LeaderboardPlayerData>? players)  $default,) {final _that = this;
switch (_that) {
case _LeaderboardDataResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'metric')  String? metric, @JsonKey(name: 'players')  List<LeaderboardPlayerData>? players)?  $default,) {final _that = this;
switch (_that) {
case _LeaderboardDataResponse() when $default != null:
return $default(_that.metric,_that.players);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaderboardDataResponse extends LeaderboardDataResponse {
  const _LeaderboardDataResponse({@JsonKey(name: 'metric') this.metric, @JsonKey(name: 'players')  List<LeaderboardPlayerData>? players}): _players = players,super._();
  factory _LeaderboardDataResponse.fromJson(Map<String, dynamic> json) => _$LeaderboardDataResponseFromJson(json);

@override@JsonKey(name: 'metric') final  String? metric;
 final  List<LeaderboardPlayerData>? _players;
@override@JsonKey(name: 'players') List<LeaderboardPlayerData>? get players {
  final value = _players;
  if (value == null) return null;
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LeaderboardDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardDataResponseCopyWith<_LeaderboardDataResponse> get copyWith => __$LeaderboardDataResponseCopyWithImpl<_LeaderboardDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaderboardDataResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardDataResponse&&(identical(other.metric, metric) || other.metric == metric)&&const DeepCollectionEquality().equals(other.players, _players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,metric,const DeepCollectionEquality().hash(_players));
}

@override
String toString() {
    return 'LeaderboardDataResponse(metric: $metric, players: $players)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardDataResponseCopyWith<$Res> implements $LeaderboardDataResponseCopyWith<$Res> {
  factory _$LeaderboardDataResponseCopyWith(_LeaderboardDataResponse value, $Res Function(_LeaderboardDataResponse) _then) = __$LeaderboardDataResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'metric') String? metric,@JsonKey(name: 'players') List<LeaderboardPlayerData>? players
});




}
/// @nodoc
class __$LeaderboardDataResponseCopyWithImpl<$Res>
    implements _$LeaderboardDataResponseCopyWith<$Res> {
  __$LeaderboardDataResponseCopyWithImpl(this._self, this._then);

  final _LeaderboardDataResponse _self;
  final $Res Function(_LeaderboardDataResponse) _then;

/// Create a copy of LeaderboardDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metric = freezed,Object? players = freezed,}) {
  return _then(_LeaderboardDataResponse(
metric: freezed == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String?,players: freezed == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<LeaderboardPlayerData>?,
  ));
}


}

// dart format on
