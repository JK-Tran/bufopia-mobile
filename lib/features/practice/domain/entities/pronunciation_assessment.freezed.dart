// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pronunciation_assessment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PronunciationAssessment {

 String get provider; double get pronunciationScore; double get accuracyScore; double get fluencyScore; double get completenessScore; List<PronunciationWordScore> get words;
/// Create a copy of PronunciationAssessment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PronunciationAssessmentCopyWith<PronunciationAssessment> get copyWith => _$PronunciationAssessmentCopyWithImpl<PronunciationAssessment>(this as PronunciationAssessment, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PronunciationAssessment;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PronunciationAssessment&&(identical(other.provider, _this.provider) || other.provider == _this.provider)&&(identical(other.pronunciationScore, _this.pronunciationScore) || other.pronunciationScore == _this.pronunciationScore)&&(identical(other.accuracyScore, _this.accuracyScore) || other.accuracyScore == _this.accuracyScore)&&(identical(other.fluencyScore, _this.fluencyScore) || other.fluencyScore == _this.fluencyScore)&&(identical(other.completenessScore, _this.completenessScore) || other.completenessScore == _this.completenessScore)&&const DeepCollectionEquality().equals(other.words, _this.words));
}


@override
int get hashCode {
  final _this = this as PronunciationAssessment;
  return Object.hash(runtimeType,_this.provider,_this.pronunciationScore,_this.accuracyScore,_this.fluencyScore,_this.completenessScore,const DeepCollectionEquality().hash(_this.words));
}

@override
String toString() {
  final _this = this as PronunciationAssessment;
  return 'PronunciationAssessment(provider: ${_this.provider}, pronunciationScore: ${_this.pronunciationScore}, accuracyScore: ${_this.accuracyScore}, fluencyScore: ${_this.fluencyScore}, completenessScore: ${_this.completenessScore}, words: ${_this.words})';
}


}

/// @nodoc
abstract mixin class $PronunciationAssessmentCopyWith<$Res>  {
  factory $PronunciationAssessmentCopyWith(PronunciationAssessment value, $Res Function(PronunciationAssessment) _then) = _$PronunciationAssessmentCopyWithImpl;
@useResult
$Res call({
 String provider, double pronunciationScore, double accuracyScore, double fluencyScore, double completenessScore, List<PronunciationWordScore> words
});




}
/// @nodoc
class _$PronunciationAssessmentCopyWithImpl<$Res>
    implements $PronunciationAssessmentCopyWith<$Res> {
  _$PronunciationAssessmentCopyWithImpl(this._self, this._then);

  final PronunciationAssessment _self;
  final $Res Function(PronunciationAssessment) _then;

/// Create a copy of PronunciationAssessment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,Object? pronunciationScore = null,Object? accuracyScore = null,Object? fluencyScore = null,Object? completenessScore = null,Object? words = null,}) {
  return _then(PronunciationAssessment(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,pronunciationScore: null == pronunciationScore ? _self.pronunciationScore : pronunciationScore // ignore: cast_nullable_to_non_nullable
as double,accuracyScore: null == accuracyScore ? _self.accuracyScore : accuracyScore // ignore: cast_nullable_to_non_nullable
as double,fluencyScore: null == fluencyScore ? _self.fluencyScore : fluencyScore // ignore: cast_nullable_to_non_nullable
as double,completenessScore: null == completenessScore ? _self.completenessScore : completenessScore // ignore: cast_nullable_to_non_nullable
as double,words: null == words ? _self.words : words // ignore: cast_nullable_to_non_nullable
as List<PronunciationWordScore>,
  ));
}

}


/// Adds pattern-matching-related methods to [PronunciationAssessment].
extension PronunciationAssessmentPatterns on PronunciationAssessment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PronunciationAssessment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PronunciationAssessment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PronunciationAssessment value)  $default,){
final _that = this;
switch (_that) {
case _PronunciationAssessment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PronunciationAssessment value)?  $default,){
final _that = this;
switch (_that) {
case _PronunciationAssessment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String provider,  double pronunciationScore,  double accuracyScore,  double fluencyScore,  double completenessScore,  List<PronunciationWordScore> words)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PronunciationAssessment() when $default != null:
return $default(_that.provider,_that.pronunciationScore,_that.accuracyScore,_that.fluencyScore,_that.completenessScore,_that.words);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String provider,  double pronunciationScore,  double accuracyScore,  double fluencyScore,  double completenessScore,  List<PronunciationWordScore> words)  $default,) {final _that = this;
switch (_that) {
case _PronunciationAssessment():
return $default(_that.provider,_that.pronunciationScore,_that.accuracyScore,_that.fluencyScore,_that.completenessScore,_that.words);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String provider,  double pronunciationScore,  double accuracyScore,  double fluencyScore,  double completenessScore,  List<PronunciationWordScore> words)?  $default,) {final _that = this;
switch (_that) {
case _PronunciationAssessment() when $default != null:
return $default(_that.provider,_that.pronunciationScore,_that.accuracyScore,_that.fluencyScore,_that.completenessScore,_that.words);case _:
  return null;

}
}

}

/// @nodoc


class _PronunciationAssessment implements PronunciationAssessment {
  const _PronunciationAssessment({this.provider = '', this.pronunciationScore = 0.0, this.accuracyScore = 0.0, this.fluencyScore = 0.0, this.completenessScore = 0.0,  List<PronunciationWordScore> words = const []}): _words = words;
  

@override@JsonKey() final  String provider;
@override@JsonKey() final  double pronunciationScore;
@override@JsonKey() final  double accuracyScore;
@override@JsonKey() final  double fluencyScore;
@override@JsonKey() final  double completenessScore;
 final  List<PronunciationWordScore> _words;
@override@JsonKey() List<PronunciationWordScore> get words {
  if (_words is EqualUnmodifiableListView) return _words;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_words);
}


/// Create a copy of PronunciationAssessment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PronunciationAssessmentCopyWith<_PronunciationAssessment> get copyWith => __$PronunciationAssessmentCopyWithImpl<_PronunciationAssessment>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PronunciationAssessment&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.pronunciationScore, pronunciationScore) || other.pronunciationScore == pronunciationScore)&&(identical(other.accuracyScore, accuracyScore) || other.accuracyScore == accuracyScore)&&(identical(other.fluencyScore, fluencyScore) || other.fluencyScore == fluencyScore)&&(identical(other.completenessScore, completenessScore) || other.completenessScore == completenessScore)&&const DeepCollectionEquality().equals(other.words, _words));
}


@override
int get hashCode {
    return Object.hash(runtimeType,provider,pronunciationScore,accuracyScore,fluencyScore,completenessScore,const DeepCollectionEquality().hash(_words));
}

@override
String toString() {
    return 'PronunciationAssessment(provider: $provider, pronunciationScore: $pronunciationScore, accuracyScore: $accuracyScore, fluencyScore: $fluencyScore, completenessScore: $completenessScore, words: $words)';
}


}

/// @nodoc
abstract mixin class _$PronunciationAssessmentCopyWith<$Res> implements $PronunciationAssessmentCopyWith<$Res> {
  factory _$PronunciationAssessmentCopyWith(_PronunciationAssessment value, $Res Function(_PronunciationAssessment) _then) = __$PronunciationAssessmentCopyWithImpl;
@override @useResult
$Res call({
 String provider, double pronunciationScore, double accuracyScore, double fluencyScore, double completenessScore, List<PronunciationWordScore> words
});




}
/// @nodoc
class __$PronunciationAssessmentCopyWithImpl<$Res>
    implements _$PronunciationAssessmentCopyWith<$Res> {
  __$PronunciationAssessmentCopyWithImpl(this._self, this._then);

  final _PronunciationAssessment _self;
  final $Res Function(_PronunciationAssessment) _then;

/// Create a copy of PronunciationAssessment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = null,Object? pronunciationScore = null,Object? accuracyScore = null,Object? fluencyScore = null,Object? completenessScore = null,Object? words = null,}) {
  return _then(_PronunciationAssessment(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,pronunciationScore: null == pronunciationScore ? _self.pronunciationScore : pronunciationScore // ignore: cast_nullable_to_non_nullable
as double,accuracyScore: null == accuracyScore ? _self.accuracyScore : accuracyScore // ignore: cast_nullable_to_non_nullable
as double,fluencyScore: null == fluencyScore ? _self.fluencyScore : fluencyScore // ignore: cast_nullable_to_non_nullable
as double,completenessScore: null == completenessScore ? _self.completenessScore : completenessScore // ignore: cast_nullable_to_non_nullable
as double,words: null == words ? _self._words : words // ignore: cast_nullable_to_non_nullable
as List<PronunciationWordScore>,
  ));
}


}

/// @nodoc
mixin _$PronunciationWordScore {

 String get word; double get accuracy; String get errorType;
/// Create a copy of PronunciationWordScore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PronunciationWordScoreCopyWith<PronunciationWordScore> get copyWith => _$PronunciationWordScoreCopyWithImpl<PronunciationWordScore>(this as PronunciationWordScore, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PronunciationWordScore;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PronunciationWordScore&&(identical(other.word, _this.word) || other.word == _this.word)&&(identical(other.accuracy, _this.accuracy) || other.accuracy == _this.accuracy)&&(identical(other.errorType, _this.errorType) || other.errorType == _this.errorType));
}


@override
int get hashCode {
  final _this = this as PronunciationWordScore;
  return Object.hash(runtimeType,_this.word,_this.accuracy,_this.errorType);
}

@override
String toString() {
  final _this = this as PronunciationWordScore;
  return 'PronunciationWordScore(word: ${_this.word}, accuracy: ${_this.accuracy}, errorType: ${_this.errorType})';
}


}

/// @nodoc
abstract mixin class $PronunciationWordScoreCopyWith<$Res>  {
  factory $PronunciationWordScoreCopyWith(PronunciationWordScore value, $Res Function(PronunciationWordScore) _then) = _$PronunciationWordScoreCopyWithImpl;
@useResult
$Res call({
 String word, double accuracy, String errorType
});




}
/// @nodoc
class _$PronunciationWordScoreCopyWithImpl<$Res>
    implements $PronunciationWordScoreCopyWith<$Res> {
  _$PronunciationWordScoreCopyWithImpl(this._self, this._then);

  final PronunciationWordScore _self;
  final $Res Function(PronunciationWordScore) _then;

/// Create a copy of PronunciationWordScore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? word = null,Object? accuracy = null,Object? errorType = null,}) {
  return _then(PronunciationWordScore(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,accuracy: null == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double,errorType: null == errorType ? _self.errorType : errorType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PronunciationWordScore].
extension PronunciationWordScorePatterns on PronunciationWordScore {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PronunciationWordScore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PronunciationWordScore() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PronunciationWordScore value)  $default,){
final _that = this;
switch (_that) {
case _PronunciationWordScore():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PronunciationWordScore value)?  $default,){
final _that = this;
switch (_that) {
case _PronunciationWordScore() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String word,  double accuracy,  String errorType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PronunciationWordScore() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String word,  double accuracy,  String errorType)  $default,) {final _that = this;
switch (_that) {
case _PronunciationWordScore():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String word,  double accuracy,  String errorType)?  $default,) {final _that = this;
switch (_that) {
case _PronunciationWordScore() when $default != null:
return $default(_that.word,_that.accuracy,_that.errorType);case _:
  return null;

}
}

}

/// @nodoc


class _PronunciationWordScore implements PronunciationWordScore {
  const _PronunciationWordScore({this.word = '', this.accuracy = 0.0, this.errorType = ''});
  

@override@JsonKey() final  String word;
@override@JsonKey() final  double accuracy;
@override@JsonKey() final  String errorType;

/// Create a copy of PronunciationWordScore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PronunciationWordScoreCopyWith<_PronunciationWordScore> get copyWith => __$PronunciationWordScoreCopyWithImpl<_PronunciationWordScore>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PronunciationWordScore&&(identical(other.word, word) || other.word == word)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.errorType, errorType) || other.errorType == errorType));
}


@override
int get hashCode {
    return Object.hash(runtimeType,word,accuracy,errorType);
}

@override
String toString() {
    return 'PronunciationWordScore(word: $word, accuracy: $accuracy, errorType: $errorType)';
}


}

/// @nodoc
abstract mixin class _$PronunciationWordScoreCopyWith<$Res> implements $PronunciationWordScoreCopyWith<$Res> {
  factory _$PronunciationWordScoreCopyWith(_PronunciationWordScore value, $Res Function(_PronunciationWordScore) _then) = __$PronunciationWordScoreCopyWithImpl;
@override @useResult
$Res call({
 String word, double accuracy, String errorType
});




}
/// @nodoc
class __$PronunciationWordScoreCopyWithImpl<$Res>
    implements _$PronunciationWordScoreCopyWith<$Res> {
  __$PronunciationWordScoreCopyWithImpl(this._self, this._then);

  final _PronunciationWordScore _self;
  final $Res Function(_PronunciationWordScore) _then;

/// Create a copy of PronunciationWordScore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? word = null,Object? accuracy = null,Object? errorType = null,}) {
  return _then(_PronunciationWordScore(
word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,accuracy: null == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double,errorType: null == errorType ? _self.errorType : errorType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
