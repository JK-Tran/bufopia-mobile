// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'word_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WordProfileModel {

@JsonKey(name: 'word_id') String get wordId;@JsonKey(name: 'familiarity') int? get familiarity;@JsonKey(name: 'interval') int? get interval;@JsonKey(name: 'ease_factor') double? get easeFactor;@JsonKey(name: 'next_review') int? get nextReview;@JsonKey(name: 'lapses') int? get lapses;
/// Create a copy of WordProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordProfileModelCopyWith<WordProfileModel> get copyWith => _$WordProfileModelCopyWithImpl<WordProfileModel>(this as WordProfileModel, _$identity);

  /// Serializes this WordProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WordProfileModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordProfileModel&&(identical(other.wordId, _this.wordId) || other.wordId == _this.wordId)&&(identical(other.familiarity, _this.familiarity) || other.familiarity == _this.familiarity)&&(identical(other.interval, _this.interval) || other.interval == _this.interval)&&(identical(other.easeFactor, _this.easeFactor) || other.easeFactor == _this.easeFactor)&&(identical(other.nextReview, _this.nextReview) || other.nextReview == _this.nextReview)&&(identical(other.lapses, _this.lapses) || other.lapses == _this.lapses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordProfileModel;
  return Object.hash(runtimeType,_this.wordId,_this.familiarity,_this.interval,_this.easeFactor,_this.nextReview,_this.lapses);
}

@override
String toString() {
  final _this = this as WordProfileModel;
  return 'WordProfileModel(wordId: ${_this.wordId}, familiarity: ${_this.familiarity}, interval: ${_this.interval}, easeFactor: ${_this.easeFactor}, nextReview: ${_this.nextReview}, lapses: ${_this.lapses})';
}


}

/// @nodoc
abstract mixin class $WordProfileModelCopyWith<$Res>  {
  factory $WordProfileModelCopyWith(WordProfileModel value, $Res Function(WordProfileModel) _then) = _$WordProfileModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'word_id') String wordId,@JsonKey(name: 'familiarity') int? familiarity,@JsonKey(name: 'interval') int? interval,@JsonKey(name: 'ease_factor') double? easeFactor,@JsonKey(name: 'next_review') int? nextReview,@JsonKey(name: 'lapses') int? lapses
});




}
/// @nodoc
class _$WordProfileModelCopyWithImpl<$Res>
    implements $WordProfileModelCopyWith<$Res> {
  _$WordProfileModelCopyWithImpl(this._self, this._then);

  final WordProfileModel _self;
  final $Res Function(WordProfileModel) _then;

/// Create a copy of WordProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wordId = null,Object? familiarity = freezed,Object? interval = freezed,Object? easeFactor = freezed,Object? nextReview = freezed,Object? lapses = freezed,}) {
  return _then(WordProfileModel(
wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,familiarity: freezed == familiarity ? _self.familiarity : familiarity // ignore: cast_nullable_to_non_nullable
as int?,interval: freezed == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int?,easeFactor: freezed == easeFactor ? _self.easeFactor : easeFactor // ignore: cast_nullable_to_non_nullable
as double?,nextReview: freezed == nextReview ? _self.nextReview : nextReview // ignore: cast_nullable_to_non_nullable
as int?,lapses: freezed == lapses ? _self.lapses : lapses // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordProfileModel].
extension WordProfileModelPatterns on WordProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _WordProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _WordProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'word_id')  String wordId, @JsonKey(name: 'familiarity')  int? familiarity, @JsonKey(name: 'interval')  int? interval, @JsonKey(name: 'ease_factor')  double? easeFactor, @JsonKey(name: 'next_review')  int? nextReview, @JsonKey(name: 'lapses')  int? lapses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordProfileModel() when $default != null:
return $default(_that.wordId,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'word_id')  String wordId, @JsonKey(name: 'familiarity')  int? familiarity, @JsonKey(name: 'interval')  int? interval, @JsonKey(name: 'ease_factor')  double? easeFactor, @JsonKey(name: 'next_review')  int? nextReview, @JsonKey(name: 'lapses')  int? lapses)  $default,) {final _that = this;
switch (_that) {
case _WordProfileModel():
return $default(_that.wordId,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'word_id')  String wordId, @JsonKey(name: 'familiarity')  int? familiarity, @JsonKey(name: 'interval')  int? interval, @JsonKey(name: 'ease_factor')  double? easeFactor, @JsonKey(name: 'next_review')  int? nextReview, @JsonKey(name: 'lapses')  int? lapses)?  $default,) {final _that = this;
switch (_that) {
case _WordProfileModel() when $default != null:
return $default(_that.wordId,_that.familiarity,_that.interval,_that.easeFactor,_that.nextReview,_that.lapses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordProfileModel extends WordProfileModel {
  const _WordProfileModel({@JsonKey(name: 'word_id') required this.wordId, @JsonKey(name: 'familiarity') this.familiarity, @JsonKey(name: 'interval') this.interval, @JsonKey(name: 'ease_factor') this.easeFactor, @JsonKey(name: 'next_review') this.nextReview, @JsonKey(name: 'lapses') this.lapses}): super._();
  factory _WordProfileModel.fromJson(Map<String, dynamic> json) => _$WordProfileModelFromJson(json);

@override@JsonKey(name: 'word_id') final  String wordId;
@override@JsonKey(name: 'familiarity') final  int? familiarity;
@override@JsonKey(name: 'interval') final  int? interval;
@override@JsonKey(name: 'ease_factor') final  double? easeFactor;
@override@JsonKey(name: 'next_review') final  int? nextReview;
@override@JsonKey(name: 'lapses') final  int? lapses;

/// Create a copy of WordProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordProfileModelCopyWith<_WordProfileModel> get copyWith => __$WordProfileModelCopyWithImpl<_WordProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordProfileModel&&(identical(other.wordId, wordId) || other.wordId == wordId)&&(identical(other.familiarity, familiarity) || other.familiarity == familiarity)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.easeFactor, easeFactor) || other.easeFactor == easeFactor)&&(identical(other.nextReview, nextReview) || other.nextReview == nextReview)&&(identical(other.lapses, lapses) || other.lapses == lapses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,wordId,familiarity,interval,easeFactor,nextReview,lapses);
}

@override
String toString() {
    return 'WordProfileModel(wordId: $wordId, familiarity: $familiarity, interval: $interval, easeFactor: $easeFactor, nextReview: $nextReview, lapses: $lapses)';
}


}

/// @nodoc
abstract mixin class _$WordProfileModelCopyWith<$Res> implements $WordProfileModelCopyWith<$Res> {
  factory _$WordProfileModelCopyWith(_WordProfileModel value, $Res Function(_WordProfileModel) _then) = __$WordProfileModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'word_id') String wordId,@JsonKey(name: 'familiarity') int? familiarity,@JsonKey(name: 'interval') int? interval,@JsonKey(name: 'ease_factor') double? easeFactor,@JsonKey(name: 'next_review') int? nextReview,@JsonKey(name: 'lapses') int? lapses
});




}
/// @nodoc
class __$WordProfileModelCopyWithImpl<$Res>
    implements _$WordProfileModelCopyWith<$Res> {
  __$WordProfileModelCopyWithImpl(this._self, this._then);

  final _WordProfileModel _self;
  final $Res Function(_WordProfileModel) _then;

/// Create a copy of WordProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wordId = null,Object? familiarity = freezed,Object? interval = freezed,Object? easeFactor = freezed,Object? nextReview = freezed,Object? lapses = freezed,}) {
  return _then(_WordProfileModel(
wordId: null == wordId ? _self.wordId : wordId // ignore: cast_nullable_to_non_nullable
as String,familiarity: freezed == familiarity ? _self.familiarity : familiarity // ignore: cast_nullable_to_non_nullable
as int?,interval: freezed == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int?,easeFactor: freezed == easeFactor ? _self.easeFactor : easeFactor // ignore: cast_nullable_to_non_nullable
as double?,nextReview: freezed == nextReview ? _self.nextReview : nextReview // ignore: cast_nullable_to_non_nullable
as int?,lapses: freezed == lapses ? _self.lapses : lapses // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$WordProfilesResponseModel {

@JsonKey(name: 'uid') String? get uid;@JsonKey(name: 'profiles') List<WordProfileModel>? get profiles;
/// Create a copy of WordProfilesResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WordProfilesResponseModelCopyWith<WordProfilesResponseModel> get copyWith => _$WordProfilesResponseModelCopyWithImpl<WordProfilesResponseModel>(this as WordProfilesResponseModel, _$identity);

  /// Serializes this WordProfilesResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WordProfilesResponseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WordProfilesResponseModel&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&const DeepCollectionEquality().equals(other.profiles, _this.profiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WordProfilesResponseModel;
  return Object.hash(runtimeType,_this.uid,const DeepCollectionEquality().hash(_this.profiles));
}

@override
String toString() {
  final _this = this as WordProfilesResponseModel;
  return 'WordProfilesResponseModel(uid: ${_this.uid}, profiles: ${_this.profiles})';
}


}

/// @nodoc
abstract mixin class $WordProfilesResponseModelCopyWith<$Res>  {
  factory $WordProfilesResponseModelCopyWith(WordProfilesResponseModel value, $Res Function(WordProfilesResponseModel) _then) = _$WordProfilesResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'profiles') List<WordProfileModel>? profiles
});




}
/// @nodoc
class _$WordProfilesResponseModelCopyWithImpl<$Res>
    implements $WordProfilesResponseModelCopyWith<$Res> {
  _$WordProfilesResponseModelCopyWithImpl(this._self, this._then);

  final WordProfilesResponseModel _self;
  final $Res Function(WordProfilesResponseModel) _then;

/// Create a copy of WordProfilesResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = freezed,Object? profiles = freezed,}) {
  return _then(WordProfilesResponseModel(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,profiles: freezed == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WordProfilesResponseModel].
extension WordProfilesResponseModelPatterns on WordProfilesResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WordProfilesResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WordProfilesResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WordProfilesResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _WordProfilesResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WordProfilesResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _WordProfilesResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'profiles')  List<WordProfileModel>? profiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WordProfilesResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'profiles')  List<WordProfileModel>? profiles)  $default,) {final _that = this;
switch (_that) {
case _WordProfilesResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'profiles')  List<WordProfileModel>? profiles)?  $default,) {final _that = this;
switch (_that) {
case _WordProfilesResponseModel() when $default != null:
return $default(_that.uid,_that.profiles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WordProfilesResponseModel extends WordProfilesResponseModel {
  const _WordProfilesResponseModel({@JsonKey(name: 'uid') this.uid, @JsonKey(name: 'profiles')  List<WordProfileModel>? profiles}): _profiles = profiles,super._();
  factory _WordProfilesResponseModel.fromJson(Map<String, dynamic> json) => _$WordProfilesResponseModelFromJson(json);

@override@JsonKey(name: 'uid') final  String? uid;
 final  List<WordProfileModel>? _profiles;
@override@JsonKey(name: 'profiles') List<WordProfileModel>? get profiles {
  final value = _profiles;
  if (value == null) return null;
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WordProfilesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordProfilesResponseModelCopyWith<_WordProfilesResponseModel> get copyWith => __$WordProfilesResponseModelCopyWithImpl<_WordProfilesResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WordProfilesResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordProfilesResponseModel&&(identical(other.uid, uid) || other.uid == uid)&&const DeepCollectionEquality().equals(other.profiles, _profiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,uid,const DeepCollectionEquality().hash(_profiles));
}

@override
String toString() {
    return 'WordProfilesResponseModel(uid: $uid, profiles: $profiles)';
}


}

/// @nodoc
abstract mixin class _$WordProfilesResponseModelCopyWith<$Res> implements $WordProfilesResponseModelCopyWith<$Res> {
  factory _$WordProfilesResponseModelCopyWith(_WordProfilesResponseModel value, $Res Function(_WordProfilesResponseModel) _then) = __$WordProfilesResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'profiles') List<WordProfileModel>? profiles
});




}
/// @nodoc
class __$WordProfilesResponseModelCopyWithImpl<$Res>
    implements _$WordProfilesResponseModelCopyWith<$Res> {
  __$WordProfilesResponseModelCopyWithImpl(this._self, this._then);

  final _WordProfilesResponseModel _self;
  final $Res Function(_WordProfilesResponseModel) _then;

/// Create a copy of WordProfilesResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = freezed,Object? profiles = freezed,}) {
  return _then(_WordProfilesResponseModel(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,profiles: freezed == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileModel>?,
  ));
}


}


/// @nodoc
mixin _$SyncProfilesRequestModel {

@JsonKey(name: 'profiles') List<WordProfileModel> get profiles;
/// Create a copy of SyncProfilesRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncProfilesRequestModelCopyWith<SyncProfilesRequestModel> get copyWith => _$SyncProfilesRequestModelCopyWithImpl<SyncProfilesRequestModel>(this as SyncProfilesRequestModel, _$identity);

  /// Serializes this SyncProfilesRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SyncProfilesRequestModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncProfilesRequestModel&&const DeepCollectionEquality().equals(other.profiles, _this.profiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SyncProfilesRequestModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.profiles));
}

@override
String toString() {
  final _this = this as SyncProfilesRequestModel;
  return 'SyncProfilesRequestModel(profiles: ${_this.profiles})';
}


}

/// @nodoc
abstract mixin class $SyncProfilesRequestModelCopyWith<$Res>  {
  factory $SyncProfilesRequestModelCopyWith(SyncProfilesRequestModel value, $Res Function(SyncProfilesRequestModel) _then) = _$SyncProfilesRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'profiles') List<WordProfileModel> profiles
});




}
/// @nodoc
class _$SyncProfilesRequestModelCopyWithImpl<$Res>
    implements $SyncProfilesRequestModelCopyWith<$Res> {
  _$SyncProfilesRequestModelCopyWithImpl(this._self, this._then);

  final SyncProfilesRequestModel _self;
  final $Res Function(SyncProfilesRequestModel) _then;

/// Create a copy of SyncProfilesRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? profiles = null,}) {
  return _then(SyncProfilesRequestModel(
profiles: null == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncProfilesRequestModel].
extension SyncProfilesRequestModelPatterns on SyncProfilesRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncProfilesRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncProfilesRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncProfilesRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _SyncProfilesRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncProfilesRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _SyncProfilesRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'profiles')  List<WordProfileModel> profiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncProfilesRequestModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'profiles')  List<WordProfileModel> profiles)  $default,) {final _that = this;
switch (_that) {
case _SyncProfilesRequestModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'profiles')  List<WordProfileModel> profiles)?  $default,) {final _that = this;
switch (_that) {
case _SyncProfilesRequestModel() when $default != null:
return $default(_that.profiles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncProfilesRequestModel extends SyncProfilesRequestModel {
  const _SyncProfilesRequestModel({@JsonKey(name: 'profiles') required  List<WordProfileModel> profiles}): _profiles = profiles,super._();
  factory _SyncProfilesRequestModel.fromJson(Map<String, dynamic> json) => _$SyncProfilesRequestModelFromJson(json);

 final  List<WordProfileModel> _profiles;
@override@JsonKey(name: 'profiles') List<WordProfileModel> get profiles {
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profiles);
}


/// Create a copy of SyncProfilesRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncProfilesRequestModelCopyWith<_SyncProfilesRequestModel> get copyWith => __$SyncProfilesRequestModelCopyWithImpl<_SyncProfilesRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncProfilesRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncProfilesRequestModel&&const DeepCollectionEquality().equals(other.profiles, _profiles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_profiles));
}

@override
String toString() {
    return 'SyncProfilesRequestModel(profiles: $profiles)';
}


}

/// @nodoc
abstract mixin class _$SyncProfilesRequestModelCopyWith<$Res> implements $SyncProfilesRequestModelCopyWith<$Res> {
  factory _$SyncProfilesRequestModelCopyWith(_SyncProfilesRequestModel value, $Res Function(_SyncProfilesRequestModel) _then) = __$SyncProfilesRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'profiles') List<WordProfileModel> profiles
});




}
/// @nodoc
class __$SyncProfilesRequestModelCopyWithImpl<$Res>
    implements _$SyncProfilesRequestModelCopyWith<$Res> {
  __$SyncProfilesRequestModelCopyWithImpl(this._self, this._then);

  final _SyncProfilesRequestModel _self;
  final $Res Function(_SyncProfilesRequestModel) _then;

/// Create a copy of SyncProfilesRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? profiles = null,}) {
  return _then(_SyncProfilesRequestModel(
profiles: null == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<WordProfileModel>,
  ));
}


}

// dart format on
