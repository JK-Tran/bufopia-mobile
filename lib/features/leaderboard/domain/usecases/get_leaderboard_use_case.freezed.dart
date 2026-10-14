// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_leaderboard_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetLeaderboardInput {

 String get metric; int get limit;
/// Create a copy of GetLeaderboardInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetLeaderboardInputCopyWith<GetLeaderboardInput> get copyWith => _$GetLeaderboardInputCopyWithImpl<GetLeaderboardInput>(this as GetLeaderboardInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetLeaderboardInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetLeaderboardInput&&(identical(other.metric, _this.metric) || other.metric == _this.metric)&&(identical(other.limit, _this.limit) || other.limit == _this.limit));
}


@override
int get hashCode {
  final _this = this as GetLeaderboardInput;
  return Object.hash(runtimeType,_this.metric,_this.limit);
}

@override
String toString() {
  final _this = this as GetLeaderboardInput;
  return 'GetLeaderboardInput(metric: ${_this.metric}, limit: ${_this.limit})';
}


}

/// @nodoc
abstract mixin class $GetLeaderboardInputCopyWith<$Res>  {
  factory $GetLeaderboardInputCopyWith(GetLeaderboardInput value, $Res Function(GetLeaderboardInput) _then) = _$GetLeaderboardInputCopyWithImpl;
@useResult
$Res call({
 String metric, int limit
});




}
/// @nodoc
class _$GetLeaderboardInputCopyWithImpl<$Res>
    implements $GetLeaderboardInputCopyWith<$Res> {
  _$GetLeaderboardInputCopyWithImpl(this._self, this._then);

  final GetLeaderboardInput _self;
  final $Res Function(GetLeaderboardInput) _then;

/// Create a copy of GetLeaderboardInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metric = null,Object? limit = null,}) {
  return _then(GetLeaderboardInput(
metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetLeaderboardInput].
extension GetLeaderboardInputPatterns on GetLeaderboardInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetLeaderboardInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetLeaderboardInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetLeaderboardInput value)  $default,){
final _that = this;
switch (_that) {
case _GetLeaderboardInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetLeaderboardInput value)?  $default,){
final _that = this;
switch (_that) {
case _GetLeaderboardInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String metric,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetLeaderboardInput() when $default != null:
return $default(_that.metric,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String metric,  int limit)  $default,) {final _that = this;
switch (_that) {
case _GetLeaderboardInput():
return $default(_that.metric,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String metric,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _GetLeaderboardInput() when $default != null:
return $default(_that.metric,_that.limit);case _:
  return null;

}
}

}

/// @nodoc


class _GetLeaderboardInput extends GetLeaderboardInput {
  const _GetLeaderboardInput({this.metric = 'xp', this.limit = 50}): super._();
  

@override@JsonKey() final  String metric;
@override@JsonKey() final  int limit;

/// Create a copy of GetLeaderboardInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetLeaderboardInputCopyWith<_GetLeaderboardInput> get copyWith => __$GetLeaderboardInputCopyWithImpl<_GetLeaderboardInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetLeaderboardInput&&(identical(other.metric, metric) || other.metric == metric)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode {
    return Object.hash(runtimeType,metric,limit);
}

@override
String toString() {
    return 'GetLeaderboardInput(metric: $metric, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetLeaderboardInputCopyWith<$Res> implements $GetLeaderboardInputCopyWith<$Res> {
  factory _$GetLeaderboardInputCopyWith(_GetLeaderboardInput value, $Res Function(_GetLeaderboardInput) _then) = __$GetLeaderboardInputCopyWithImpl;
@override @useResult
$Res call({
 String metric, int limit
});




}
/// @nodoc
class __$GetLeaderboardInputCopyWithImpl<$Res>
    implements _$GetLeaderboardInputCopyWith<$Res> {
  __$GetLeaderboardInputCopyWithImpl(this._self, this._then);

  final _GetLeaderboardInput _self;
  final $Res Function(_GetLeaderboardInput) _then;

/// Create a copy of GetLeaderboardInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metric = null,Object? limit = null,}) {
  return _then(_GetLeaderboardInput(
metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$GetLeaderboardOutput {

 Leaderboard get leaderboard;
/// Create a copy of GetLeaderboardOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetLeaderboardOutputCopyWith<GetLeaderboardOutput> get copyWith => _$GetLeaderboardOutputCopyWithImpl<GetLeaderboardOutput>(this as GetLeaderboardOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetLeaderboardOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetLeaderboardOutput&&(identical(other.leaderboard, _this.leaderboard) || other.leaderboard == _this.leaderboard));
}


@override
int get hashCode {
  final _this = this as GetLeaderboardOutput;
  return Object.hash(runtimeType,_this.leaderboard);
}

@override
String toString() {
  final _this = this as GetLeaderboardOutput;
  return 'GetLeaderboardOutput(leaderboard: ${_this.leaderboard})';
}


}

/// @nodoc
abstract mixin class $GetLeaderboardOutputCopyWith<$Res>  {
  factory $GetLeaderboardOutputCopyWith(GetLeaderboardOutput value, $Res Function(GetLeaderboardOutput) _then) = _$GetLeaderboardOutputCopyWithImpl;
@useResult
$Res call({
 Leaderboard leaderboard
});


$LeaderboardCopyWith<$Res> get leaderboard;

}
/// @nodoc
class _$GetLeaderboardOutputCopyWithImpl<$Res>
    implements $GetLeaderboardOutputCopyWith<$Res> {
  _$GetLeaderboardOutputCopyWithImpl(this._self, this._then);

  final GetLeaderboardOutput _self;
  final $Res Function(GetLeaderboardOutput) _then;

/// Create a copy of GetLeaderboardOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leaderboard = null,}) {
  return _then(GetLeaderboardOutput(
null == leaderboard ? _self.leaderboard : leaderboard // ignore: cast_nullable_to_non_nullable
as Leaderboard,
  ));
}
/// Create a copy of GetLeaderboardOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaderboardCopyWith<$Res> get leaderboard {
  
  return $LeaderboardCopyWith<$Res>(_self.leaderboard, (value) {
    return _then(_self.copyWith(leaderboard: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetLeaderboardOutput].
extension GetLeaderboardOutputPatterns on GetLeaderboardOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetLeaderboardOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetLeaderboardOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetLeaderboardOutput value)  $default,){
final _that = this;
switch (_that) {
case _GetLeaderboardOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetLeaderboardOutput value)?  $default,){
final _that = this;
switch (_that) {
case _GetLeaderboardOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Leaderboard leaderboard)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetLeaderboardOutput() when $default != null:
return $default(_that.leaderboard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Leaderboard leaderboard)  $default,) {final _that = this;
switch (_that) {
case _GetLeaderboardOutput():
return $default(_that.leaderboard);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Leaderboard leaderboard)?  $default,) {final _that = this;
switch (_that) {
case _GetLeaderboardOutput() when $default != null:
return $default(_that.leaderboard);case _:
  return null;

}
}

}

/// @nodoc


class _GetLeaderboardOutput extends GetLeaderboardOutput {
  const _GetLeaderboardOutput(this.leaderboard): super._();
  

@override final  Leaderboard leaderboard;

/// Create a copy of GetLeaderboardOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetLeaderboardOutputCopyWith<_GetLeaderboardOutput> get copyWith => __$GetLeaderboardOutputCopyWithImpl<_GetLeaderboardOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetLeaderboardOutput&&(identical(other.leaderboard, leaderboard) || other.leaderboard == leaderboard));
}


@override
int get hashCode {
    return Object.hash(runtimeType,leaderboard);
}

@override
String toString() {
    return 'GetLeaderboardOutput(leaderboard: $leaderboard)';
}


}

/// @nodoc
abstract mixin class _$GetLeaderboardOutputCopyWith<$Res> implements $GetLeaderboardOutputCopyWith<$Res> {
  factory _$GetLeaderboardOutputCopyWith(_GetLeaderboardOutput value, $Res Function(_GetLeaderboardOutput) _then) = __$GetLeaderboardOutputCopyWithImpl;
@override @useResult
$Res call({
 Leaderboard leaderboard
});


@override $LeaderboardCopyWith<$Res> get leaderboard;

}
/// @nodoc
class __$GetLeaderboardOutputCopyWithImpl<$Res>
    implements _$GetLeaderboardOutputCopyWith<$Res> {
  __$GetLeaderboardOutputCopyWithImpl(this._self, this._then);

  final _GetLeaderboardOutput _self;
  final $Res Function(_GetLeaderboardOutput) _then;

/// Create a copy of GetLeaderboardOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leaderboard = null,}) {
  return _then(_GetLeaderboardOutput(
null == leaderboard ? _self.leaderboard : leaderboard // ignore: cast_nullable_to_non_nullable
as Leaderboard,
  ));
}

/// Create a copy of GetLeaderboardOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaderboardCopyWith<$Res> get leaderboard {
  
  return $LeaderboardCopyWith<$Res>(_self.leaderboard, (value) {
    return _then(_self.copyWith(leaderboard: value));
  });
}
}

// dart format on
