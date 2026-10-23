// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_memory_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordMemoryData {

@JsonKey(name: 'word_id') String? get wordId;@JsonKey(name: 'seen') int? get seen;@JsonKey(name: 'fast') int? get fast;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'reason') String? get reason;@JsonKey(name: 'seconds') double? get seconds;@JsonKey(name: 'last') int? get last;@JsonKey(name: 'due') int? get due;
/// Create a copy of WordMemoryData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordMemoryDataCopyWith<WordMemoryData> get copyWith => _$WordMemoryDataCopyWithImpl<WordMemoryData>(this as WordMemoryData, _$identity);

  /// Serializes this WordMemoryData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WordMemoryData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordMemoryData&&(identical(other.wordId, _this.wordId) || other.wordId == _this.wordId)&&(identical(other.seen, _this.seen) || other.seen == _this.seen)&&(identical(other.fast, _this.fast) || other.fast == _this.fast)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.seconds, _this.seconds) || other.seconds == _this.seconds)&&(identical(other.last, _this.last) || other.last == _this.last)&&(identical(other.due, _this.due) || other.due == _this.due));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordMemoryData;
  return Object.hash(runtimeType,_this.wordId,_this.seen,_this.fast,_this.status,_this.reason,_this.seconds,_this.last,_this.due);
}

@override
String toString() {
  final _this = this as WordMemoryData;
  return 'WordMemoryData(wordId: ${_this.wordId}, seen: ${_this.seen}, fast: ${_this.fast}, status: ${_this.status}, reason: ${_this.reason}, seconds: ${_this.seconds}, last: ${_this.last}, due: ${_this.due})';
}


}

/// @nodoc
abstract mixin class $WordMemoryDataCopyWith<$Res>  {
  factory $WordMemoryDataCopyWith(WordMemoryData value, $Res Function(WordMemoryData) _then) = _$WordMemoryDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'word_id') String? wordId,@JsonKey(name: 'seen') int? seen,@JsonKey(name: 'fast') int? fast,@JsonKey(name: 'status') String? status,@JsonKey(name: 'reason') String? reason,@JsonKey(name: 'seconds') double? seconds,@JsonKey(name: 'last') int? last,@JsonKey(name: 'due') int? due
});




}
/// @nodoc
class _$WordMemoryDataCopyWithImpl<$Res>
    implements $WordMemoryDataCopyWith<$Res> {
  _$WordMemoryDataCopyWithImpl(this._self, this._then);

  final WordMemoryData _self;
  final $Res Function(WordMemoryData) _then;

/// Create a copy of WordMemoryData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wordId = freezed,Object? seen = freezed,Object? fast = freezed,Object? status = freezed,Object? reason = freezed,Object? seconds = freezed,Object? last = freezed,Object? due = freezed,}) {
  return _then(WordMemoryData(
wordId: freezed == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String?,seen: freezed == seen ? _self.seen : seen // ignore: cast_nullable_to_non_nullable
as int?,fast: freezed == fast ? _self.fast : fast // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,seconds: freezed == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as double?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as int?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordMemoryData].
extension WordMemoryDataPatterns on WordMemoryData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordMemoryData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordMemoryData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordMemoryData value)  $default,){
final _that = this;
switch (_that) {
case _WordMemoryData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordMemoryData value)?  $default,){
final _that = this;
switch (_that) {
case _WordMemoryData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'word_id')  String? wordId, @JsonKey(name: 'seen')  int? seen, @JsonKey(name: 'fast')  int? fast, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'reason')  String? reason, @JsonKey(name: 'seconds')  double? seconds, @JsonKey(name: 'last')  int? last, @JsonKey(name: 'due')  int? due)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordMemoryData() when $default != null:
return $default(_that.wordId,_that.seen,_that.fast,_that.status,_that.reason,_that.seconds,_that.last,_that.due);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'word_id')  String? wordId, @JsonKey(name: 'seen')  int? seen, @JsonKey(name: 'fast')  int? fast, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'reason')  String? reason, @JsonKey(name: 'seconds')  double? seconds, @JsonKey(name: 'last')  int? last, @JsonKey(name: 'due')  int? due)  $default,) {final _that = this;
switch (_that) {
case _WordMemoryData():
return $default(_that.wordId,_that.seen,_that.fast,_that.status,_that.reason,_that.seconds,_that.last,_that.due);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'word_id')  String? wordId, @JsonKey(name: 'seen')  int? seen, @JsonKey(name: 'fast')  int? fast, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'reason')  String? reason, @JsonKey(name: 'seconds')  double? seconds, @JsonKey(name: 'last')  int? last, @JsonKey(name: 'due')  int? due)?  $default,) {final _that = this;
switch (_that) {
case _WordMemoryData() when $default != null:
return $default(_that.wordId,_that.seen,_that.fast,_that.status,_that.reason,_that.seconds,_that.last,_that.due);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordMemoryData extends WordMemoryData {
  const _WordMemoryData({@JsonKey(name: 'word_id') this.wordId, @JsonKey(name: 'seen') this.seen, @JsonKey(name: 'fast') this.fast, @JsonKey(name: 'status') this.status, @JsonKey(name: 'reason') this.reason, @JsonKey(name: 'seconds') this.seconds, @JsonKey(name: 'last') this.last, @JsonKey(name: 'due') this.due}): super._();
  factory _WordMemoryData.fromJson(Map<String, dynamic> json) => _$WordMemoryDataFromJson(json);

@override@JsonKey(name: 'word_id') final  String? wordId;
@override@JsonKey(name: 'seen') final  int? seen;
@override@JsonKey(name: 'fast') final  int? fast;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'reason') final  String? reason;
@override@JsonKey(name: 'seconds') final  double? seconds;
@override@JsonKey(name: 'last') final  int? last;
@override@JsonKey(name: 'due') final  int? due;

/// Create a copy of WordMemoryData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordMemoryDataCopyWith<_WordMemoryData> get copyWith => __$WordMemoryDataCopyWithImpl<_WordMemoryData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordMemoryDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordMemoryData&&(identical(other.wordId, wordId) || other.wordId == wordId)&&(identical(other.seen, seen) || other.seen == seen)&&(identical(other.fast, fast) || other.fast == fast)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.seconds, seconds) || other.seconds == seconds)&&(identical(other.last, last) || other.last == last)&&(identical(other.due, due) || other.due == due));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,wordId,seen,fast,status,reason,seconds,last,due);
}

@override
String toString() {
    return 'WordMemoryData(wordId: $wordId, seen: $seen, fast: $fast, status: $status, reason: $reason, seconds: $seconds, last: $last, due: $due)';
}


}

/// @nodoc
abstract mixin class _$WordMemoryDataCopyWith<$Res> implements $WordMemoryDataCopyWith<$Res> {
  factory _$WordMemoryDataCopyWith(_WordMemoryData value, $Res Function(_WordMemoryData) _then) = __$WordMemoryDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'word_id') String? wordId,@JsonKey(name: 'seen') int? seen,@JsonKey(name: 'fast') int? fast,@JsonKey(name: 'status') String? status,@JsonKey(name: 'reason') String? reason,@JsonKey(name: 'seconds') double? seconds,@JsonKey(name: 'last') int? last,@JsonKey(name: 'due') int? due
});




}
/// @nodoc
class __$WordMemoryDataCopyWithImpl<$Res>
    implements _$WordMemoryDataCopyWith<$Res> {
  __$WordMemoryDataCopyWithImpl(this._self, this._then);

  final _WordMemoryData _self;
  final $Res Function(_WordMemoryData) _then;

/// Create a copy of WordMemoryData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wordId = freezed,Object? seen = freezed,Object? fast = freezed,Object? status = freezed,Object? reason = freezed,Object? seconds = freezed,Object? last = freezed,Object? due = freezed,}) {
  return _then(_WordMemoryData(
wordId: freezed == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String?,seen: freezed == seen ? _self.seen : seen // ignore: cast_nullable_to_non_nullable
as int?,fast: freezed == fast ? _self.fast : fast // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,seconds: freezed == seconds ? _self.seconds : seconds // ignore: cast_nullable_to_non_nullable
as double?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as int?,due: freezed == due ? _self.due : due // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$PracticeProfilesResponseData {

@JsonKey(name: 'uid') String? get uid;@JsonKey(name: 'profiles') List<WordMemoryData>? get profiles;
/// Create a copy of PracticeProfilesResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PracticeProfilesResponseDataCopyWith<PracticeProfilesResponseData> get copyWith => _$PracticeProfilesResponseDataCopyWithImpl<PracticeProfilesResponseData>(this as PracticeProfilesResponseData, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PracticeProfilesResponseData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PracticeProfilesResponseData&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&const DeepCollectionEquality().equals(other.profiles, _this.profiles));
}


@override
int get hashCode {
  final _this = this as PracticeProfilesResponseData;
  return Object.hash(runtimeType,_this.uid,const DeepCollectionEquality().hash(_this.profiles));
}

@override
String toString() {
  final _this = this as PracticeProfilesResponseData;
  return 'PracticeProfilesResponseData(uid: ${_this.uid}, profiles: ${_this.profiles})';
}


}

/// @nodoc
abstract mixin class $PracticeProfilesResponseDataCopyWith<$Res>  {
  factory $PracticeProfilesResponseDataCopyWith(PracticeProfilesResponseData value, $Res Function(PracticeProfilesResponseData) _then) = _$PracticeProfilesResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'profiles') List<WordMemoryData>? profiles
});




}
/// @nodoc
class _$PracticeProfilesResponseDataCopyWithImpl<$Res>
    implements $PracticeProfilesResponseDataCopyWith<$Res> {
  _$PracticeProfilesResponseDataCopyWithImpl(this._self, this._then);

  final PracticeProfilesResponseData _self;
  final $Res Function(PracticeProfilesResponseData) _then;

/// Create a copy of PracticeProfilesResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = freezed,Object? profiles = freezed,}) {
  return _then(PracticeProfilesResponseData(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,profiles: freezed == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordMemoryData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PracticeProfilesResponseData].
extension PracticeProfilesResponseDataPatterns on PracticeProfilesResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PracticeProfilesResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PracticeProfilesResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PracticeProfilesResponseData value)  $default,){
final _that = this;
switch (_that) {
case _PracticeProfilesResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PracticeProfilesResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _PracticeProfilesResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'profiles')  List<WordMemoryData>? profiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PracticeProfilesResponseData() when $default != null:
return $default(_that.uid,_that.profiles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'profiles')  List<WordMemoryData>? profiles)  $default,) {final _that = this;
switch (_that) {
case _PracticeProfilesResponseData():
return $default(_that.uid,_that.profiles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'profiles')  List<WordMemoryData>? profiles)?  $default,) {final _that = this;
switch (_that) {
case _PracticeProfilesResponseData() when $default != null:
return $default(_that.uid,_that.profiles);case _:
  return null;

}
}

}

/// @nodoc


class _PracticeProfilesResponseData extends PracticeProfilesResponseData {
  const _PracticeProfilesResponseData({@JsonKey(name: 'uid') this.uid, @JsonKey(name: 'profiles')  List<WordMemoryData>? profiles}): _profiles = profiles,super._();
  

@override@JsonKey(name: 'uid') final  String? uid;
 final  List<WordMemoryData>? _profiles;
@override@JsonKey(name: 'profiles') List<WordMemoryData>? get profiles {
  final value = _profiles;
  if (value == null) return null;
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PracticeProfilesResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PracticeProfilesResponseDataCopyWith<_PracticeProfilesResponseData> get copyWith => __$PracticeProfilesResponseDataCopyWithImpl<_PracticeProfilesResponseData>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PracticeProfilesResponseData&&(identical(other.uid, uid) || other.uid == uid)&&const DeepCollectionEquality().equals(other.profiles, _profiles));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,const DeepCollectionEquality().hash(_profiles));
}

@override
String toString() {
    return 'PracticeProfilesResponseData(uid: $uid, profiles: $profiles)';
}


}

/// @nodoc
abstract mixin class _$PracticeProfilesResponseDataCopyWith<$Res> implements $PracticeProfilesResponseDataCopyWith<$Res> {
  factory _$PracticeProfilesResponseDataCopyWith(_PracticeProfilesResponseData value, $Res Function(_PracticeProfilesResponseData) _then) = __$PracticeProfilesResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'profiles') List<WordMemoryData>? profiles
});




}
/// @nodoc
class __$PracticeProfilesResponseDataCopyWithImpl<$Res>
    implements _$PracticeProfilesResponseDataCopyWith<$Res> {
  __$PracticeProfilesResponseDataCopyWithImpl(this._self, this._then);

  final _PracticeProfilesResponseData _self;
  final $Res Function(_PracticeProfilesResponseData) _then;

/// Create a copy of PracticeProfilesResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = freezed,Object? profiles = freezed,}) {
  return _then(_PracticeProfilesResponseData(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,profiles: freezed == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordMemoryData>?,
  ));
}


}

// dart format on
