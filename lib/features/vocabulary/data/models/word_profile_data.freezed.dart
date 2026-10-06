// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordProfileData {

@JsonKey(name: 'word_id') String get wordId;@JsonKey(name: 'seen') int? get seen;@JsonKey(name: 'last') int? get last;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'game_mode') String? get gameMode;@JsonKey(name: 'familiarity') int? get familiarity;@JsonKey(name: 'interval') int? get interval;@JsonKey(name: 'ease_factor') double? get easeFactor;@JsonKey(name: 'next_review') int? get nextReview;@JsonKey(name: 'lapses') int? get lapses;
/// Create a copy of WordProfileData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordProfileDataCopyWith<WordProfileData> get copyWith => _$WordProfileDataCopyWithImpl<WordProfileData>(this as WordProfileData, _$identity);

  /// Serializes this WordProfileData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WordProfileData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordProfileData&&(identical(other.wordId, _this.wordId) || other.wordId == _this.wordId)&&(identical(other.seen, _this.seen) || other.seen == _this.seen)&&(identical(other.last, _this.last) || other.last == _this.last)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.gameMode, _this.gameMode) || other.gameMode == _this.gameMode)&&(identical(other.familiarity, _this.familiarity) || other.familiarity == _this.familiarity)&&(identical(other.interval, _this.interval) || other.interval == _this.interval)&&(identical(other.easeFactor, _this.easeFactor) || other.easeFactor == _this.easeFactor)&&(identical(other.nextReview, _this.nextReview) || other.nextReview == _this.nextReview)&&(identical(other.lapses, _this.lapses) || other.lapses == _this.lapses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordProfileData;
  return Object.hash(runtimeType,_this.wordId,_this.seen,_this.last,_this.status,_this.gameMode,_this.familiarity,_this.interval,_this.easeFactor,_this.nextReview,_this.lapses);
}

@override
String toString() {
  final _this = this as WordProfileData;
  return 'WordProfileData(wordId: ${_this.wordId}, seen: ${_this.seen}, last: ${_this.last}, status: ${_this.status}, gameMode: ${_this.gameMode}, familiarity: ${_this.familiarity}, interval: ${_this.interval}, easeFactor: ${_this.easeFactor}, nextReview: ${_this.nextReview}, lapses: ${_this.lapses})';
}


}

/// @nodoc
abstract mixin class $WordProfileDataCopyWith<$Res>  {
  factory $WordProfileDataCopyWith(WordProfileData value, $Res Function(WordProfileData) _then) = _$WordProfileDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'word_id') String wordId,@JsonKey(name: 'seen') int? seen,@JsonKey(name: 'last') int? last,@JsonKey(name: 'status') String? status,@JsonKey(name: 'game_mode') String? gameMode,@JsonKey(name: 'familiarity') int? familiarity,@JsonKey(name: 'interval') int? interval,@JsonKey(name: 'ease_factor') double? easeFactor,@JsonKey(name: 'next_review') int? nextReview,@JsonKey(name: 'lapses') int? lapses
});




}
/// @nodoc
class _$WordProfileDataCopyWithImpl<$Res>
    implements $WordProfileDataCopyWith<$Res> {
  _$WordProfileDataCopyWithImpl(this._self, this._then);

  final WordProfileData _self;
  final $Res Function(WordProfileData) _then;

/// Create a copy of WordProfileData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wordId = null,Object? seen = freezed,Object? last = freezed,Object? status = freezed,Object? gameMode = freezed,Object? familiarity = freezed,Object? interval = freezed,Object? easeFactor = freezed,Object? nextReview = freezed,Object? lapses = freezed,}) {
  return _then(WordProfileData(
wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,seen: freezed == seen ? _self.seen : seen // ignore: cast_nullable_to_non_nullable
as int?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,gameMode: freezed == gameMode ? _self.gameMode : gameMode // ignore: cast_nullable_to_non_nullable
as String?,familiarity: freezed == familiarity ? _self.familiarity : familiarity // ignore: cast_nullable_to_non_nullable
as int?,interval: freezed == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int?,easeFactor: freezed == easeFactor ? _self.easeFactor : easeFactor // ignore: cast_nullable_to_non_nullable
as double?,nextReview: freezed == nextReview ? _self.nextReview : nextReview // ignore: cast_nullable_to_non_nullable
as int?,lapses: freezed == lapses ? _self.lapses : lapses // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordProfileData].
extension WordProfileDataPatterns on WordProfileData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordProfileData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordProfileData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordProfileData value)  $default,){
final _that = this;
switch (_that) {
case _WordProfileData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordProfileData value)?  $default,){
final _that = this;
switch (_that) {
case _WordProfileData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'word_id')  String wordId, @JsonKey(name: 'seen')  int? seen, @JsonKey(name: 'last')  int? last, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'game_mode')  String? gameMode, @JsonKey(name: 'familiarity')  int? familiarity, @JsonKey(name: 'interval')  int? interval, @JsonKey(name: 'ease_factor')  double? easeFactor, @JsonKey(name: 'next_review')  int? nextReview, @JsonKey(name: 'lapses')  int? lapses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordProfileData() when $default != null:
return $default(_that.wordId,_that.seen,_that.last,_that.status,_that.gameMode,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'word_id')  String wordId, @JsonKey(name: 'seen')  int? seen, @JsonKey(name: 'last')  int? last, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'game_mode')  String? gameMode, @JsonKey(name: 'familiarity')  int? familiarity, @JsonKey(name: 'interval')  int? interval, @JsonKey(name: 'ease_factor')  double? easeFactor, @JsonKey(name: 'next_review')  int? nextReview, @JsonKey(name: 'lapses')  int? lapses)  $default,) {final _that = this;
switch (_that) {
case _WordProfileData():
return $default(_that.wordId,_that.seen,_that.last,_that.status,_that.gameMode,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'word_id')  String wordId, @JsonKey(name: 'seen')  int? seen, @JsonKey(name: 'last')  int? last, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'game_mode')  String? gameMode, @JsonKey(name: 'familiarity')  int? familiarity, @JsonKey(name: 'interval')  int? interval, @JsonKey(name: 'ease_factor')  double? easeFactor, @JsonKey(name: 'next_review')  int? nextReview, @JsonKey(name: 'lapses')  int? lapses)?  $default,) {final _that = this;
switch (_that) {
case _WordProfileData() when $default != null:
return $default(_that.wordId,_that.seen,_that.last,_that.status,_that.gameMode,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordProfileData extends WordProfileData {
  const _WordProfileData({@JsonKey(name: 'word_id') required this.wordId, @JsonKey(name: 'seen') this.seen, @JsonKey(name: 'last') this.last, @JsonKey(name: 'status') this.status, @JsonKey(name: 'game_mode') this.gameMode, @JsonKey(name: 'familiarity') this.familiarity, @JsonKey(name: 'interval') this.interval, @JsonKey(name: 'ease_factor') this.easeFactor, @JsonKey(name: 'next_review') this.nextReview, @JsonKey(name: 'lapses') this.lapses}): super._();
  factory _WordProfileData.fromJson(Map<String, dynamic> json) => _$WordProfileDataFromJson(json);

@override@JsonKey(name: 'word_id') final  String wordId;
@override@JsonKey(name: 'seen') final  int? seen;
@override@JsonKey(name: 'last') final  int? last;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'game_mode') final  String? gameMode;
@override@JsonKey(name: 'familiarity') final  int? familiarity;
@override@JsonKey(name: 'interval') final  int? interval;
@override@JsonKey(name: 'ease_factor') final  double? easeFactor;
@override@JsonKey(name: 'next_review') final  int? nextReview;
@override@JsonKey(name: 'lapses') final  int? lapses;

/// Create a copy of WordProfileData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordProfileDataCopyWith<_WordProfileData> get copyWith => __$WordProfileDataCopyWithImpl<_WordProfileData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordProfileDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordProfileData&&(identical(other.wordId, wordId) || other.wordId == wordId)&&(identical(other.seen, seen) || other.seen == seen)&&(identical(other.last, last) || other.last == last)&&(identical(other.status, status) || other.status == status)&&(identical(other.gameMode, gameMode) || other.gameMode == gameMode)&&(identical(other.familiarity, familiarity) || other.familiarity == familiarity)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.easeFactor, easeFactor) || other.easeFactor == easeFactor)&&(identical(other.nextReview, nextReview) || other.nextReview == nextReview)&&(identical(other.lapses, lapses) || other.lapses == lapses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,wordId,seen,last,status,gameMode,familiarity,interval,easeFactor,nextReview,lapses);
}

@override
String toString() {
    return 'WordProfileData(wordId: $wordId, seen: $seen, last: $last, status: $status, gameMode: $gameMode, familiarity: $familiarity, interval: $interval, easeFactor: $easeFactor, nextReview: $nextReview, lapses: $lapses)';
}


}

/// @nodoc
abstract mixin class _$WordProfileDataCopyWith<$Res> implements $WordProfileDataCopyWith<$Res> {
  factory _$WordProfileDataCopyWith(_WordProfileData value, $Res Function(_WordProfileData) _then) = __$WordProfileDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'word_id') String wordId,@JsonKey(name: 'seen') int? seen,@JsonKey(name: 'last') int? last,@JsonKey(name: 'status') String? status,@JsonKey(name: 'game_mode') String? gameMode,@JsonKey(name: 'familiarity') int? familiarity,@JsonKey(name: 'interval') int? interval,@JsonKey(name: 'ease_factor') double? easeFactor,@JsonKey(name: 'next_review') int? nextReview,@JsonKey(name: 'lapses') int? lapses
});




}
/// @nodoc
class __$WordProfileDataCopyWithImpl<$Res>
    implements _$WordProfileDataCopyWith<$Res> {
  __$WordProfileDataCopyWithImpl(this._self, this._then);

  final _WordProfileData _self;
  final $Res Function(_WordProfileData) _then;

/// Create a copy of WordProfileData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wordId = null,Object? seen = freezed,Object? last = freezed,Object? status = freezed,Object? gameMode = freezed,Object? familiarity = freezed,Object? interval = freezed,Object? easeFactor = freezed,Object? nextReview = freezed,Object? lapses = freezed,}) {
  return _then(_WordProfileData(
wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,seen: freezed == seen ? _self.seen : seen // ignore: cast_nullable_to_non_nullable
as int?,last: freezed == last ? _self.last : last // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,gameMode: freezed == gameMode ? _self.gameMode : gameMode // ignore: cast_nullable_to_non_nullable
as String?,familiarity: freezed == familiarity ? _self.familiarity : familiarity // ignore: cast_nullable_to_non_nullable
as int?,interval: freezed == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int?,easeFactor: freezed == easeFactor ? _self.easeFactor : easeFactor // ignore: cast_nullable_to_non_nullable
as double?,nextReview: freezed == nextReview ? _self.nextReview : nextReview // ignore: cast_nullable_to_non_nullable
as int?,lapses: freezed == lapses ? _self.lapses : lapses // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$WordProfilesDataResponse {

@JsonKey(name: 'uid') String? get uid;@JsonKey(name: 'profiles') List<WordProfileData>? get profiles;
/// Create a copy of WordProfilesDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordProfilesDataResponseCopyWith<WordProfilesDataResponse> get copyWith => _$WordProfilesDataResponseCopyWithImpl<WordProfilesDataResponse>(this as WordProfilesDataResponse, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WordProfilesDataResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordProfilesDataResponse&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&const DeepCollectionEquality().equals(other.profiles, _this.profiles));
}


@override
int get hashCode {
  final _this = this as WordProfilesDataResponse;
  return Object.hash(runtimeType,_this.uid,const DeepCollectionEquality().hash(_this.profiles));
}

@override
String toString() {
  final _this = this as WordProfilesDataResponse;
  return 'WordProfilesDataResponse(uid: ${_this.uid}, profiles: ${_this.profiles})';
}


}

/// @nodoc
abstract mixin class $WordProfilesDataResponseCopyWith<$Res>  {
  factory $WordProfilesDataResponseCopyWith(WordProfilesDataResponse value, $Res Function(WordProfilesDataResponse) _then) = _$WordProfilesDataResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'profiles') List<WordProfileData>? profiles
});




}
/// @nodoc
class _$WordProfilesDataResponseCopyWithImpl<$Res>
    implements $WordProfilesDataResponseCopyWith<$Res> {
  _$WordProfilesDataResponseCopyWithImpl(this._self, this._then);

  final WordProfilesDataResponse _self;
  final $Res Function(WordProfilesDataResponse) _then;

/// Create a copy of WordProfilesDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = freezed,Object? profiles = freezed,}) {
  return _then(WordProfilesDataResponse(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,profiles: freezed == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordProfilesDataResponse].
extension WordProfilesDataResponsePatterns on WordProfilesDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordProfilesDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordProfilesDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordProfilesDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _WordProfilesDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordProfilesDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _WordProfilesDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'profiles')  List<WordProfileData>? profiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordProfilesDataResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'profiles')  List<WordProfileData>? profiles)  $default,) {final _that = this;
switch (_that) {
case _WordProfilesDataResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'profiles')  List<WordProfileData>? profiles)?  $default,) {final _that = this;
switch (_that) {
case _WordProfilesDataResponse() when $default != null:
return $default(_that.uid,_that.profiles);case _:
  return null;

}
}

}

/// @nodoc


class _WordProfilesDataResponse extends WordProfilesDataResponse {
  const _WordProfilesDataResponse({@JsonKey(name: 'uid') this.uid, @JsonKey(name: 'profiles')  List<WordProfileData>? profiles}): _profiles = profiles,super._();
  

@override@JsonKey(name: 'uid') final  String? uid;
 final  List<WordProfileData>? _profiles;
@override@JsonKey(name: 'profiles') List<WordProfileData>? get profiles {
  final value = _profiles;
  if (value == null) return null;
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WordProfilesDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordProfilesDataResponseCopyWith<_WordProfilesDataResponse> get copyWith => __$WordProfilesDataResponseCopyWithImpl<_WordProfilesDataResponse>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordProfilesDataResponse&&(identical(other.uid, uid) || other.uid == uid)&&const DeepCollectionEquality().equals(other.profiles, _profiles));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid,const DeepCollectionEquality().hash(_profiles));
}

@override
String toString() {
    return 'WordProfilesDataResponse(uid: $uid, profiles: $profiles)';
}


}

/// @nodoc
abstract mixin class _$WordProfilesDataResponseCopyWith<$Res> implements $WordProfilesDataResponseCopyWith<$Res> {
  factory _$WordProfilesDataResponseCopyWith(_WordProfilesDataResponse value, $Res Function(_WordProfilesDataResponse) _then) = __$WordProfilesDataResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'profiles') List<WordProfileData>? profiles
});




}
/// @nodoc
class __$WordProfilesDataResponseCopyWithImpl<$Res>
    implements _$WordProfilesDataResponseCopyWith<$Res> {
  __$WordProfilesDataResponseCopyWithImpl(this._self, this._then);

  final _WordProfilesDataResponse _self;
  final $Res Function(_WordProfilesDataResponse) _then;

/// Create a copy of WordProfilesDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = freezed,Object? profiles = freezed,}) {
  return _then(_WordProfilesDataResponse(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,profiles: freezed == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileData>?,
  ));
}


}


/// @nodoc
mixin _$SyncProfilesRequestData {

@JsonKey(name: 'profiles') List<WordProfileData> get profiles;
/// Create a copy of SyncProfilesRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncProfilesRequestDataCopyWith<SyncProfilesRequestData> get copyWith => _$SyncProfilesRequestDataCopyWithImpl<SyncProfilesRequestData>(this as SyncProfilesRequestData, _$identity);

  /// Serializes this SyncProfilesRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SyncProfilesRequestData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncProfilesRequestData&&const DeepCollectionEquality().equals(other.profiles, _this.profiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SyncProfilesRequestData;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.profiles));
}

@override
String toString() {
  final _this = this as SyncProfilesRequestData;
  return 'SyncProfilesRequestData(profiles: ${_this.profiles})';
}


}

/// @nodoc
abstract mixin class $SyncProfilesRequestDataCopyWith<$Res>  {
  factory $SyncProfilesRequestDataCopyWith(SyncProfilesRequestData value, $Res Function(SyncProfilesRequestData) _then) = _$SyncProfilesRequestDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'profiles') List<WordProfileData> profiles
});




}
/// @nodoc
class _$SyncProfilesRequestDataCopyWithImpl<$Res>
    implements $SyncProfilesRequestDataCopyWith<$Res> {
  _$SyncProfilesRequestDataCopyWithImpl(this._self, this._then);

  final SyncProfilesRequestData _self;
  final $Res Function(SyncProfilesRequestData) _then;

/// Create a copy of SyncProfilesRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profiles = null,}) {
  return _then(SyncProfilesRequestData(
profiles: null == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileData>,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncProfilesRequestData].
extension SyncProfilesRequestDataPatterns on SyncProfilesRequestData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncProfilesRequestData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncProfilesRequestData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncProfilesRequestData value)  $default,){
final _that = this;
switch (_that) {
case _SyncProfilesRequestData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncProfilesRequestData value)?  $default,){
final _that = this;
switch (_that) {
case _SyncProfilesRequestData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'profiles')  List<WordProfileData> profiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncProfilesRequestData() when $default != null:
return $default(_that.profiles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'profiles')  List<WordProfileData> profiles)  $default,) {final _that = this;
switch (_that) {
case _SyncProfilesRequestData():
return $default(_that.profiles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'profiles')  List<WordProfileData> profiles)?  $default,) {final _that = this;
switch (_that) {
case _SyncProfilesRequestData() when $default != null:
return $default(_that.profiles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncProfilesRequestData extends SyncProfilesRequestData {
  const _SyncProfilesRequestData({@JsonKey(name: 'profiles') required  List<WordProfileData> profiles}): _profiles = profiles,super._();
  factory _SyncProfilesRequestData.fromJson(Map<String, dynamic> json) => _$SyncProfilesRequestDataFromJson(json);

 final  List<WordProfileData> _profiles;
@override@JsonKey(name: 'profiles') List<WordProfileData> get profiles {
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profiles);
}


/// Create a copy of SyncProfilesRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncProfilesRequestDataCopyWith<_SyncProfilesRequestData> get copyWith => __$SyncProfilesRequestDataCopyWithImpl<_SyncProfilesRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncProfilesRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncProfilesRequestData&&const DeepCollectionEquality().equals(other.profiles, _profiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_profiles));
}

@override
String toString() {
    return 'SyncProfilesRequestData(profiles: $profiles)';
}


}

/// @nodoc
abstract mixin class _$SyncProfilesRequestDataCopyWith<$Res> implements $SyncProfilesRequestDataCopyWith<$Res> {
  factory _$SyncProfilesRequestDataCopyWith(_SyncProfilesRequestData value, $Res Function(_SyncProfilesRequestData) _then) = __$SyncProfilesRequestDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'profiles') List<WordProfileData> profiles
});




}
/// @nodoc
class __$SyncProfilesRequestDataCopyWithImpl<$Res>
    implements _$SyncProfilesRequestDataCopyWith<$Res> {
  __$SyncProfilesRequestDataCopyWithImpl(this._self, this._then);

  final _SyncProfilesRequestData _self;
  final $Res Function(_SyncProfilesRequestData) _then;

/// Create a copy of SyncProfilesRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profiles = null,}) {
  return _then(_SyncProfilesRequestData(
profiles: null == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileData>,
  ));
}


}

// dart format on
