// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaderboardResponseModel {

@JsonKey(name: 'metric') String? get metric;@JsonKey(name: 'players') List<LeaderboardPlayerModel>? get players;
/// Create a copy of LeaderboardResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardResponseModelCopyWith<LeaderboardResponseModel> get copyWith => _$LeaderboardResponseModelCopyWithImpl<LeaderboardResponseModel>(this as LeaderboardResponseModel, _$identity);

  /// Serializes this LeaderboardResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaderboardResponseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardResponseModel&&(identical(other.metric, _this.metric) || other.metric == _this.metric)&&const DeepCollectionEquality().equals(other.players, _this.players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaderboardResponseModel;
  return Object.hash(runtimeType,_this.metric,const DeepCollectionEquality().hash(_this.players));
}

@override
String toString() {
  final _this = this as LeaderboardResponseModel;
  return 'LeaderboardResponseModel(metric: ${_this.metric}, players: ${_this.players})';
}


}

/// @nodoc
abstract mixin class $LeaderboardResponseModelCopyWith<$Res>  {
  factory $LeaderboardResponseModelCopyWith(LeaderboardResponseModel value, $Res Function(LeaderboardResponseModel) _then) = _$LeaderboardResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'metric') String? metric,@JsonKey(name: 'players') List<LeaderboardPlayerModel>? players
});




}
/// @nodoc
class _$LeaderboardResponseModelCopyWithImpl<$Res>
    implements $LeaderboardResponseModelCopyWith<$Res> {
  _$LeaderboardResponseModelCopyWithImpl(this._self, this._then);

  final LeaderboardResponseModel _self;
  final $Res Function(LeaderboardResponseModel) _then;

/// Create a copy of LeaderboardResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metric = freezed,Object? players = freezed,}) {
  return _then(LeaderboardResponseModel(
metric: freezed == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String?,players: freezed == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<LeaderboardPlayerModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaderboardResponseModel].
extension LeaderboardResponseModelPatterns on LeaderboardResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'metric')  String? metric, @JsonKey(name: 'players')  List<LeaderboardPlayerModel>? players)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaderboardResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'metric')  String? metric, @JsonKey(name: 'players')  List<LeaderboardPlayerModel>? players)  $default,) {final _that = this;
switch (_that) {
case _LeaderboardResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'metric')  String? metric, @JsonKey(name: 'players')  List<LeaderboardPlayerModel>? players)?  $default,) {final _that = this;
switch (_that) {
case _LeaderboardResponseModel() when $default != null:
return $default(_that.metric,_that.players);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaderboardResponseModel extends LeaderboardResponseModel {
  const _LeaderboardResponseModel({@JsonKey(name: 'metric') this.metric, @JsonKey(name: 'players')  List<LeaderboardPlayerModel>? players}): _players = players,super._();
  factory _LeaderboardResponseModel.fromJson(Map<String, dynamic> json) => _$LeaderboardResponseModelFromJson(json);

@override@JsonKey(name: 'metric') final  String? metric;
 final  List<LeaderboardPlayerModel>? _players;
@override@JsonKey(name: 'players') List<LeaderboardPlayerModel>? get players {
  final value = _players;
  if (value == null) return null;
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LeaderboardResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardResponseModelCopyWith<_LeaderboardResponseModel> get copyWith => __$LeaderboardResponseModelCopyWithImpl<_LeaderboardResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaderboardResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardResponseModel&&(identical(other.metric, metric) || other.metric == metric)&&const DeepCollectionEquality().equals(other.players, _players));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,metric,const DeepCollectionEquality().hash(_players));
}

@override
String toString() {
    return 'LeaderboardResponseModel(metric: $metric, players: $players)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardResponseModelCopyWith<$Res> implements $LeaderboardResponseModelCopyWith<$Res> {
  factory _$LeaderboardResponseModelCopyWith(_LeaderboardResponseModel value, $Res Function(_LeaderboardResponseModel) _then) = __$LeaderboardResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'metric') String? metric,@JsonKey(name: 'players') List<LeaderboardPlayerModel>? players
});




}
/// @nodoc
class __$LeaderboardResponseModelCopyWithImpl<$Res>
    implements _$LeaderboardResponseModelCopyWith<$Res> {
  __$LeaderboardResponseModelCopyWithImpl(this._self, this._then);

  final _LeaderboardResponseModel _self;
  final $Res Function(_LeaderboardResponseModel) _then;

/// Create a copy of LeaderboardResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metric = freezed,Object? players = freezed,}) {
  return _then(_LeaderboardResponseModel(
metric: freezed == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String?,players: freezed == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<LeaderboardPlayerModel>?,
  ));
}


}

// dart format on
