// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaderboardEvent {

 String get metric;
/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardEventCopyWith<LeaderboardEvent> get copyWith => _$LeaderboardEventCopyWithImpl<LeaderboardEvent>(this as LeaderboardEvent, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LeaderboardEvent;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardEvent&&(identical(other.metric, _this.metric) || other.metric == _this.metric));
}


@override
int get hashCode {
  final _this = this as LeaderboardEvent;
  return Object.hash(runtimeType,_this.metric);
}

@override
String toString() {
  final _this = this as LeaderboardEvent;
  return 'LeaderboardEvent(metric: ${_this.metric})';
}


}

/// @nodoc
abstract mixin class $LeaderboardEventCopyWith<$Res>  {
  factory $LeaderboardEventCopyWith(LeaderboardEvent value, $Res Function(LeaderboardEvent) _then) = _$LeaderboardEventCopyWithImpl;
@useResult
$Res call({
 String metric
});




}
/// @nodoc
class _$LeaderboardEventCopyWithImpl<$Res>
    implements $LeaderboardEventCopyWith<$Res> {
  _$LeaderboardEventCopyWithImpl(this._self, this._then);

  final LeaderboardEvent _self;
  final $Res Function(LeaderboardEvent) _then;

/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metric = null,}) {
  return _then(_self.copyWith(
metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaderboardEvent].
extension LeaderboardEventPatterns on LeaderboardEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LeaderboardLoaded value)?  loaded,TResult Function( _LeaderboardMetricChanged value)?  metricChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardLoaded() when loaded != null:
return loaded(_that);case _LeaderboardMetricChanged() when metricChanged != null:
return metricChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LeaderboardLoaded value)  loaded,required TResult Function( _LeaderboardMetricChanged value)  metricChanged,}){
final _that = this;
switch (_that) {
case _LeaderboardLoaded():
return loaded(_that);case _LeaderboardMetricChanged():
return metricChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LeaderboardLoaded value)?  loaded,TResult? Function( _LeaderboardMetricChanged value)?  metricChanged,}){
final _that = this;
switch (_that) {
case _LeaderboardLoaded() when loaded != null:
return loaded(_that);case _LeaderboardMetricChanged() when metricChanged != null:
return metricChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String metric,  int limit)?  loaded,TResult Function( String metric)?  metricChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaderboardLoaded() when loaded != null:
return loaded(_that.metric,_that.limit);case _LeaderboardMetricChanged() when metricChanged != null:
return metricChanged(_that.metric);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String metric,  int limit)  loaded,required TResult Function( String metric)  metricChanged,}) {final _that = this;
switch (_that) {
case _LeaderboardLoaded():
return loaded(_that.metric,_that.limit);case _LeaderboardMetricChanged():
return metricChanged(_that.metric);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String metric,  int limit)?  loaded,TResult? Function( String metric)?  metricChanged,}) {final _that = this;
switch (_that) {
case _LeaderboardLoaded() when loaded != null:
return loaded(_that.metric,_that.limit);case _LeaderboardMetricChanged() when metricChanged != null:
return metricChanged(_that.metric);case _:
  return null;

}
}

}

/// @nodoc


class _LeaderboardLoaded implements LeaderboardEvent {
  const _LeaderboardLoaded({this.metric = 'xp', this.limit = 50});
  

@override@JsonKey() final  String metric;
@JsonKey() final  int limit;

/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardLoadedCopyWith<_LeaderboardLoaded> get copyWith => __$LeaderboardLoadedCopyWithImpl<_LeaderboardLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardLoaded&&(identical(other.metric, metric) || other.metric == metric)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode {
    return Object.hash(runtimeType,metric,limit);
}

@override
String toString() {
    return 'LeaderboardEvent.loaded(metric: $metric, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardLoadedCopyWith<$Res> implements $LeaderboardEventCopyWith<$Res> {
  factory _$LeaderboardLoadedCopyWith(_LeaderboardLoaded value, $Res Function(_LeaderboardLoaded) _then) = __$LeaderboardLoadedCopyWithImpl;
@override @useResult
$Res call({
 String metric, int limit
});




}
/// @nodoc
class __$LeaderboardLoadedCopyWithImpl<$Res>
    implements _$LeaderboardLoadedCopyWith<$Res> {
  __$LeaderboardLoadedCopyWithImpl(this._self, this._then);

  final _LeaderboardLoaded _self;
  final $Res Function(_LeaderboardLoaded) _then;

/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metric = null,Object? limit = null,}) {
  return _then(_LeaderboardLoaded(
metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LeaderboardMetricChanged implements LeaderboardEvent {
  const _LeaderboardMetricChanged(this.metric);
  

@override final  String metric;

/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardMetricChangedCopyWith<_LeaderboardMetricChanged> get copyWith => __$LeaderboardMetricChangedCopyWithImpl<_LeaderboardMetricChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardMetricChanged&&(identical(other.metric, metric) || other.metric == metric));
}


@override
int get hashCode {
    return Object.hash(runtimeType,metric);
}

@override
String toString() {
    return 'LeaderboardEvent.metricChanged(metric: $metric)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardMetricChangedCopyWith<$Res> implements $LeaderboardEventCopyWith<$Res> {
  factory _$LeaderboardMetricChangedCopyWith(_LeaderboardMetricChanged value, $Res Function(_LeaderboardMetricChanged) _then) = __$LeaderboardMetricChangedCopyWithImpl;
@override @useResult
$Res call({
 String metric
});




}
/// @nodoc
class __$LeaderboardMetricChangedCopyWithImpl<$Res>
    implements _$LeaderboardMetricChangedCopyWith<$Res> {
  __$LeaderboardMetricChangedCopyWithImpl(this._self, this._then);

  final _LeaderboardMetricChanged _self;
  final $Res Function(_LeaderboardMetricChanged) _then;

/// Create a copy of LeaderboardEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metric = null,}) {
  return _then(_LeaderboardMetricChanged(
null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LeaderboardState {

 bool get isLoading; String? get errorMessage; String get selectedMetric; LeaderboardEntity? get leaderboard; Map<String, LeaderboardEntity> get leaderboardsByMetric;
/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaderboardStateCopyWith<LeaderboardState> get copyWith => _$LeaderboardStateCopyWithImpl<LeaderboardState>(this as LeaderboardState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LeaderboardState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaderboardState&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&(identical(other.selectedMetric, _this.selectedMetric) || other.selectedMetric == _this.selectedMetric)&&(identical(other.leaderboard, _this.leaderboard) || other.leaderboard == _this.leaderboard)&&const DeepCollectionEquality().equals(other.leaderboardsByMetric, _this.leaderboardsByMetric));
}


@override
int get hashCode {
  final _this = this as LeaderboardState;
  return Object.hash(runtimeType,_this.isLoading,_this.errorMessage,_this.selectedMetric,_this.leaderboard,const DeepCollectionEquality().hash(_this.leaderboardsByMetric));
}

@override
String toString() {
  final _this = this as LeaderboardState;
  return 'LeaderboardState(isLoading: ${_this.isLoading}, errorMessage: ${_this.errorMessage}, selectedMetric: ${_this.selectedMetric}, leaderboard: ${_this.leaderboard}, leaderboardsByMetric: ${_this.leaderboardsByMetric})';
}


}

/// @nodoc
abstract mixin class $LeaderboardStateCopyWith<$Res>  {
  factory $LeaderboardStateCopyWith(LeaderboardState value, $Res Function(LeaderboardState) _then) = _$LeaderboardStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, String selectedMetric, LeaderboardEntity? leaderboard, Map<String, LeaderboardEntity> leaderboardsByMetric
});


$LeaderboardEntityCopyWith<$Res>? get leaderboard;

}
/// @nodoc
class _$LeaderboardStateCopyWithImpl<$Res>
    implements $LeaderboardStateCopyWith<$Res> {
  _$LeaderboardStateCopyWithImpl(this._self, this._then);

  final LeaderboardState _self;
  final $Res Function(LeaderboardState) _then;

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? selectedMetric = null,Object? leaderboard = freezed,Object? leaderboardsByMetric = null,}) {
  return _then(LeaderboardState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedMetric: null == selectedMetric ? _self.selectedMetric : selectedMetric // ignore: cast_nullable_to_non_nullable
as String,leaderboard: freezed == leaderboard ? _self.leaderboard : leaderboard // ignore: cast_nullable_to_non_nullable
as LeaderboardEntity?,leaderboardsByMetric: null == leaderboardsByMetric ? _self.leaderboardsByMetric : leaderboardsByMetric // ignore: cast_nullable_to_non_nullable
as Map<String, LeaderboardEntity>,
  ));
}
/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaderboardEntityCopyWith<$Res>? get leaderboard {
    if (_self.leaderboard == null) {
    return null;
  }

  return $LeaderboardEntityCopyWith<$Res>(_self.leaderboard!, (value) {
    return _then(_self.copyWith(leaderboard: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeaderboardState].
extension LeaderboardStatePatterns on LeaderboardState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaderboardState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaderboardState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaderboardState value)  $default,){
final _that = this;
switch (_that) {
case _LeaderboardState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaderboardState value)?  $default,){
final _that = this;
switch (_that) {
case _LeaderboardState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  String selectedMetric,  LeaderboardEntity? leaderboard,  Map<String, LeaderboardEntity> leaderboardsByMetric)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaderboardState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.selectedMetric,_that.leaderboard,_that.leaderboardsByMetric);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  String selectedMetric,  LeaderboardEntity? leaderboard,  Map<String, LeaderboardEntity> leaderboardsByMetric)  $default,) {final _that = this;
switch (_that) {
case _LeaderboardState():
return $default(_that.isLoading,_that.errorMessage,_that.selectedMetric,_that.leaderboard,_that.leaderboardsByMetric);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? errorMessage,  String selectedMetric,  LeaderboardEntity? leaderboard,  Map<String, LeaderboardEntity> leaderboardsByMetric)?  $default,) {final _that = this;
switch (_that) {
case _LeaderboardState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.selectedMetric,_that.leaderboard,_that.leaderboardsByMetric);case _:
  return null;

}
}

}

/// @nodoc


class _LeaderboardState implements LeaderboardState {
  const _LeaderboardState({this.isLoading = false, this.errorMessage, this.selectedMetric = 'xp', this.leaderboard,  Map<String, LeaderboardEntity> leaderboardsByMetric = const {}}): _leaderboardsByMetric = leaderboardsByMetric;
  

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override@JsonKey() final  String selectedMetric;
@override final  LeaderboardEntity? leaderboard;
 final  Map<String, LeaderboardEntity> _leaderboardsByMetric;
@override@JsonKey() Map<String, LeaderboardEntity> get leaderboardsByMetric {
  if (_leaderboardsByMetric is EqualUnmodifiableMapView) return _leaderboardsByMetric;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_leaderboardsByMetric);
}


/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaderboardStateCopyWith<_LeaderboardState> get copyWith => __$LeaderboardStateCopyWithImpl<_LeaderboardState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaderboardState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.selectedMetric, selectedMetric) || other.selectedMetric == selectedMetric)&&(identical(other.leaderboard, leaderboard) || other.leaderboard == leaderboard)&&const DeepCollectionEquality().equals(other.leaderboardsByMetric, _leaderboardsByMetric));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isLoading,errorMessage,selectedMetric,leaderboard,const DeepCollectionEquality().hash(_leaderboardsByMetric));
}

@override
String toString() {
    return 'LeaderboardState(isLoading: $isLoading, errorMessage: $errorMessage, selectedMetric: $selectedMetric, leaderboard: $leaderboard, leaderboardsByMetric: $leaderboardsByMetric)';
}


}

/// @nodoc
abstract mixin class _$LeaderboardStateCopyWith<$Res> implements $LeaderboardStateCopyWith<$Res> {
  factory _$LeaderboardStateCopyWith(_LeaderboardState value, $Res Function(_LeaderboardState) _then) = __$LeaderboardStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, String selectedMetric, LeaderboardEntity? leaderboard, Map<String, LeaderboardEntity> leaderboardsByMetric
});


@override $LeaderboardEntityCopyWith<$Res>? get leaderboard;

}
/// @nodoc
class __$LeaderboardStateCopyWithImpl<$Res>
    implements _$LeaderboardStateCopyWith<$Res> {
  __$LeaderboardStateCopyWithImpl(this._self, this._then);

  final _LeaderboardState _self;
  final $Res Function(_LeaderboardState) _then;

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? selectedMetric = null,Object? leaderboard = freezed,Object? leaderboardsByMetric = null,}) {
  return _then(_LeaderboardState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,selectedMetric: null == selectedMetric ? _self.selectedMetric : selectedMetric // ignore: cast_nullable_to_non_nullable
as String,leaderboard: freezed == leaderboard ? _self.leaderboard : leaderboard // ignore: cast_nullable_to_non_nullable
as LeaderboardEntity?,leaderboardsByMetric: null == leaderboardsByMetric ? _self._leaderboardsByMetric : leaderboardsByMetric // ignore: cast_nullable_to_non_nullable
as Map<String, LeaderboardEntity>,
  ));
}

/// Create a copy of LeaderboardState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaderboardEntityCopyWith<$Res>? get leaderboard {
    if (_self.leaderboard == null) {
    return null;
  }

  return $LeaderboardEntityCopyWith<$Res>(_self.leaderboard!, (value) {
    return _then(_self.copyWith(leaderboard: value));
  });
}
}

// dart format on
