// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RewardData {

@JsonKey(name: 'gainedXp') int? get gainedXp;@JsonKey(name: 'streak') int? get streak;@JsonKey(name: 'user') UserData? get user;
/// Create a copy of RewardData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardDataCopyWith<RewardData> get copyWith => _$RewardDataCopyWithImpl<RewardData>(this as RewardData, _$identity);

  /// Serializes this RewardData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RewardData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardData&&(identical(other.gainedXp, _this.gainedXp) || other.gainedXp == _this.gainedXp)&&(identical(other.streak, _this.streak) || other.streak == _this.streak)&&(identical(other.user, _this.user) || other.user == _this.user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RewardData;
  return Object.hash(runtimeType,_this.gainedXp,_this.streak,_this.user);
}

@override
String toString() {
  final _this = this as RewardData;
  return 'RewardData(gainedXp: ${_this.gainedXp}, streak: ${_this.streak}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $RewardDataCopyWith<$Res>  {
  factory $RewardDataCopyWith(RewardData value, $Res Function(RewardData) _then) = _$RewardDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'gainedXp') int? gainedXp,@JsonKey(name: 'streak') int? streak,@JsonKey(name: 'user') UserData? user
});


$UserDataCopyWith<$Res>? get user;

}
/// @nodoc
class _$RewardDataCopyWithImpl<$Res>
    implements $RewardDataCopyWith<$Res> {
  _$RewardDataCopyWithImpl(this._self, this._then);

  final RewardData _self;
  final $Res Function(RewardData) _then;

/// Create a copy of RewardData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gainedXp = freezed,Object? streak = freezed,Object? user = freezed,}) {
  return _then(RewardData(
gainedXp: freezed == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int?,streak: freezed == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}
/// Create a copy of RewardData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [RewardData].
extension RewardDataPatterns on RewardData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardData value)  $default,){
final _that = this;
switch (_that) {
case _RewardData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardData value)?  $default,){
final _that = this;
switch (_that) {
case _RewardData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'gainedXp')  int? gainedXp, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'user')  UserData? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardData() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'gainedXp')  int? gainedXp, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'user')  UserData? user)  $default,) {final _that = this;
switch (_that) {
case _RewardData():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'gainedXp')  int? gainedXp, @JsonKey(name: 'streak')  int? streak, @JsonKey(name: 'user')  UserData? user)?  $default,) {final _that = this;
switch (_that) {
case _RewardData() when $default != null:
return $default(_that.gainedXp,_that.streak,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RewardData extends RewardData {
  const _RewardData({@JsonKey(name: 'gainedXp') this.gainedXp, @JsonKey(name: 'streak') this.streak, @JsonKey(name: 'user') this.user}): super._();
  factory _RewardData.fromJson(Map<String, dynamic> json) => _$RewardDataFromJson(json);

@override@JsonKey(name: 'gainedXp') final  int? gainedXp;
@override@JsonKey(name: 'streak') final  int? streak;
@override@JsonKey(name: 'user') final  UserData? user;

/// Create a copy of RewardData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardDataCopyWith<_RewardData> get copyWith => __$RewardDataCopyWithImpl<_RewardData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardData&&(identical(other.gainedXp, gainedXp) || other.gainedXp == gainedXp)&&(identical(other.streak, streak) || other.streak == streak)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,gainedXp,streak,user);
}

@override
String toString() {
    return 'RewardData(gainedXp: $gainedXp, streak: $streak, user: $user)';
}


}

/// @nodoc
abstract mixin class _$RewardDataCopyWith<$Res> implements $RewardDataCopyWith<$Res> {
  factory _$RewardDataCopyWith(_RewardData value, $Res Function(_RewardData) _then) = __$RewardDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'gainedXp') int? gainedXp,@JsonKey(name: 'streak') int? streak,@JsonKey(name: 'user') UserData? user
});


@override $UserDataCopyWith<$Res>? get user;

}
/// @nodoc
class __$RewardDataCopyWithImpl<$Res>
    implements _$RewardDataCopyWith<$Res> {
  __$RewardDataCopyWithImpl(this._self, this._then);

  final _RewardData _self;
  final $Res Function(_RewardData) _then;

/// Create a copy of RewardData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gainedXp = freezed,Object? streak = freezed,Object? user = freezed,}) {
  return _then(_RewardData(
gainedXp: freezed == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int?,streak: freezed == streak ? _self.streak : streak // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,
  ));
}

/// Create a copy of RewardData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
