// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PracticeResultData {

@JsonKey(name: 'success') bool? get success;@JsonKey(name: 'correct') bool? get correct;@JsonKey(name: 'receiptId') String? get receiptId;@JsonKey(name: 'gainedXp') int? get gainedXp;@JsonKey(name: 'awardedXp') int? get awardedXp;@JsonKey(name: 'leveledUp') bool? get leveledUp;@JsonKey(name: 'user') UserData? get user;@JsonKey(name: 'error') bool? get error;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'retryAfterMs') int? get retryAfterMs;
/// Create a copy of PracticeResultData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PracticeResultDataCopyWith<PracticeResultData> get copyWith => _$PracticeResultDataCopyWithImpl<PracticeResultData>(this as PracticeResultData, _$identity);

  /// Serializes this PracticeResultData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PracticeResultData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PracticeResultData&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.correct, _this.correct) || other.correct == _this.correct)&&(identical(other.receiptId, _this.receiptId) || other.receiptId == _this.receiptId)&&(identical(other.gainedXp, _this.gainedXp) || other.gainedXp == _this.gainedXp)&&(identical(other.awardedXp, _this.awardedXp) || other.awardedXp == _this.awardedXp)&&(identical(other.leveledUp, _this.leveledUp) || other.leveledUp == _this.leveledUp)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.error, _this.error) || other.error == _this.error)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.retryAfterMs, _this.retryAfterMs) || other.retryAfterMs == _this.retryAfterMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PracticeResultData;
  return Object.hash(runtimeType,_this.success,_this.correct,_this.receiptId,_this.gainedXp,_this.awardedXp,_this.leveledUp,_this.user,_this.error,_this.message,_this.retryAfterMs);
}

@override
String toString() {
  final _this = this as PracticeResultData;
  return 'PracticeResultData(success: ${_this.success}, correct: ${_this.correct}, receiptId: ${_this.receiptId}, gainedXp: ${_this.gainedXp}, awardedXp: ${_this.awardedXp}, leveledUp: ${_this.leveledUp}, user: ${_this.user}, error: ${_this.error}, message: ${_this.message}, retryAfterMs: ${_this.retryAfterMs})';
}


}

/// @nodoc
abstract mixin class $PracticeResultDataCopyWith<$Res>  {
  factory $PracticeResultDataCopyWith(PracticeResultData value, $Res Function(PracticeResultData) _then) = _$PracticeResultDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'correct') bool? correct,@JsonKey(name: 'receiptId') String? receiptId,@JsonKey(name: 'gainedXp') int? gainedXp,@JsonKey(name: 'awardedXp') int? awardedXp,@JsonKey(name: 'leveledUp') bool? leveledUp,@JsonKey(name: 'user') UserData? user,@JsonKey(name: 'error') bool? error,@JsonKey(name: 'message') String? message,@JsonKey(name: 'retryAfterMs') int? retryAfterMs
});


$UserDataCopyWith<$Res>? get user;

}
/// @nodoc
class _$PracticeResultDataCopyWithImpl<$Res>
    implements $PracticeResultDataCopyWith<$Res> {
  _$PracticeResultDataCopyWithImpl(this._self, this._then);

  final PracticeResultData _self;
  final $Res Function(PracticeResultData) _then;

/// Create a copy of PracticeResultData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = freezed,Object? correct = freezed,Object? receiptId = freezed,Object? gainedXp = freezed,Object? awardedXp = freezed,Object? leveledUp = freezed,Object? user = freezed,Object? error = freezed,Object? message = freezed,Object? retryAfterMs = freezed,}) {
  return _then(PracticeResultData(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,correct: freezed == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool?,receiptId: freezed == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String?,gainedXp: freezed == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int?,awardedXp: freezed == awardedXp ? _self.awardedXp : awardedXp // ignore: cast_nullable_to_non_nullable
as int?,leveledUp: freezed == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,retryAfterMs: freezed == retryAfterMs ? _self.retryAfterMs : retryAfterMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PracticeResultData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [PracticeResultData].
extension PracticeResultDataPatterns on PracticeResultData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PracticeResultData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PracticeResultData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PracticeResultData value)  $default,){
final _that = this;
switch (_that) {
case _PracticeResultData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PracticeResultData value)?  $default,){
final _that = this;
switch (_that) {
case _PracticeResultData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'correct')  bool? correct, @JsonKey(name: 'receiptId')  String? receiptId, @JsonKey(name: 'gainedXp')  int? gainedXp, @JsonKey(name: 'awardedXp')  int? awardedXp, @JsonKey(name: 'leveledUp')  bool? leveledUp, @JsonKey(name: 'user')  UserData? user, @JsonKey(name: 'error')  bool? error, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'retryAfterMs')  int? retryAfterMs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PracticeResultData() when $default != null:
return $default(_that.success,_that.correct,_that.receiptId,_that.gainedXp,_that.awardedXp,_that.leveledUp,_that.user,_that.error,_that.message,_that.retryAfterMs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'correct')  bool? correct, @JsonKey(name: 'receiptId')  String? receiptId, @JsonKey(name: 'gainedXp')  int? gainedXp, @JsonKey(name: 'awardedXp')  int? awardedXp, @JsonKey(name: 'leveledUp')  bool? leveledUp, @JsonKey(name: 'user')  UserData? user, @JsonKey(name: 'error')  bool? error, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'retryAfterMs')  int? retryAfterMs)  $default,) {final _that = this;
switch (_that) {
case _PracticeResultData():
return $default(_that.success,_that.correct,_that.receiptId,_that.gainedXp,_that.awardedXp,_that.leveledUp,_that.user,_that.error,_that.message,_that.retryAfterMs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool? success, @JsonKey(name: 'correct')  bool? correct, @JsonKey(name: 'receiptId')  String? receiptId, @JsonKey(name: 'gainedXp')  int? gainedXp, @JsonKey(name: 'awardedXp')  int? awardedXp, @JsonKey(name: 'leveledUp')  bool? leveledUp, @JsonKey(name: 'user')  UserData? user, @JsonKey(name: 'error')  bool? error, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'retryAfterMs')  int? retryAfterMs)?  $default,) {final _that = this;
switch (_that) {
case _PracticeResultData() when $default != null:
return $default(_that.success,_that.correct,_that.receiptId,_that.gainedXp,_that.awardedXp,_that.leveledUp,_that.user,_that.error,_that.message,_that.retryAfterMs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PracticeResultData extends PracticeResultData {
  const _PracticeResultData({@JsonKey(name: 'success') this.success, @JsonKey(name: 'correct') this.correct, @JsonKey(name: 'receiptId') this.receiptId, @JsonKey(name: 'gainedXp') this.gainedXp, @JsonKey(name: 'awardedXp') this.awardedXp, @JsonKey(name: 'leveledUp') this.leveledUp, @JsonKey(name: 'user') this.user, @JsonKey(name: 'error') this.error, @JsonKey(name: 'message') this.message, @JsonKey(name: 'retryAfterMs') this.retryAfterMs}): super._();
  factory _PracticeResultData.fromJson(Map<String, dynamic> json) => _$PracticeResultDataFromJson(json);

@override@JsonKey(name: 'success') final  bool? success;
@override@JsonKey(name: 'correct') final  bool? correct;
@override@JsonKey(name: 'receiptId') final  String? receiptId;
@override@JsonKey(name: 'gainedXp') final  int? gainedXp;
@override@JsonKey(name: 'awardedXp') final  int? awardedXp;
@override@JsonKey(name: 'leveledUp') final  bool? leveledUp;
@override@JsonKey(name: 'user') final  UserData? user;
@override@JsonKey(name: 'error') final  bool? error;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'retryAfterMs') final  int? retryAfterMs;

/// Create a copy of PracticeResultData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PracticeResultDataCopyWith<_PracticeResultData> get copyWith => __$PracticeResultDataCopyWithImpl<_PracticeResultData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PracticeResultDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PracticeResultData&&(identical(other.success, success) || other.success == success)&&(identical(other.correct, correct) || other.correct == correct)&&(identical(other.receiptId, receiptId) || other.receiptId == receiptId)&&(identical(other.gainedXp, gainedXp) || other.gainedXp == gainedXp)&&(identical(other.awardedXp, awardedXp) || other.awardedXp == awardedXp)&&(identical(other.leveledUp, leveledUp) || other.leveledUp == leveledUp)&&(identical(other.user, user) || other.user == user)&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message)&&(identical(other.retryAfterMs, retryAfterMs) || other.retryAfterMs == retryAfterMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,success,correct,receiptId,gainedXp,awardedXp,leveledUp,user,error,message,retryAfterMs);
}

@override
String toString() {
    return 'PracticeResultData(success: $success, correct: $correct, receiptId: $receiptId, gainedXp: $gainedXp, awardedXp: $awardedXp, leveledUp: $leveledUp, user: $user, error: $error, message: $message, retryAfterMs: $retryAfterMs)';
}


}

/// @nodoc
abstract mixin class _$PracticeResultDataCopyWith<$Res> implements $PracticeResultDataCopyWith<$Res> {
  factory _$PracticeResultDataCopyWith(_PracticeResultData value, $Res Function(_PracticeResultData) _then) = __$PracticeResultDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool? success,@JsonKey(name: 'correct') bool? correct,@JsonKey(name: 'receiptId') String? receiptId,@JsonKey(name: 'gainedXp') int? gainedXp,@JsonKey(name: 'awardedXp') int? awardedXp,@JsonKey(name: 'leveledUp') bool? leveledUp,@JsonKey(name: 'user') UserData? user,@JsonKey(name: 'error') bool? error,@JsonKey(name: 'message') String? message,@JsonKey(name: 'retryAfterMs') int? retryAfterMs
});


@override $UserDataCopyWith<$Res>? get user;

}
/// @nodoc
class __$PracticeResultDataCopyWithImpl<$Res>
    implements _$PracticeResultDataCopyWith<$Res> {
  __$PracticeResultDataCopyWithImpl(this._self, this._then);

  final _PracticeResultData _self;
  final $Res Function(_PracticeResultData) _then;

/// Create a copy of PracticeResultData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = freezed,Object? correct = freezed,Object? receiptId = freezed,Object? gainedXp = freezed,Object? awardedXp = freezed,Object? leveledUp = freezed,Object? user = freezed,Object? error = freezed,Object? message = freezed,Object? retryAfterMs = freezed,}) {
  return _then(_PracticeResultData(
success: freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool?,correct: freezed == correct ? _self.correct : correct // ignore: cast_nullable_to_non_nullable
as bool?,receiptId: freezed == receiptId ? _self.receiptId : receiptId // ignore: cast_nullable_to_non_nullable
as String?,gainedXp: freezed == gainedXp ? _self.gainedXp : gainedXp // ignore: cast_nullable_to_non_nullable
as int?,awardedXp: freezed == awardedXp ? _self.awardedXp : awardedXp // ignore: cast_nullable_to_non_nullable
as int?,leveledUp: freezed == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,retryAfterMs: freezed == retryAfterMs ? _self.retryAfterMs : retryAfterMs // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PracticeResultData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
