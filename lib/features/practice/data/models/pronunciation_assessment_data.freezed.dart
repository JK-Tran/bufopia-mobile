// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pronunciation_assessment_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PronunciationAssessmentData {

@JsonKey(name: 'provider') String? get provider;@JsonKey(name: 'scores') PronunciationScoresData? get scores;@JsonKey(name: 'words') List<PronunciationWordScoreData>? get words;
/// Create a copy of PronunciationAssessmentData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PronunciationAssessmentDataCopyWith<PronunciationAssessmentData> get copyWith => _$PronunciationAssessmentDataCopyWithImpl<PronunciationAssessmentData>(this as PronunciationAssessmentData, _$identity);

  /// Serializes this PronunciationAssessmentData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PronunciationAssessmentData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PronunciationAssessmentData&&(identical(other.provider, _this.provider) || other.provider == _this.provider)&&(identical(other.scores, _this.scores) || other.scores == _this.scores)&&const DeepCollectionEquality().equals(other.words, _this.words));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PronunciationAssessmentData;
  return Object.hash(runtimeType,_this.provider,_this.scores,const DeepCollectionEquality().hash(_this.words));
}

@override
String toString() {
  final _this = this as PronunciationAssessmentData;
  return 'PronunciationAssessmentData(provider: ${_this.provider}, scores: ${_this.scores}, words: ${_this.words})';
}


}

/// @nodoc
abstract mixin class $PronunciationAssessmentDataCopyWith<$Res>  {
  factory $PronunciationAssessmentDataCopyWith(PronunciationAssessmentData value, $Res Function(PronunciationAssessmentData) _then) = _$PronunciationAssessmentDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'provider') String? provider,@JsonKey(name: 'scores') PronunciationScoresData? scores,@JsonKey(name: 'words') List<PronunciationWordScoreData>? words
});


$PronunciationScoresDataCopyWith<$Res>? get scores;

}
/// @nodoc
class _$PronunciationAssessmentDataCopyWithImpl<$Res>
    implements $PronunciationAssessmentDataCopyWith<$Res> {
  _$PronunciationAssessmentDataCopyWithImpl(this._self, this._then);

  final PronunciationAssessmentData _self;
  final $Res Function(PronunciationAssessmentData) _then;

/// Create a copy of PronunciationAssessmentData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = freezed,Object? scores = freezed,Object? words = freezed,}) {
  return _then(PronunciationAssessmentData(
provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as PronunciationScoresData?,words: freezed == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as List<PronunciationWordScoreData>?,
  ));
}
/// Create a copy of PronunciationAssessmentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PronunciationScoresDataCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $PronunciationScoresDataCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}
}


/// Adds pattern-matching-related methods to [PronunciationAssessmentData].
extension PronunciationAssessmentDataPatterns on PronunciationAssessmentData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PronunciationAssessmentData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PronunciationAssessmentData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PronunciationAssessmentData value)  $default,){
final _that = this;
switch (_that) {
case _PronunciationAssessmentData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PronunciationAssessmentData value)?  $default,){
final _that = this;
switch (_that) {
case _PronunciationAssessmentData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'provider')  String? provider, @JsonKey(name: 'scores')  PronunciationScoresData? scores, @JsonKey(name: 'words')  List<PronunciationWordScoreData>? words)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PronunciationAssessmentData() when $default != null:
return $default(_that.provider,_that.scores,_that.words);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'provider')  String? provider, @JsonKey(name: 'scores')  PronunciationScoresData? scores, @JsonKey(name: 'words')  List<PronunciationWordScoreData>? words)  $default,) {final _that = this;
switch (_that) {
case _PronunciationAssessmentData():
return $default(_that.provider,_that.scores,_that.words);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'provider')  String? provider, @JsonKey(name: 'scores')  PronunciationScoresData? scores, @JsonKey(name: 'words')  List<PronunciationWordScoreData>? words)?  $default,) {final _that = this;
switch (_that) {
case _PronunciationAssessmentData() when $default != null:
return $default(_that.provider,_that.scores,_that.words);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PronunciationAssessmentData extends PronunciationAssessmentData {
  const _PronunciationAssessmentData({@JsonKey(name: 'provider') this.provider, @JsonKey(name: 'scores') this.scores, @JsonKey(name: 'words')  List<PronunciationWordScoreData>? words}): _words = words,super._();
  factory _PronunciationAssessmentData.fromJson(Map<String, dynamic> json) => _$PronunciationAssessmentDataFromJson(json);

@override@JsonKey(name: 'provider') final  String? provider;
@override@JsonKey(name: 'scores') final  PronunciationScoresData? scores;
 final  List<PronunciationWordScoreData>? _words;
@override@JsonKey(name: 'words') List<PronunciationWordScoreData>? get words {
  final value = _words;
  if (value == null) return null;
  if (_words is EqualUnmodifiableListView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PronunciationAssessmentData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PronunciationAssessmentDataCopyWith<_PronunciationAssessmentData> get copyWith => __$PronunciationAssessmentDataCopyWithImpl<_PronunciationAssessmentData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PronunciationAssessmentDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PronunciationAssessmentData&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.scores, scores) || other.scores == scores)&&const DeepCollectionEquality().equals(other.words, _words));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,provider,scores,const DeepCollectionEquality().hash(_words));
}

@override
String toString() {
    return 'PronunciationAssessmentData(provider: $provider, scores: $scores, words: $words)';
}


}

/// @nodoc
abstract mixin class _$PronunciationAssessmentDataCopyWith<$Res> implements $PronunciationAssessmentDataCopyWith<$Res> {
  factory _$PronunciationAssessmentDataCopyWith(_PronunciationAssessmentData value, $Res Function(_PronunciationAssessmentData) _then) = __$PronunciationAssessmentDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'provider') String? provider,@JsonKey(name: 'scores') PronunciationScoresData? scores,@JsonKey(name: 'words') List<PronunciationWordScoreData>? words
});


@override $PronunciationScoresDataCopyWith<$Res>? get scores;

}
/// @nodoc
class __$PronunciationAssessmentDataCopyWithImpl<$Res>
    implements _$PronunciationAssessmentDataCopyWith<$Res> {
  __$PronunciationAssessmentDataCopyWithImpl(this._self, this._then);

  final _PronunciationAssessmentData _self;
  final $Res Function(_PronunciationAssessmentData) _then;

/// Create a copy of PronunciationAssessmentData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = freezed,Object? scores = freezed,Object? words = freezed,}) {
  return _then(_PronunciationAssessmentData(
provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String?,scores: freezed == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as PronunciationScoresData?,words: freezed == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as List<PronunciationWordScoreData>?,
  ));
}

/// Create a copy of PronunciationAssessmentData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PronunciationScoresDataCopyWith<$Res>? get scores {
    if (_self.scores == null) {
    return null;
  }

  return $PronunciationScoresDataCopyWith<$Res>(_self.scores!, (value) {
    return _then(_self.copyWith(scores: value));
  });
}
}


/// @nodoc
mixin _$PronunciationScoresData {

@JsonKey(name: 'pronunciation') double? get pronunciation;@JsonKey(name: 'accuracy') double? get accuracy;@JsonKey(name: 'fluency') double? get fluency;@JsonKey(name: 'completeness') double? get completeness;
/// Create a copy of PronunciationScoresData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PronunciationScoresDataCopyWith<PronunciationScoresData> get copyWith => _$PronunciationScoresDataCopyWithImpl<PronunciationScoresData>(this as PronunciationScoresData, _$identity);

  /// Serializes this PronunciationScoresData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PronunciationScoresData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PronunciationScoresData&&(identical(other.pronunciation, _this.pronunciation) || other.pronunciation == _this.pronunciation)&&(identical(other.accuracy, _this.accuracy) || other.accuracy == _this.accuracy)&&(identical(other.fluency, _this.fluency) || other.fluency == _this.fluency)&&(identical(other.completeness, _this.completeness) || other.completeness == _this.completeness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PronunciationScoresData;
  return Object.hash(runtimeType,_this.pronunciation,_this.accuracy,_this.fluency,_this.completeness);
}

@override
String toString() {
  final _this = this as PronunciationScoresData;
  return 'PronunciationScoresData(pronunciation: ${_this.pronunciation}, accuracy: ${_this.accuracy}, fluency: ${_this.fluency}, completeness: ${_this.completeness})';
}


}

/// @nodoc
abstract mixin class $PronunciationScoresDataCopyWith<$Res>  {
  factory $PronunciationScoresDataCopyWith(PronunciationScoresData value, $Res Function(PronunciationScoresData) _then) = _$PronunciationScoresDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'pronunciation') double? pronunciation,@JsonKey(name: 'accuracy') double? accuracy,@JsonKey(name: 'fluency') double? fluency,@JsonKey(name: 'completeness') double? completeness
});




}
/// @nodoc
class _$PronunciationScoresDataCopyWithImpl<$Res>
    implements $PronunciationScoresDataCopyWith<$Res> {
  _$PronunciationScoresDataCopyWithImpl(this._self, this._then);

  final PronunciationScoresData _self;
  final $Res Function(PronunciationScoresData) _then;

/// Create a copy of PronunciationScoresData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pronunciation = freezed,Object? accuracy = freezed,Object? fluency = freezed,Object? completeness = freezed,}) {
  return _then(PronunciationScoresData(
pronunciation: freezed == pronunciation ? _self.pronunciation : pronunciation // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,fluency: freezed == fluency ? _self.fluency : fluency // ignore: cast_nullable_to_non_nullable
as double?,completeness: freezed == completeness ? _self.completeness : completeness // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [PronunciationScoresData].
extension PronunciationScoresDataPatterns on PronunciationScoresData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PronunciationScoresData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PronunciationScoresData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PronunciationScoresData value)  $default,){
final _that = this;
switch (_that) {
case _PronunciationScoresData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PronunciationScoresData value)?  $default,){
final _that = this;
switch (_that) {
case _PronunciationScoresData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'pronunciation')  double? pronunciation, @JsonKey(name: 'accuracy')  double? accuracy, @JsonKey(name: 'fluency')  double? fluency, @JsonKey(name: 'completeness')  double? completeness)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PronunciationScoresData() when $default != null:
return $default(_that.pronunciation,_that.accuracy,_that.fluency,_that.completeness);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'pronunciation')  double? pronunciation, @JsonKey(name: 'accuracy')  double? accuracy, @JsonKey(name: 'fluency')  double? fluency, @JsonKey(name: 'completeness')  double? completeness)  $default,) {final _that = this;
switch (_that) {
case _PronunciationScoresData():
return $default(_that.pronunciation,_that.accuracy,_that.fluency,_that.completeness);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'pronunciation')  double? pronunciation, @JsonKey(name: 'accuracy')  double? accuracy, @JsonKey(name: 'fluency')  double? fluency, @JsonKey(name: 'completeness')  double? completeness)?  $default,) {final _that = this;
switch (_that) {
case _PronunciationScoresData() when $default != null:
return $default(_that.pronunciation,_that.accuracy,_that.fluency,_that.completeness);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PronunciationScoresData extends PronunciationScoresData {
  const _PronunciationScoresData({@JsonKey(name: 'pronunciation') this.pronunciation, @JsonKey(name: 'accuracy') this.accuracy, @JsonKey(name: 'fluency') this.fluency, @JsonKey(name: 'completeness') this.completeness}): super._();
  factory _PronunciationScoresData.fromJson(Map<String, dynamic> json) => _$PronunciationScoresDataFromJson(json);

@override@JsonKey(name: 'pronunciation') final  double? pronunciation;
@override@JsonKey(name: 'accuracy') final  double? accuracy;
@override@JsonKey(name: 'fluency') final  double? fluency;
@override@JsonKey(name: 'completeness') final  double? completeness;

/// Create a copy of PronunciationScoresData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PronunciationScoresDataCopyWith<_PronunciationScoresData> get copyWith => __$PronunciationScoresDataCopyWithImpl<_PronunciationScoresData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PronunciationScoresDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PronunciationScoresData&&(identical(other.pronunciation, pronunciation) || other.pronunciation == pronunciation)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.fluency, fluency) || other.fluency == fluency)&&(identical(other.completeness, completeness) || other.completeness == completeness));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,pronunciation,accuracy,fluency,completeness);
}

@override
String toString() {
    return 'PronunciationScoresData(pronunciation: $pronunciation, accuracy: $accuracy, fluency: $fluency, completeness: $completeness)';
}


}

/// @nodoc
abstract mixin class _$PronunciationScoresDataCopyWith<$Res> implements $PronunciationScoresDataCopyWith<$Res> {
  factory _$PronunciationScoresDataCopyWith(_PronunciationScoresData value, $Res Function(_PronunciationScoresData) _then) = __$PronunciationScoresDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'pronunciation') double? pronunciation,@JsonKey(name: 'accuracy') double? accuracy,@JsonKey(name: 'fluency') double? fluency,@JsonKey(name: 'completeness') double? completeness
});




}
/// @nodoc
class __$PronunciationScoresDataCopyWithImpl<$Res>
    implements _$PronunciationScoresDataCopyWith<$Res> {
  __$PronunciationScoresDataCopyWithImpl(this._self, this._then);

  final _PronunciationScoresData _self;
  final $Res Function(_PronunciationScoresData) _then;

/// Create a copy of PronunciationScoresData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pronunciation = freezed,Object? accuracy = freezed,Object? fluency = freezed,Object? completeness = freezed,}) {
  return _then(_PronunciationScoresData(
pronunciation: freezed == pronunciation ? _self.pronunciation : pronunciation // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,fluency: freezed == fluency ? _self.fluency : fluency // ignore: cast_nullable_to_non_nullable
as double?,completeness: freezed == completeness ? _self.completeness : completeness // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$PronunciationWordScoreData {

@JsonKey(name: 'word') String? get word;@JsonKey(name: 'accuracy') double? get accuracy;@JsonKey(name: 'errorType') String? get errorType;
/// Create a copy of PronunciationWordScoreData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PronunciationWordScoreDataCopyWith<PronunciationWordScoreData> get copyWith => _$PronunciationWordScoreDataCopyWithImpl<PronunciationWordScoreData>(this as PronunciationWordScoreData, _$identity);

  /// Serializes this PronunciationWordScoreData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PronunciationWordScoreData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PronunciationWordScoreData&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.accuracy, _this.accuracy) || other.accuracy == _this.accuracy)&&(identical(other.errorType, _this.errorType) || other.errorType == _this.errorType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PronunciationWordScoreData;
  return Object.hash(runtimeType,_this.word,_this.accuracy,_this.errorType);
}

@override
String toString() {
  final _this = this as PronunciationWordScoreData;
  return 'PronunciationWordScoreData(word: ${_this.word}, accuracy: ${_this.accuracy}, errorType: ${_this.errorType})';
}


}

/// @nodoc
abstract mixin class $PronunciationWordScoreDataCopyWith<$Res>  {
  factory $PronunciationWordScoreDataCopyWith(PronunciationWordScoreData value, $Res Function(PronunciationWordScoreData) _then) = _$PronunciationWordScoreDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'word') String? word,@JsonKey(name: 'accuracy') double? accuracy,@JsonKey(name: 'errorType') String? errorType
});




}
/// @nodoc
class _$PronunciationWordScoreDataCopyWithImpl<$Res>
    implements $PronunciationWordScoreDataCopyWith<$Res> {
  _$PronunciationWordScoreDataCopyWithImpl(this._self, this._then);

  final PronunciationWordScoreData _self;
  final $Res Function(PronunciationWordScoreData) _then;

/// Create a copy of PronunciationWordScoreData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = freezed,Object? accuracy = freezed,Object? errorType = freezed,}) {
  return _then(PronunciationWordScoreData(
word: freezed == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,errorType: freezed == errorType ? _self.errorType : errorType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PronunciationWordScoreData].
extension PronunciationWordScoreDataPatterns on PronunciationWordScoreData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PronunciationWordScoreData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PronunciationWordScoreData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PronunciationWordScoreData value)  $default,){
final _that = this;
switch (_that) {
case _PronunciationWordScoreData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PronunciationWordScoreData value)?  $default,){
final _that = this;
switch (_that) {
case _PronunciationWordScoreData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'word')  String? word, @JsonKey(name: 'accuracy')  double? accuracy, @JsonKey(name: 'errorType')  String? errorType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PronunciationWordScoreData() when $default != null:
return $default(_that.word,_that.accuracy,_that.errorType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'word')  String? word, @JsonKey(name: 'accuracy')  double? accuracy, @JsonKey(name: 'errorType')  String? errorType)  $default,) {final _that = this;
switch (_that) {
case _PronunciationWordScoreData():
return $default(_that.word,_that.accuracy,_that.errorType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'word')  String? word, @JsonKey(name: 'accuracy')  double? accuracy, @JsonKey(name: 'errorType')  String? errorType)?  $default,) {final _that = this;
switch (_that) {
case _PronunciationWordScoreData() when $default != null:
return $default(_that.word,_that.accuracy,_that.errorType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PronunciationWordScoreData extends PronunciationWordScoreData {
  const _PronunciationWordScoreData({@JsonKey(name: 'word') this.word, @JsonKey(name: 'accuracy') this.accuracy, @JsonKey(name: 'errorType') this.errorType}): super._();
  factory _PronunciationWordScoreData.fromJson(Map<String, dynamic> json) => _$PronunciationWordScoreDataFromJson(json);

@override@JsonKey(name: 'word') final  String? word;
@override@JsonKey(name: 'accuracy') final  double? accuracy;
@override@JsonKey(name: 'errorType') final  String? errorType;

/// Create a copy of PronunciationWordScoreData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PronunciationWordScoreDataCopyWith<_PronunciationWordScoreData> get copyWith => __$PronunciationWordScoreDataCopyWithImpl<_PronunciationWordScoreData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PronunciationWordScoreDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PronunciationWordScoreData&&(identical(other.word, word) || other.word == word)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.errorType, errorType) || other.errorType == errorType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,word,accuracy,errorType);
}

@override
String toString() {
    return 'PronunciationWordScoreData(word: $word, accuracy: $accuracy, errorType: $errorType)';
}


}

/// @nodoc
abstract mixin class _$PronunciationWordScoreDataCopyWith<$Res> implements $PronunciationWordScoreDataCopyWith<$Res> {
  factory _$PronunciationWordScoreDataCopyWith(_PronunciationWordScoreData value, $Res Function(_PronunciationWordScoreData) _then) = __$PronunciationWordScoreDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'word') String? word,@JsonKey(name: 'accuracy') double? accuracy,@JsonKey(name: 'errorType') String? errorType
});




}
/// @nodoc
class __$PronunciationWordScoreDataCopyWithImpl<$Res>
    implements _$PronunciationWordScoreDataCopyWith<$Res> {
  __$PronunciationWordScoreDataCopyWithImpl(this._self, this._then);

  final _PronunciationWordScoreData _self;
  final $Res Function(_PronunciationWordScoreData) _then;

/// Create a copy of PronunciationWordScoreData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = freezed,Object? accuracy = freezed,Object? errorType = freezed,}) {
  return _then(_PronunciationWordScoreData(
word: freezed == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,errorType: freezed == errorType ? _self.errorType : errorType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
