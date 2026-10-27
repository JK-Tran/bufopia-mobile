// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Contribution {

 String get id; String get wordEn; String get meaningVi; String get topicId; String get partOfSpeech; String get phonetic; String get exampleEn; String get exampleVi; String get status; String? get reviewNote; String get aiState; int? get createdAt;
/// Create a copy of Contribution
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContributionCopyWith<Contribution> get copyWith => _$ContributionCopyWithImpl<Contribution>(this as Contribution, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Contribution;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Contribution&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.wordEn, _this.wordEn) || other.wordEn == _this.wordEn)&&(identical(other.meaningVi, _this.meaningVi) || other.meaningVi == _this.meaningVi)&&(identical(other.topicId, _this.topicId) || other.topicId == _this.topicId)&&(identical(other.partOfSpeech, _this.partOfSpeech) || other.partOfSpeech == _this.partOfSpeech)&&(identical(other.phonetic, _this.phonetic) || other.phonetic == _this.phonetic)&&(identical(other.exampleEn, _this.exampleEn) || other.exampleEn == _this.exampleEn)&&(identical(other.exampleVi, _this.exampleVi) || other.exampleVi == _this.exampleVi)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.reviewNote, _this.reviewNote) || other.reviewNote == _this.reviewNote)&&(identical(other.aiState, _this.aiState) || other.aiState == _this.aiState)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}


@override
int get hashCode {
  final _this = this as Contribution;
  return Object.hash(runtimeType,_this.id,_this.wordEn,_this.meaningVi,_this.topicId,_this.partOfSpeech,_this.phonetic,_this.exampleEn,_this.exampleVi,_this.status,_this.reviewNote,_this.aiState,_this.createdAt);
}

@override
String toString() {
  final _this = this as Contribution;
  return 'Contribution(id: ${_this.id}, wordEn: ${_this.wordEn}, meaningVi: ${_this.meaningVi}, topicId: ${_this.topicId}, partOfSpeech: ${_this.partOfSpeech}, phonetic: ${_this.phonetic}, exampleEn: ${_this.exampleEn}, exampleVi: ${_this.exampleVi}, status: ${_this.status}, reviewNote: ${_this.reviewNote}, aiState: ${_this.aiState}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $ContributionCopyWith<$Res>  {
  factory $ContributionCopyWith(Contribution value, $Res Function(Contribution) _then) = _$ContributionCopyWithImpl;
@useResult
$Res call({
 String id, String wordEn, String meaningVi, String topicId, String partOfSpeech, String phonetic, String exampleEn, String exampleVi, String status, String? reviewNote, String aiState, int? createdAt
});




}
/// @nodoc
class _$ContributionCopyWithImpl<$Res>
    implements $ContributionCopyWith<$Res> {
  _$ContributionCopyWithImpl(this._self, this._then);

  final Contribution _self;
  final $Res Function(Contribution) _then;

/// Create a copy of Contribution
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? wordEn = null,Object? meaningVi = null,Object? topicId = null,Object? partOfSpeech = null,Object? phonetic = null,Object? exampleEn = null,Object? exampleVi = null,Object? status = null,Object? reviewNote = freezed,Object? aiState = null,Object? createdAt = freezed,}) {
  return _then(Contribution(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,wordEn: null == wordEn ? _self.wordEn : wordEn // ignore: cast_nullable_to_non_nullable
as String,meaningVi: null == meaningVi ? _self.meaningVi : meaningVi // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,partOfSpeech: null == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String,phonetic: null == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String,exampleEn: null == exampleEn ? _self.exampleEn : exampleEn // ignore: cast_nullable_to_non_nullable
as String,exampleVi: null == exampleVi ? _self.exampleVi : exampleVi // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reviewNote: freezed == reviewNote ? _self.reviewNote : reviewNote // ignore: cast_nullable_to_non_nullable
as String?,aiState: null == aiState ? _self.aiState : aiState // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Contribution].
extension ContributionPatterns on Contribution {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Contribution value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Contribution() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Contribution value)  $default,){
final _that = this;
switch (_that) {
case _Contribution():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Contribution value)?  $default,){
final _that = this;
switch (_that) {
case _Contribution() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String wordEn,  String meaningVi,  String topicId,  String partOfSpeech,  String phonetic,  String exampleEn,  String exampleVi,  String status,  String? reviewNote,  String aiState,  int? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Contribution() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String wordEn,  String meaningVi,  String topicId,  String partOfSpeech,  String phonetic,  String exampleEn,  String exampleVi,  String status,  String? reviewNote,  String aiState,  int? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Contribution():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String wordEn,  String meaningVi,  String topicId,  String partOfSpeech,  String phonetic,  String exampleEn,  String exampleVi,  String status,  String? reviewNote,  String aiState,  int? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Contribution() when $default != null:
return $default(_that.id,_that.wordEn,_that.meaningVi,_that.topicId,_that.partOfSpeech,_that.phonetic,_that.exampleEn,_that.exampleVi,_that.status,_that.reviewNote,_that.aiState,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _Contribution implements Contribution {
  const _Contribution({this.id = '', this.wordEn = '', this.meaningVi = '', this.topicId = '', this.partOfSpeech = '', this.phonetic = '', this.exampleEn = '', this.exampleVi = '', this.status = 'pending', this.reviewNote, this.aiState = '', this.createdAt});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String wordEn;
@override@JsonKey() final  String meaningVi;
@override@JsonKey() final  String topicId;
@override@JsonKey() final  String partOfSpeech;
@override@JsonKey() final  String phonetic;
@override@JsonKey() final  String exampleEn;
@override@JsonKey() final  String exampleVi;
@override@JsonKey() final  String status;
@override final  String? reviewNote;
@override@JsonKey() final  String aiState;
@override final  int? createdAt;

/// Create a copy of Contribution
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContributionCopyWith<_Contribution> get copyWith => __$ContributionCopyWithImpl<_Contribution>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Contribution&&(identical(other.id, id) || other.id == id)&&(identical(other.wordEn, wordEn) || other.wordEn == wordEn)&&(identical(other.meaningVi, meaningVi) || other.meaningVi == meaningVi)&&(identical(other.topicId, topicId) || other.topicId == topicId)&&(identical(other.partOfSpeech, partOfSpeech) || other.partOfSpeech == partOfSpeech)&&(identical(other.phonetic, phonetic) || other.phonetic == phonetic)&&(identical(other.exampleEn, exampleEn) || other.exampleEn == exampleEn)&&(identical(other.exampleVi, exampleVi) || other.exampleVi == exampleVi)&&(identical(other.status, status) || other.status == status)&&(identical(other.reviewNote, reviewNote) || other.reviewNote == reviewNote)&&(identical(other.aiState, aiState) || other.aiState == aiState)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,wordEn,meaningVi,topicId,partOfSpeech,phonetic,exampleEn,exampleVi,status,reviewNote,aiState,createdAt);
}

@override
String toString() {
    return 'Contribution(id: $id, wordEn: $wordEn, meaningVi: $meaningVi, topicId: $topicId, partOfSpeech: $partOfSpeech, phonetic: $phonetic, exampleEn: $exampleEn, exampleVi: $exampleVi, status: $status, reviewNote: $reviewNote, aiState: $aiState, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ContributionCopyWith<$Res> implements $ContributionCopyWith<$Res> {
  factory _$ContributionCopyWith(_Contribution value, $Res Function(_Contribution) _then) = __$ContributionCopyWithImpl;
@override @useResult
$Res call({
 String id, String wordEn, String meaningVi, String topicId, String partOfSpeech, String phonetic, String exampleEn, String exampleVi, String status, String? reviewNote, String aiState, int? createdAt
});




}
/// @nodoc
class __$ContributionCopyWithImpl<$Res>
    implements _$ContributionCopyWith<$Res> {
  __$ContributionCopyWithImpl(this._self, this._then);

  final _Contribution _self;
  final $Res Function(_Contribution) _then;

/// Create a copy of Contribution
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? wordEn = null,Object? meaningVi = null,Object? topicId = null,Object? partOfSpeech = null,Object? phonetic = null,Object? exampleEn = null,Object? exampleVi = null,Object? status = null,Object? reviewNote = freezed,Object? aiState = null,Object? createdAt = freezed,}) {
  return _then(_Contribution(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,wordEn: null == wordEn ? _self.wordEn : wordEn // ignore: cast_nullable_to_non_nullable
as String,meaningVi: null == meaningVi ? _self.meaningVi : meaningVi // ignore: cast_nullable_to_non_nullable
as String,topicId: null == topicId ? _self.topicId : topicId // ignore: cast_nullable_to_non_nullable
as String,partOfSpeech: null == partOfSpeech ? _self.partOfSpeech : partOfSpeech // ignore: cast_nullable_to_non_nullable
as String,phonetic: null == phonetic ? _self.phonetic : phonetic // ignore: cast_nullable_to_non_nullable
as String,exampleEn: null == exampleEn ? _self.exampleEn : exampleEn // ignore: cast_nullable_to_non_nullable
as String,exampleVi: null == exampleVi ? _self.exampleVi : exampleVi // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,reviewNote: freezed == reviewNote ? _self.reviewNote : reviewNote // ignore: cast_nullable_to_non_nullable
as String?,aiState: null == aiState ? _self.aiState : aiState // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
