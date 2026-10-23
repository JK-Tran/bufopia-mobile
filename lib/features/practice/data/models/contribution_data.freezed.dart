// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contribution_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContributionData {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'word_en') String? get wordEn;@JsonKey(name: 'meaning_vi') String? get meaningVi;@JsonKey(name: 'topic_id') String? get topicId;@JsonKey(name: 'part_of_speech') String? get partOfSpeech;@JsonKey(name: 'phonetic') String? get phonetic;@JsonKey(name: 'example_en') String? get exampleEn;@JsonKey(name: 'example_vi') String? get exampleVi;@JsonKey(name: 'status') String? get status;@JsonKey(name: 'review_note') String? get reviewNote;@JsonKey(name: 'ai_state') String? get aiState;@JsonKey(name: 'created_at') int? get createdAt;
/// Create a copy of ContributionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContributionDataCopyWith<ContributionData> get copyWith => _$ContributionDataCopyWithImpl<ContributionData>(this as ContributionData, _$identity);

  /// Serializes this ContributionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ContributionData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContributionData&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.wordEn, _this.wordEn) || other.wordEn == _this.wordEn)&&(identical(other.meaningVi, _this.meaningVi) || other.meaningVi == _this.meaningVi)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.partOfSpeech, _this.partOfSpeech) || other.partOfSpeech == _this.partOfSpeech)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.exampleEn, _this.exampleEn) || other.exampleEn == _this.exampleEn)&&(identical(other.exampleVi, _this.exampleVi) || other.exampleVi == _this.exampleVi)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.reviewNote, _this.reviewNote) || other.reviewNote == _this.reviewNote)&&(identical(other.aiState, _this.aiState) || other.aiState == _this.aiState)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ContributionData;
  return Object.hash(runtimeType,_this.id,_this.wordEn,_this.meaningVi,_this.topicId,_this.partOfSpeech,_this.phonetic,_this.exampleEn,_this.exampleVi,_this.status,_this.reviewNote,_this.aiState,_this.createdAt);
}

@override
String toString() {
  final _this = this as ContributionData;
  return 'ContributionData(id: ${_this.id}, wordEn: ${_this.wordEn}, meaningVi: ${_this.meaningVi}, topicId: ${_this.topicId}, partOfSpeech: ${_this.partOfSpeech}, phonetic: ${_this.phonetic}, exampleEn: ${_this.exampleEn}, exampleVi: ${_this.exampleVi}, status: ${_this.status}, reviewNote: ${_this.reviewNote}, aiState: ${_this.aiState}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ContributionDataCopyWith<$Res>  {
  factory $ContributionDataCopyWith(ContributionData value, $Res Function(ContributionData) _then) = _$ContributionDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'word_en') String? wordEn,@JsonKey(name: 'meaning_vi') String? meaningVi,@JsonKey(name: 'topic_id') String? topicId,@JsonKey(name: 'part_of_speech') String? partOfSpeech,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'example_en') String? exampleEn,@JsonKey(name: 'example_vi') String? exampleVi,@JsonKey(name: 'status') String? status,@JsonKey(name: 'review_note') String? reviewNote,@JsonKey(name: 'ai_state') String? aiState,@JsonKey(name: 'created_at') int? createdAt
});




}
/// @nodoc
class _$ContributionDataCopyWithImpl<$Res>
    implements $ContributionDataCopyWith<$Res> {
  _$ContributionDataCopyWithImpl(this._self, this._then);

  final ContributionData _self;
  final $Res Function(ContributionData) _then;

/// Create a copy of ContributionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? wordEn = freezed,Object? meaningVi = freezed,Object? topicId = freezed,Object? partOfSpeech = freezed,Object? phonetic = freezed,Object? exampleEn = freezed,Object? exampleVi = freezed,Object? status = freezed,Object? reviewNote = freezed,Object? aiState = freezed,Object? createdAt = freezed,}) {
  return _then(ContributionData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,wordEn: freezed == wordEn ? _self.wordEn : wordEn // ignore: cast_nullable_to_non_nullable
as String?,meaningVi: freezed == meaningVi ? _self.meaningVi : meaningVi // ignore: cast_nullable_to_non_nullable
as String?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,exampleEn: freezed == exampleEn ? _self.exampleEn : exampleEn // ignore: cast_nullable_to_non_nullable
as String?,exampleVi: freezed == exampleVi ? _self.exampleVi : exampleVi // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,reviewNote: freezed == reviewNote ? _self.reviewNote : reviewNote // ignore: cast_nullable_to_non_nullable
as String?,aiState: freezed == aiState ? _self.aiState : aiState // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContributionData].
extension ContributionDataPatterns on ContributionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContributionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContributionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContributionData value)  $default,){
final _that = this;
switch (_that) {
case _ContributionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContributionData value)?  $default,){
final _that = this;
switch (_that) {
case _ContributionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'word_en')  String? wordEn, @JsonKey(name: 'meaning_vi')  String? meaningVi, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'part_of_speech')  String? partOfSpeech, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'example_en')  String? exampleEn, @JsonKey(name: 'example_vi')  String? exampleVi, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'review_note')  String? reviewNote, @JsonKey(name: 'ai_state')  String? aiState, @JsonKey(name: 'created_at')  int? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContributionData() when $default != null:
return $default(_that.id,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.status,_that.reviewNote,_that.aiState,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'word_en')  String? wordEn, @JsonKey(name: 'meaning_vi')  String? meaningVi, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'part_of_speech')  String? partOfSpeech, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'example_en')  String? exampleEn, @JsonKey(name: 'example_vi')  String? exampleVi, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'review_note')  String? reviewNote, @JsonKey(name: 'ai_state')  String? aiState, @JsonKey(name: 'created_at')  int? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ContributionData():
return $default(_that.id,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.status,_that.reviewNote,_that.aiState,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'word_en')  String? wordEn, @JsonKey(name: 'meaning_vi')  String? meaningVi, @JsonKey(name: 'topic_id')  String? topicId, @JsonKey(name: 'part_of_speech')  String? partOfSpeech, @JsonKey(name: 'phonetic')  String? phonetic, @JsonKey(name: 'example_en')  String? exampleEn, @JsonKey(name: 'example_vi')  String? exampleVi, @JsonKey(name: 'status')  String? status, @JsonKey(name: 'review_note')  String? reviewNote, @JsonKey(name: 'ai_state')  String? aiState, @JsonKey(name: 'created_at')  int? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ContributionData() when $default != null:
return $default(_that.id,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.status,_that.reviewNote,_that.aiState,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContributionData extends ContributionData {
  const _ContributionData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'word_en') this.wordEn, @JsonKey(name: 'meaning_vi') this.meaningVi, @JsonKey(name: 'topic_id') this.topicId, @JsonKey(name: 'part_of_speech') this.partOfSpeech, @JsonKey(name: 'phonetic') this.phonetic, @JsonKey(name: 'example_en') this.exampleEn, @JsonKey(name: 'example_vi') this.exampleVi, @JsonKey(name: 'status') this.status, @JsonKey(name: 'review_note') this.reviewNote, @JsonKey(name: 'ai_state') this.aiState, @JsonKey(name: 'created_at') this.createdAt}): super._();
  factory _ContributionData.fromJson(Map<String, dynamic> json) => _$ContributionDataFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'word_en') final  String? wordEn;
@override@JsonKey(name: 'meaning_vi') final  String? meaningVi;
@override@JsonKey(name: 'topic_id') final  String? topicId;
@override@JsonKey(name: 'part_of_speech') final  String? partOfSpeech;
@override@JsonKey(name: 'phonetic') final  String? phonetic;
@override@JsonKey(name: 'example_en') final  String? exampleEn;
@override@JsonKey(name: 'example_vi') final  String? exampleVi;
@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'review_note') final  String? reviewNote;
@override@JsonKey(name: 'ai_state') final  String? aiState;
@override@JsonKey(name: 'created_at') final  int? createdAt;

/// Create a copy of ContributionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContributionDataCopyWith<_ContributionData> get copyWith => __$ContributionDataCopyWithImpl<_ContributionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContributionDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContributionData&&(identical(other.id, id) || other.id == id)&&(identical(other.wordEn, wordEn) || other.wordEn == wordEn)&&(identical(other.meaningVi, meaningVi) || other.meaningVi == meaningVi)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.partOfSpeech, partOfSpeech) || other.partOfSpeech == partOfSpeech)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.exampleEn, exampleEn) || other.exampleEn == exampleEn)&&(identical(other.exampleVi, exampleVi) || other.exampleVi == exampleVi)&&(identical(other.status, status) || other.status == status)&&(identical(other.reviewNote, reviewNote) || other.reviewNote == reviewNote)&&(identical(other.aiState, aiState) || other.aiState == aiState)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,wordEn,meaningVi,topicId,partOfSpeech,phonetic,exampleEn,exampleVi,status,reviewNote,aiState,createdAt);
}

@override
String toString() {
    return 'ContributionData(id: $id, wordEn: $wordEn, meaningVi: $meaningVi, topicId: $topicId, partOfSpeech: $partOfSpeech, phonetic: $phonetic, exampleEn: $exampleEn, exampleVi: $exampleVi, status: $status, reviewNote: $reviewNote, aiState: $aiState, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ContributionDataCopyWith<$Res> implements $ContributionDataCopyWith<$Res> {
  factory _$ContributionDataCopyWith(_ContributionData value, $Res Function(_ContributionData) _then) = __$ContributionDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'word_en') String? wordEn,@JsonKey(name: 'meaning_vi') String? meaningVi,@JsonKey(name: 'topic_id') String? topicId,@JsonKey(name: 'part_of_speech') String? partOfSpeech,@JsonKey(name: 'phonetic') String? phonetic,@JsonKey(name: 'example_en') String? exampleEn,@JsonKey(name: 'example_vi') String? exampleVi,@JsonKey(name: 'status') String? status,@JsonKey(name: 'review_note') String? reviewNote,@JsonKey(name: 'ai_state') String? aiState,@JsonKey(name: 'created_at') int? createdAt
});




}
/// @nodoc
class __$ContributionDataCopyWithImpl<$Res>
    implements _$ContributionDataCopyWith<$Res> {
  __$ContributionDataCopyWithImpl(this._self, this._then);

  final _ContributionData _self;
  final $Res Function(_ContributionData) _then;

/// Create a copy of ContributionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? wordEn = freezed,Object? meaningVi = freezed,Object? topicId = freezed,Object? partOfSpeech = freezed,Object? phonetic = freezed,Object? exampleEn = freezed,Object? exampleVi = freezed,Object? status = freezed,Object? reviewNote = freezed,Object? aiState = freezed,Object? createdAt = freezed,}) {
  return _then(_ContributionData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,wordEn: freezed == wordEn ? _self.wordEn : wordEn // ignore: cast_nullable_to_non_nullable
as String?,meaningVi: freezed == meaningVi ? _self.meaningVi : meaningVi // ignore: cast_nullable_to_non_nullable
as String?,topicId: freezed == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String?,partOfSpeech: freezed == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String?,phonetic: freezed == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String?,exampleEn: freezed == exampleEn ? _self.exampleEn : exampleEn // ignore: cast_nullable_to_non_nullable
as String?,exampleVi: freezed == exampleVi ? _self.exampleVi : exampleVi // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,reviewNote: freezed == reviewNote ? _self.reviewNote : reviewNote // ignore: cast_nullable_to_non_nullable
as String?,aiState: freezed == aiState ? _self.aiState : aiState // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$ContributionsResponseData {

@JsonKey(name: 'contributions') List<ContributionData>? get contributions;
/// Create a copy of ContributionsResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContributionsResponseDataCopyWith<ContributionsResponseData> get copyWith => _$ContributionsResponseDataCopyWithImpl<ContributionsResponseData>(this as ContributionsResponseData, _$identity);

  /// Serializes this ContributionsResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ContributionsResponseData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContributionsResponseData&&const DeepCollectionEquality().equals(other.contributions, _this.contributions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ContributionsResponseData;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.contributions));
}

@override
String toString() {
  final _this = this as ContributionsResponseData;
  return 'ContributionsResponseData(contributions: ${_this.contributions})';
}


}

/// @nodoc
abstract mixin class $ContributionsResponseDataCopyWith<$Res>  {
  factory $ContributionsResponseDataCopyWith(ContributionsResponseData value, $Res Function(ContributionsResponseData) _then) = _$ContributionsResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'contributions') List<ContributionData>? contributions
});




}
/// @nodoc
class _$ContributionsResponseDataCopyWithImpl<$Res>
    implements $ContributionsResponseDataCopyWith<$Res> {
  _$ContributionsResponseDataCopyWithImpl(this._self, this._then);

  final ContributionsResponseData _self;
  final $Res Function(ContributionsResponseData) _then;

/// Create a copy of ContributionsResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contributions = freezed,}) {
  return _then(ContributionsResponseData(
contributions: freezed == contributions ? _self.contributions : contributions // ignore: cast_nullable_to_non_nullable
as List<ContributionData>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ContributionsResponseData].
extension ContributionsResponseDataPatterns on ContributionsResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContributionsResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContributionsResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContributionsResponseData value)  $default,){
final _that = this;
switch (_that) {
case _ContributionsResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContributionsResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _ContributionsResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'contributions')  List<ContributionData>? contributions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContributionsResponseData() when $default != null:
return $default(_that.contributions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'contributions')  List<ContributionData>? contributions)  $default,) {final _that = this;
switch (_that) {
case _ContributionsResponseData():
return $default(_that.contributions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'contributions')  List<ContributionData>? contributions)?  $default,) {final _that = this;
switch (_that) {
case _ContributionsResponseData() when $default != null:
return $default(_that.contributions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContributionsResponseData extends ContributionsResponseData {
  const _ContributionsResponseData({@JsonKey(name: 'contributions')  List<ContributionData>? contributions}): _contributions = contributions,super._();
  factory _ContributionsResponseData.fromJson(Map<String, dynamic> json) => _$ContributionsResponseDataFromJson(json);

 final  List<ContributionData>? _contributions;
@override@JsonKey(name: 'contributions') List<ContributionData>? get contributions {
  final value = _contributions;
  if (value == null) return null;
  if (_contributions is EqualUnmodifiableListView) return _contributions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ContributionsResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContributionsResponseDataCopyWith<_ContributionsResponseData> get copyWith => __$ContributionsResponseDataCopyWithImpl<_ContributionsResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContributionsResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContributionsResponseData&&const DeepCollectionEquality().equals(other.contributions, _contributions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_contributions));
}

@override
String toString() {
    return 'ContributionsResponseData(contributions: $contributions)';
}


}

/// @nodoc
abstract mixin class _$ContributionsResponseDataCopyWith<$Res> implements $ContributionsResponseDataCopyWith<$Res> {
  factory _$ContributionsResponseDataCopyWith(_ContributionsResponseData value, $Res Function(_ContributionsResponseData) _then) = __$ContributionsResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'contributions') List<ContributionData>? contributions
});




}
/// @nodoc
class __$ContributionsResponseDataCopyWithImpl<$Res>
    implements _$ContributionsResponseDataCopyWith<$Res> {
  __$ContributionsResponseDataCopyWithImpl(this._self, this._then);

  final _ContributionsResponseData _self;
  final $Res Function(_ContributionsResponseData) _then;

/// Create a copy of ContributionsResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contributions = freezed,}) {
  return _then(_ContributionsResponseData(
contributions: freezed == contributions ? _self._contributions : contributions // ignore: cast_nullable_to_non_nullable
as List<ContributionData>?,
  ));
}


}


/// @nodoc
mixin _$SubmitContributionResponseData {

@JsonKey(name: 'success') bool? get success;@JsonKey(name: 'contribution') ContributionData? get contribution;
/// Create a copy of SubmitContributionResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitContributionResponseDataCopyWith<SubmitContributionResponseData> get copyWith => _$SubmitContributionResponseDataCopyWithImpl<SubmitContributionResponseData>(this as SubmitContributionResponseData, _$identity);

  /// Serializes this SubmitContributionResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubmitContributionResponseData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitContributionResponseData&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.contribution, _this.contribution) || other.contribution == _this.contribution));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubmitContributionResponseData;
  return Object.hash(runtimeType,_this.success,_this.contribution);
}

@override
String toString() {
  final _this = this as SubmitContributionResponseData;
  return 'SubmitContributionResponseData(success: ${_this.success}, contribution: ${_this.contribution})';
}


}

/// @nodoc
abstract mixin class $SubmitContributionResponseDataCopyWith<$Res>  {
  factory $SubmitContributionResponseDataCopyWith(SubmitContributionResponseData value, $Res Function(SubmitContributionResponseData) _then) = _$SubmitContributionResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'contribution') ContributionData? contribution
});


$ContributionDataCopyWith<$Res>? get contribution;

}
/// @nodoc
class _$SubmitContributionResponseDataCopyWithImpl<$Res>
    implements $SubmitContributionResponseDataCopyWith<$Res> {
  _$SubmitContributionResponseDataCopyWithImpl(this._self, this._then);

  final SubmitContributionResponseData _self;
  final $Res Function(SubmitContributionResponseData) _then;

/// Create a copy of SubmitContributionResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? contribution = freezed,}) {
  return _then(SubmitContributionResponseData(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,contribution: freezed == contribution ? _self.contribution : contribution // ignore: cast_nullable_to_non_nullable
as ContributionData?,
  ));
}
/// Create a copy of SubmitContributionResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContributionDataCopyWith<$Res>? get contribution {
    if (_self.contribution == null) {
    return null;
  }

  return $ContributionDataCopyWith<$Res>(_self.contribution!, (value) {
    return _then(_self.copyWith(contribution: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubmitContributionResponseData].
extension SubmitContributionResponseDataPatterns on SubmitContributionResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitContributionResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitContributionResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitContributionResponseData value)  $default,){
final _that = this;
switch (_that) {
case _SubmitContributionResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitContributionResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitContributionResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'contribution')  ContributionData? contribution)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitContributionResponseData() when $default != null:
return $default(_that.success,_that.contribution);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'contribution')  ContributionData? contribution)  $default,) {final _that = this;
switch (_that) {
case _SubmitContributionResponseData():
return $default(_that.success,_that.contribution);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'contribution')  ContributionData? contribution)?  $default,) {final _that = this;
switch (_that) {
case _SubmitContributionResponseData() when $default != null:
return $default(_that.success,_that.contribution);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmitContributionResponseData extends SubmitContributionResponseData {
  const _SubmitContributionResponseData({@JsonKey(name: 'success') this.success, @JsonKey(name: 'contribution') this.contribution}): super._();
  factory _SubmitContributionResponseData.fromJson(Map<String, dynamic> json) => _$SubmitContributionResponseDataFromJson(json);

@override@JsonKey(name: 'success') final  bool? success;
@override@JsonKey(name: 'contribution') final  ContributionData? contribution;

/// Create a copy of SubmitContributionResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitContributionResponseDataCopyWith<_SubmitContributionResponseData> get copyWith => __$SubmitContributionResponseDataCopyWithImpl<_SubmitContributionResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitContributionResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitContributionResponseData&&(identical(other.success, success) || other.success == success)&&(identical(other.contribution, contribution) || other.contribution == contribution));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,success,contribution);
}

@override
String toString() {
    return 'SubmitContributionResponseData(success: $success, contribution: $contribution)';
}


}

/// @nodoc
abstract mixin class _$SubmitContributionResponseDataCopyWith<$Res> implements $SubmitContributionResponseDataCopyWith<$Res> {
  factory _$SubmitContributionResponseDataCopyWith(_SubmitContributionResponseData value, $Res Function(_SubmitContributionResponseData) _then) = __$SubmitContributionResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'contribution') ContributionData? contribution
});


@override $ContributionDataCopyWith<$Res>? get contribution;

}
/// @nodoc
class __$SubmitContributionResponseDataCopyWithImpl<$Res>
    implements _$SubmitContributionResponseDataCopyWith<$Res> {
  __$SubmitContributionResponseDataCopyWithImpl(this._self, this._then);

  final _SubmitContributionResponseData _self;
  final $Res Function(_SubmitContributionResponseData) _then;

/// Create a copy of SubmitContributionResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? contribution = freezed,}) {
  return _then(_SubmitContributionResponseData(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,contribution: freezed == contribution ? _self.contribution : contribution // ignore: cast_nullable_to_non_nullable
as ContributionData?,
  ));
}

/// Create a copy of SubmitContributionResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContributionDataCopyWith<$Res>? get contribution {
    if (_self.contribution == null) {
    return null;
  }

  return $ContributionDataCopyWith<$Res>(_self.contribution!, (value) {
    return _then(_self.copyWith(contribution: value));
  });
}
}

// dart format on
