// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PracticeResult {

 bool get success; bool get correct; String get receiptId; int get gainedXp; int get awardedXp; bool get leveledUp; User? get user;
/// Create a copy of PracticeResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PracticeResultCopyWith<PracticeResult> get copyWith => _$PracticeResultCopyWithImpl<PracticeResult>(this as PracticeResult, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PracticeResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PracticeResult&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.correct, _this.correct) || other.correct == _this.correct)&&(identical(other.receiptId, _this.receiptId) || other.receiptId == _this.receiptId)&&(identical(other.gainedXp, _this.gainedXp) || other.gainedXp == _this.gainedXp)&&(identical(other.awardedXp, _this.awardedXp) || other.awardedXp == _this.awardedXp)&&(identical(other.leveledUp, _this.leveledUp) || other.leveledUp == _this.leveledUp)&&(identical(other.user, _this.user) || other.user == _this.user));
}


@override
int get hashCode {
  final _this = this as PracticeResult;
  return Object.hash(runtimeType,_this.success,_this.correct,_this.receiptId,_this.gainedXp,_this.awardedXp,_this.leveledUp,_this.user);
}

@override
String toString() {
  final _this = this as PracticeResult;
  return 'PracticeResult(success: ${_this.success}, correct: ${_this.correct}, receiptId: ${_this.receiptId}, gainedXp: ${_this.gainedXp}, awardedXp: ${_this.awardedXp}, leveledUp: ${_this.leveledUp}, user: ${_this.user})';
}


}

/// @nodoc
abstract mixin class $PracticeResultCopyWith<$Res>  {
  factory $PracticeResultCopyWith(PracticeResult value, $Res Function(PracticeResult) _then) = _$PracticeResultCopyWithImpl;
@useResult
$Res call({
 bool success, bool correct, String receiptId, int gainedXp, int awardedXp, bool leveledUp, User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$PracticeResultCopyWithImpl<$Res>
    implements $PracticeResultCopyWith<$Res> {
  _$PracticeResultCopyWithImpl(this._self, this._then);

  final PracticeResult _self;
  final $Res Function(PracticeResult) _then;

/// Create a copy of PracticeResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? correct = null,Object? receiptId = null,Object? gainedXp = null,Object? awardedXp = null,Object? leveledUp = null,Object? user = freezed,}) {
  return _then(PracticeResult(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool,receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,gainedXp: null == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int,awardedXp: null == awardedXp ? _self.awardedXp : awardedXp // ignore: cast_nullable_to_non_nullable
as int,leveledUp: null == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}
/// Create a copy of PracticeResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [PracticeResult].
extension PracticeResultPatterns on PracticeResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PracticeResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PracticeResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PracticeResult value)  $default,){
final _that = this;
switch (_that) {
case _PracticeResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PracticeResult value)?  $default,){
final _that = this;
switch (_that) {
case _PracticeResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  bool correct,  String receiptId,  int gainedXp,  int awardedXp,  bool leveledUp,  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PracticeResult() when $default != null:
return $default(_that.success,_that.correct,_that.receiptId,_that.gainedXp,_that.awardedXp,_that.leveledUp,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  bool correct,  String receiptId,  int gainedXp,  int awardedXp,  bool leveledUp,  User? user)  $default,) {final _that = this;
switch (_that) {
case _PracticeResult():
return $default(_that.success,_that.correct,_that.receiptId,_that.gainedXp,_that.awardedXp,_that.leveledUp,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  bool correct,  String receiptId,  int gainedXp,  int awardedXp,  bool leveledUp,  User? user)?  $default,) {final _that = this;
switch (_that) {
case _PracticeResult() when $default != null:
return $default(_that.success,_that.correct,_that.receiptId,_that.gainedXp,_that.awardedXp,_that.leveledUp,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _PracticeResult implements PracticeResult {
  const _PracticeResult({this.success = false, this.correct = false, this.receiptId = '', this.gainedXp = 0, this.awardedXp = 0, this.leveledUp = false, this.user});
  

@override@JsonKey() final  bool success;
@override@JsonKey() final  bool correct;
@override@JsonKey() final  String receiptId;
@override@JsonKey() final  int gainedXp;
@override@JsonKey() final  int awardedXp;
@override@JsonKey() final  bool leveledUp;
@override final  User? user;

/// Create a copy of PracticeResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PracticeResultCopyWith<_PracticeResult> get copyWith => __$PracticeResultCopyWithImpl<_PracticeResult>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PracticeResult&&(identical(other.success, success) || other.success == success)&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.receiptId, receiptId) || other.receiptId == receiptId)&&(identical(other.gainedXp, gainedXp) || other.gainedXp == gainedXp)&&(identical(other.awardedXp, awardedXp) || other.awardedXp == awardedXp)&&(identical(other.leveledUp, leveledUp) || other.leveledUp == leveledUp)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,success,correct,receiptId,gainedXp,awardedXp,leveledUp,user);
}

@override
String toString() {
    return 'PracticeResult(success: $success, correct: $correct, receiptId: $receiptId, gainedXp: $gainedXp, awardedXp: $awardedXp, leveledUp: $leveledUp, user: $user)';
}


}

/// @nodoc
abstract mixin class _$PracticeResultCopyWith<$Res> implements $PracticeResultCopyWith<$Res> {
  factory _$PracticeResultCopyWith(_PracticeResult value, $Res Function(_PracticeResult) _then) = __$PracticeResultCopyWithImpl;
@override @useResult
$Res call({
 bool success, bool correct, String receiptId, int gainedXp, int awardedXp, bool leveledUp, User? user
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$PracticeResultCopyWithImpl<$Res>
    implements _$PracticeResultCopyWith<$Res> {
  __$PracticeResultCopyWithImpl(this._self, this._then);

  final _PracticeResult _self;
  final $Res Function(_PracticeResult) _then;

/// Create a copy of PracticeResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? correct = null,Object? receiptId = null,Object? gainedXp = null,Object? awardedXp = null,Object? leveledUp = null,Object? user = freezed,}) {
  return _then(_PracticeResult(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,correct: null == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool,receiptId: null == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String,gainedXp: null == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int,awardedXp: null == awardedXp ? _self.awardedXp : awardedXp // ignore: cast_nullable_to_non_nullable
as int,leveledUp: null == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of PracticeResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
