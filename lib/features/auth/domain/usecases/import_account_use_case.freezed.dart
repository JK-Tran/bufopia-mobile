// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_account_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ImportAccountInput {

 String get idToken; String get sourceUid; String? get sourceToken; String? get action; String? get displayName; int get xp; List<Map<String, dynamic>> get profiles;
/// Create a copy of ImportAccountInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportAccountInputCopyWith<ImportAccountInput> get copyWith => _$ImportAccountInputCopyWithImpl<ImportAccountInput>(this as ImportAccountInput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ImportAccountInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportAccountInput&&(identical(other.idToken, _this.idToken) || other.idToken == _this.idToken)&&(identical(other.sourceUid, _this.sourceUid) || other.sourceUid == _this.sourceUid)&&(identical(other.sourceToken, _this.sourceToken) || other.sourceToken == _this.sourceToken)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.displayName, _this.displayName) || other.displayName == _this.displayName)&&(identical(other.xp, _this.xp) || other.xp == _this.xp)&&const DeepCollectionEquality().equals(other.profiles, _this.profiles));
}


@override
int get hashCode {
  final _this = this as ImportAccountInput;
  return Object.hash(runtimeType,_this.idToken,_this.sourceUid,_this.sourceToken,_this.action,_this.displayName,_this.xp,const DeepCollectionEquality().hash(_this.profiles));
}

@override
String toString() {
  final _this = this as ImportAccountInput;
  return 'ImportAccountInput(idToken: ${_this.idToken}, sourceUid: ${_this.sourceUid}, sourceToken: ${_this.sourceToken}, action: ${_this.action}, displayName: ${_this.displayName}, xp: ${_this.xp}, profiles: ${_this.profiles})';
}


}

/// @nodoc
abstract mixin class $ImportAccountInputCopyWith<$Res>  {
  factory $ImportAccountInputCopyWith(ImportAccountInput value, $Res Function(ImportAccountInput) _then) = _$ImportAccountInputCopyWithImpl;
@useResult
$Res call({
 String idToken, String sourceUid, String? sourceToken, String? action, String? displayName, int xp, List<Map<String, dynamic>> profiles
});




}
/// @nodoc
class _$ImportAccountInputCopyWithImpl<$Res>
    implements $ImportAccountInputCopyWith<$Res> {
  _$ImportAccountInputCopyWithImpl(this._self, this._then);

  final ImportAccountInput _self;
  final $Res Function(ImportAccountInput) _then;

/// Create a copy of ImportAccountInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? idToken = null,Object? sourceUid = null,Object? sourceToken = freezed,Object? action = freezed,Object? displayName = freezed,Object? xp = null,Object? profiles = null,}) {
  return _then(ImportAccountInput(
idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,sourceUid: null == sourceUid ? _self.sourceUid : sourceUid // ignore: cast_nullable_to_non_nullable
as String,sourceToken: freezed == sourceToken ? _self.sourceToken : sourceToken // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,profiles: null == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}

}


/// Adds pattern-matching-related methods to [ImportAccountInput].
extension ImportAccountInputPatterns on ImportAccountInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportAccountInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportAccountInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportAccountInput value)  $default,){
final _that = this;
switch (_that) {
case _ImportAccountInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportAccountInput value)?  $default,){
final _that = this;
switch (_that) {
case _ImportAccountInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String idToken,  String sourceUid,  String? sourceToken,  String? action,  String? displayName,  int xp,  List<Map<String, dynamic>> profiles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImportAccountInput() when $default != null:
return $default(_that.idToken,_that.sourceUid,_that.sourceToken,_that.action,_that.displayName,_that.xp,_that.profiles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String idToken,  String sourceUid,  String? sourceToken,  String? action,  String? displayName,  int xp,  List<Map<String, dynamic>> profiles)  $default,) {final _that = this;
switch (_that) {
case _ImportAccountInput():
return $default(_that.idToken,_that.sourceUid,_that.sourceToken,_that.action,_that.displayName,_that.xp,_that.profiles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String idToken,  String sourceUid,  String? sourceToken,  String? action,  String? displayName,  int xp,  List<Map<String, dynamic>> profiles)?  $default,) {final _that = this;
switch (_that) {
case _ImportAccountInput() when $default != null:
return $default(_that.idToken,_that.sourceUid,_that.sourceToken,_that.action,_that.displayName,_that.xp,_that.profiles);case _:
  return null;

}
}

}

/// @nodoc


class _ImportAccountInput extends ImportAccountInput {
  const _ImportAccountInput({required this.idToken, required this.sourceUid, this.sourceToken, this.action, this.displayName, this.xp = 0,  List<Map<String, dynamic>> profiles = const []}): _profiles = profiles,super._();
  

@override final  String idToken;
@override final  String sourceUid;
@override final  String? sourceToken;
@override final  String? action;
@override final  String? displayName;
@override@JsonKey() final  int xp;
 final  List<Map<String, dynamic>> _profiles;
@override@JsonKey() List<Map<String, dynamic>> get profiles {
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profiles);
}


/// Create a copy of ImportAccountInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportAccountInputCopyWith<_ImportAccountInput> get copyWith => __$ImportAccountInputCopyWithImpl<_ImportAccountInput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportAccountInput&&(identical(other.idToken, idToken) || other.idToken == idToken)&&(identical(other.sourceUid, sourceUid) || other.sourceUid == sourceUid)&&(identical(other.sourceToken, sourceToken) || other.sourceToken == sourceToken)&&(identical(other.action, action) || other.action == action)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.xp, xp) || other.xp == xp)&&const DeepCollectionEquality().equals(other.profiles, _profiles));
}


@override
int get hashCode {
    return Object.hash(runtimeType,idToken,sourceUid,sourceToken,action,displayName,xp,const DeepCollectionEquality().hash(_profiles));
}

@override
String toString() {
    return 'ImportAccountInput(idToken: $idToken, sourceUid: $sourceUid, sourceToken: $sourceToken, action: $action, displayName: $displayName, xp: $xp, profiles: $profiles)';
}


}

/// @nodoc
abstract mixin class _$ImportAccountInputCopyWith<$Res> implements $ImportAccountInputCopyWith<$Res> {
  factory _$ImportAccountInputCopyWith(_ImportAccountInput value, $Res Function(_ImportAccountInput) _then) = __$ImportAccountInputCopyWithImpl;
@override @useResult
$Res call({
 String idToken, String sourceUid, String? sourceToken, String? action, String? displayName, int xp, List<Map<String, dynamic>> profiles
});




}
/// @nodoc
class __$ImportAccountInputCopyWithImpl<$Res>
    implements _$ImportAccountInputCopyWith<$Res> {
  __$ImportAccountInputCopyWithImpl(this._self, this._then);

  final _ImportAccountInput _self;
  final $Res Function(_ImportAccountInput) _then;

/// Create a copy of ImportAccountInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? idToken = null,Object? sourceUid = null,Object? sourceToken = freezed,Object? action = freezed,Object? displayName = freezed,Object? xp = null,Object? profiles = null,}) {
  return _then(_ImportAccountInput(
idToken: null == idToken ? _self.idToken : idToken // ignore: cast_nullable_to_non_nullable
as String,sourceUid: null == sourceUid ? _self.sourceUid : sourceUid // ignore: cast_nullable_to_non_nullable
as String,sourceToken: freezed == sourceToken ? _self.sourceToken : sourceToken // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,xp: null == xp ? _self.xp : xp // ignore: cast_nullable_to_non_nullable
as int,profiles: null == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>>,
  ));
}


}

/// @nodoc
mixin _$ImportAccountOutput {

 AccountImportResult? get result;
/// Create a copy of ImportAccountOutput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportAccountOutputCopyWith<ImportAccountOutput> get copyWith => _$ImportAccountOutputCopyWithImpl<ImportAccountOutput>(this as ImportAccountOutput, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ImportAccountOutput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportAccountOutput&&(identical(other.result, _this.result) || other.result == _this.result));
}


@override
int get hashCode {
  final _this = this as ImportAccountOutput;
  return Object.hash(runtimeType,_this.result);
}

@override
String toString() {
  final _this = this as ImportAccountOutput;
  return 'ImportAccountOutput(result: ${_this.result})';
}


}

/// @nodoc
abstract mixin class $ImportAccountOutputCopyWith<$Res>  {
  factory $ImportAccountOutputCopyWith(ImportAccountOutput value, $Res Function(ImportAccountOutput) _then) = _$ImportAccountOutputCopyWithImpl;
@useResult
$Res call({
 AccountImportResult? result
});


$AccountImportResultCopyWith<$Res>? get result;

}
/// @nodoc
class _$ImportAccountOutputCopyWithImpl<$Res>
    implements $ImportAccountOutputCopyWith<$Res> {
  _$ImportAccountOutputCopyWithImpl(this._self, this._then);

  final ImportAccountOutput _self;
  final $Res Function(ImportAccountOutput) _then;

/// Create a copy of ImportAccountOutput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = freezed,}) {
  return _then(ImportAccountOutput(
freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as AccountImportResult?,
  ));
}
/// Create a copy of ImportAccountOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountImportResultCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $AccountImportResultCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}


/// Adds pattern-matching-related methods to [ImportAccountOutput].
extension ImportAccountOutputPatterns on ImportAccountOutput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportAccountOutput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportAccountOutput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportAccountOutput value)  $default,){
final _that = this;
switch (_that) {
case _ImportAccountOutput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportAccountOutput value)?  $default,){
final _that = this;
switch (_that) {
case _ImportAccountOutput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AccountImportResult? result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImportAccountOutput() when $default != null:
return $default(_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AccountImportResult? result)  $default,) {final _that = this;
switch (_that) {
case _ImportAccountOutput():
return $default(_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AccountImportResult? result)?  $default,) {final _that = this;
switch (_that) {
case _ImportAccountOutput() when $default != null:
return $default(_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _ImportAccountOutput extends ImportAccountOutput {
  const _ImportAccountOutput(this.result): super._();
  

@override final  AccountImportResult? result;

/// Create a copy of ImportAccountOutput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportAccountOutputCopyWith<_ImportAccountOutput> get copyWith => __$ImportAccountOutputCopyWithImpl<_ImportAccountOutput>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportAccountOutput&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode {
    return Object.hash(runtimeType,result);
}

@override
String toString() {
    return 'ImportAccountOutput(result: $result)';
}


}

/// @nodoc
abstract mixin class _$ImportAccountOutputCopyWith<$Res> implements $ImportAccountOutputCopyWith<$Res> {
  factory _$ImportAccountOutputCopyWith(_ImportAccountOutput value, $Res Function(_ImportAccountOutput) _then) = __$ImportAccountOutputCopyWithImpl;
@override @useResult
$Res call({
 AccountImportResult? result
});


@override $AccountImportResultCopyWith<$Res>? get result;

}
/// @nodoc
class __$ImportAccountOutputCopyWithImpl<$Res>
    implements _$ImportAccountOutputCopyWith<$Res> {
  __$ImportAccountOutputCopyWithImpl(this._self, this._then);

  final _ImportAccountOutput _self;
  final $Res Function(_ImportAccountOutput) _then;

/// Create a copy of ImportAccountOutput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = freezed,}) {
  return _then(_ImportAccountOutput(
freezed == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as AccountImportResult?,
  ));
}

/// Create a copy of ImportAccountOutput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountImportResultCopyWith<$Res>? get result {
    if (_self.result == null) {
    return null;
  }

  return $AccountImportResultCopyWith<$Res>(_self.result!, (value) {
    return _then(_self.copyWith(result: value));
  });
}
}

// dart format on
