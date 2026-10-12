// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_import_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountConflict {

 String get message; int get guestElo; int get cloudElo; int get guestMatches; int get cloudMatches; String get guestLastActive; String get cloudLastActive;
/// Create a copy of AccountConflict
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountConflictCopyWith<AccountConflict> get copyWith => _$AccountConflictCopyWithImpl<AccountConflict>(this as AccountConflict, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AccountConflict;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountConflict&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.guestElo, _this.guestElo) || other.guestElo == _this.guestElo)&&(identical(other.cloudElo, _this.cloudElo) || other.cloudElo == _this.cloudElo)&&(identical(other.guestMatches, _this.guestMatches) || other.guestMatches == _this.guestMatches)&&(identical(other.cloudMatches, _this.cloudMatches) || other.cloudMatches == _this.cloudMatches)&&(identical(other.guestLastActive, _this.guestLastActive) || other.guestLastActive == _this.guestLastActive)&&(identical(other.cloudLastActive, _this.cloudLastActive) || other.cloudLastActive == _this.cloudLastActive));
}


@override
int get hashCode {
  final _this = this as AccountConflict;
  return Object.hash(runtimeType,_this.message,_this.guestElo,_this.cloudElo,_this.guestMatches,_this.cloudMatches,_this.guestLastActive,_this.cloudLastActive);
}

@override
String toString() {
  final _this = this as AccountConflict;
  return 'AccountConflict(message: ${_this.message}, guestElo: ${_this.guestElo}, cloudElo: ${_this.cloudElo}, guestMatches: ${_this.guestMatches}, cloudMatches: ${_this.cloudMatches}, guestLastActive: ${_this.guestLastActive}, cloudLastActive: ${_this.cloudLastActive})';
}


}

/// @nodoc
abstract mixin class $AccountConflictCopyWith<$Res>  {
  factory $AccountConflictCopyWith(AccountConflict value, $Res Function(AccountConflict) _then) = _$AccountConflictCopyWithImpl;
@useResult
$Res call({
 String message, int guestElo, int cloudElo, int guestMatches, int cloudMatches, String guestLastActive, String cloudLastActive
});




}
/// @nodoc
class _$AccountConflictCopyWithImpl<$Res>
    implements $AccountConflictCopyWith<$Res> {
  _$AccountConflictCopyWithImpl(this._self, this._then);

  final AccountConflict _self;
  final $Res Function(AccountConflict) _then;

/// Create a copy of AccountConflict
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? guestElo = null,Object? cloudElo = null,Object? guestMatches = null,Object? cloudMatches = null,Object? guestLastActive = null,Object? cloudLastActive = null,}) {
  return _then(AccountConflict(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,guestElo: null == guestElo ? _self.guestElo : guestElo // ignore: cast_nullable_to_non_nullable
as int,cloudElo: null == cloudElo ? _self.cloudElo : cloudElo // ignore: cast_nullable_to_non_nullable
as int,guestMatches: null == guestMatches ? _self.guestMatches : guestMatches // ignore: cast_nullable_to_non_nullable
as int,cloudMatches: null == cloudMatches ? _self.cloudMatches : cloudMatches // ignore: cast_nullable_to_non_nullable
as int,guestLastActive: null == guestLastActive ? _self.guestLastActive : guestLastActive // ignore: cast_nullable_to_non_nullable
as String,cloudLastActive: null == cloudLastActive ? _self.cloudLastActive : cloudLastActive // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountConflict].
extension AccountConflictPatterns on AccountConflict {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountConflict value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountConflict() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountConflict value)  $default,){
final _that = this;
switch (_that) {
case _AccountConflict():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountConflict value)?  $default,){
final _that = this;
switch (_that) {
case _AccountConflict() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  int guestElo,  int cloudElo,  int guestMatches,  int cloudMatches,  String guestLastActive,  String cloudLastActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountConflict() when $default != null:
return $default(_that.message,_that.guestElo,_that.cloudElo,_that.guestMatches,_that.cloudMatches,_that.guestLastActive,_that.cloudLastActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  int guestElo,  int cloudElo,  int guestMatches,  int cloudMatches,  String guestLastActive,  String cloudLastActive)  $default,) {final _that = this;
switch (_that) {
case _AccountConflict():
return $default(_that.message,_that.guestElo,_that.cloudElo,_that.guestMatches,_that.cloudMatches,_that.guestLastActive,_that.cloudLastActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  int guestElo,  int cloudElo,  int guestMatches,  int cloudMatches,  String guestLastActive,  String cloudLastActive)?  $default,) {final _that = this;
switch (_that) {
case _AccountConflict() when $default != null:
return $default(_that.message,_that.guestElo,_that.cloudElo,_that.guestMatches,_that.cloudMatches,_that.guestLastActive,_that.cloudLastActive);case _:
  return null;

}
}

}

/// @nodoc


class _AccountConflict implements AccountConflict {
  const _AccountConflict({this.message = '', this.guestElo = 0, this.cloudElo = 0, this.guestMatches = 0, this.cloudMatches = 0, this.guestLastActive = '', this.cloudLastActive = ''});
  

@override@JsonKey() final  String message;
@override@JsonKey() final  int guestElo;
@override@JsonKey() final  int cloudElo;
@override@JsonKey() final  int guestMatches;
@override@JsonKey() final  int cloudMatches;
@override@JsonKey() final  String guestLastActive;
@override@JsonKey() final  String cloudLastActive;

/// Create a copy of AccountConflict
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountConflictCopyWith<_AccountConflict> get copyWith => __$AccountConflictCopyWithImpl<_AccountConflict>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountConflict&&(identical(other.message, message) || other.message == message)&&(identical(other.guestElo, guestElo) || other.guestElo == guestElo)&&(identical(other.cloudElo, cloudElo) || other.cloudElo == cloudElo)&&(identical(other.guestMatches, guestMatches) || other.guestMatches == guestMatches)&&(identical(other.cloudMatches, cloudMatches) || other.cloudMatches == cloudMatches)&&(identical(other.guestLastActive, guestLastActive) || other.guestLastActive == guestLastActive)&&(identical(other.cloudLastActive, cloudLastActive) || other.cloudLastActive == cloudLastActive));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message,guestElo,cloudElo,guestMatches,cloudMatches,guestLastActive,cloudLastActive);
}

@override
String toString() {
    return 'AccountConflict(message: $message, guestElo: $guestElo, cloudElo: $cloudElo, guestMatches: $guestMatches, cloudMatches: $cloudMatches, guestLastActive: $guestLastActive, cloudLastActive: $cloudLastActive)';
}


}

/// @nodoc
abstract mixin class _$AccountConflictCopyWith<$Res> implements $AccountConflictCopyWith<$Res> {
  factory _$AccountConflictCopyWith(_AccountConflict value, $Res Function(_AccountConflict) _then) = __$AccountConflictCopyWithImpl;
@override @useResult
$Res call({
 String message, int guestElo, int cloudElo, int guestMatches, int cloudMatches, String guestLastActive, String cloudLastActive
});




}
/// @nodoc
class __$AccountConflictCopyWithImpl<$Res>
    implements _$AccountConflictCopyWith<$Res> {
  __$AccountConflictCopyWithImpl(this._self, this._then);

  final _AccountConflict _self;
  final $Res Function(_AccountConflict) _then;

/// Create a copy of AccountConflict
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? guestElo = null,Object? cloudElo = null,Object? guestMatches = null,Object? cloudMatches = null,Object? guestLastActive = null,Object? cloudLastActive = null,}) {
  return _then(_AccountConflict(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,guestElo: null == guestElo ? _self.guestElo : guestElo // ignore: cast_nullable_to_non_nullable
as int,cloudElo: null == cloudElo ? _self.cloudElo : cloudElo // ignore: cast_nullable_to_non_nullable
as int,guestMatches: null == guestMatches ? _self.guestMatches : guestMatches // ignore: cast_nullable_to_non_nullable
as int,cloudMatches: null == cloudMatches ? _self.cloudMatches : cloudMatches // ignore: cast_nullable_to_non_nullable
as int,guestLastActive: null == guestLastActive ? _self.guestLastActive : guestLastActive // ignore: cast_nullable_to_non_nullable
as String,cloudLastActive: null == cloudLastActive ? _self.cloudLastActive : cloudLastActive // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AccountImportResult {

 String get status; String get action; String get activeUid; User? get user; AccountConflict? get conflict; bool get isConflict;
/// Create a copy of AccountImportResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountImportResultCopyWith<AccountImportResult> get copyWith => _$AccountImportResultCopyWithImpl<AccountImportResult>(this as AccountImportResult, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AccountImportResult;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountImportResult&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.activeUid, _this.activeUid) || other.activeUid == _this.activeUid)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.conflict, _this.conflict) || other.conflict == _this.conflict)&&(identical(other.isConflict, _this.isConflict) || other.isConflict == _this.isConflict));
}


@override
int get hashCode {
  final _this = this as AccountImportResult;
  return Object.hash(runtimeType,_this.status,_this.action,_this.activeUid,_this.user,_this.conflict,_this.isConflict);
}

@override
String toString() {
  final _this = this as AccountImportResult;
  return 'AccountImportResult(status: ${_this.status}, action: ${_this.action}, activeUid: ${_this.activeUid}, user: ${_this.user}, conflict: ${_this.conflict}, isConflict: ${_this.isConflict})';
}


}

/// @nodoc
abstract mixin class $AccountImportResultCopyWith<$Res>  {
  factory $AccountImportResultCopyWith(AccountImportResult value, $Res Function(AccountImportResult) _then) = _$AccountImportResultCopyWithImpl;
@useResult
$Res call({
 String status, String action, String activeUid, User? user, AccountConflict? conflict, bool isConflict
});


$UserCopyWith<$Res>? get user;$AccountConflictCopyWith<$Res>? get conflict;

}
/// @nodoc
class _$AccountImportResultCopyWithImpl<$Res>
    implements $AccountImportResultCopyWith<$Res> {
  _$AccountImportResultCopyWithImpl(this._self, this._then);

  final AccountImportResult _self;
  final $Res Function(AccountImportResult) _then;

/// Create a copy of AccountImportResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? action = null,Object? activeUid = null,Object? user = freezed,Object? conflict = freezed,Object? isConflict = null,}) {
  return _then(AccountImportResult(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,activeUid: null == activeUid ? _self.activeUid : activeUid // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,conflict: freezed == conflict ? _self.conflict : conflict // ignore: cast_nullable_to_non_nullable
as AccountConflict?,isConflict: null == isConflict ? _self.isConflict : isConflict // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AccountImportResult
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
}/// Create a copy of AccountImportResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountConflictCopyWith<$Res>? get conflict {
    if (_self.conflict == null) {
    return null;
  }

  return $AccountConflictCopyWith<$Res>(_self.conflict!, (value) {
    return _then(_self.copyWith(conflict: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccountImportResult].
extension AccountImportResultPatterns on AccountImportResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountImportResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountImportResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountImportResult value)  $default,){
final _that = this;
switch (_that) {
case _AccountImportResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountImportResult value)?  $default,){
final _that = this;
switch (_that) {
case _AccountImportResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  String action,  String activeUid,  User? user,  AccountConflict? conflict,  bool isConflict)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountImportResult() when $default != null:
return $default(_that.status,_that.action,_that.activeUid,_that.user,_that.conflict,_that.isConflict);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  String action,  String activeUid,  User? user,  AccountConflict? conflict,  bool isConflict)  $default,) {final _that = this;
switch (_that) {
case _AccountImportResult():
return $default(_that.status,_that.action,_that.activeUid,_that.user,_that.conflict,_that.isConflict);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  String action,  String activeUid,  User? user,  AccountConflict? conflict,  bool isConflict)?  $default,) {final _that = this;
switch (_that) {
case _AccountImportResult() when $default != null:
return $default(_that.status,_that.action,_that.activeUid,_that.user,_that.conflict,_that.isConflict);case _:
  return null;

}
}

}

/// @nodoc


class _AccountImportResult implements AccountImportResult {
  const _AccountImportResult({this.status = '', this.action = '', this.activeUid = '', this.user, this.conflict, this.isConflict = false});
  

@override@JsonKey() final  String status;
@override@JsonKey() final  String action;
@override@JsonKey() final  String activeUid;
@override final  User? user;
@override final  AccountConflict? conflict;
@override@JsonKey() final  bool isConflict;

/// Create a copy of AccountImportResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountImportResultCopyWith<_AccountImportResult> get copyWith => __$AccountImportResultCopyWithImpl<_AccountImportResult>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountImportResult&&(identical(other.status, status) || other.status == status)&&(identical(other.action, action) || other.action == action)&&(identical(other.activeUid, activeUid) || other.activeUid == activeUid)&&(identical(other.user, user) || other.user == user)&&(identical(other.conflict, conflict) || other.conflict == conflict)&&(identical(other.isConflict, isConflict) || other.isConflict == isConflict));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,action,activeUid,user,conflict,isConflict);
}

@override
String toString() {
    return 'AccountImportResult(status: $status, action: $action, activeUid: $activeUid, user: $user, conflict: $conflict, isConflict: $isConflict)';
}


}

/// @nodoc
abstract mixin class _$AccountImportResultCopyWith<$Res> implements $AccountImportResultCopyWith<$Res> {
  factory _$AccountImportResultCopyWith(_AccountImportResult value, $Res Function(_AccountImportResult) _then) = __$AccountImportResultCopyWithImpl;
@override @useResult
$Res call({
 String status, String action, String activeUid, User? user, AccountConflict? conflict, bool isConflict
});


@override $UserCopyWith<$Res>? get user;@override $AccountConflictCopyWith<$Res>? get conflict;

}
/// @nodoc
class __$AccountImportResultCopyWithImpl<$Res>
    implements _$AccountImportResultCopyWith<$Res> {
  __$AccountImportResultCopyWithImpl(this._self, this._then);

  final _AccountImportResult _self;
  final $Res Function(_AccountImportResult) _then;

/// Create a copy of AccountImportResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? action = null,Object? activeUid = null,Object? user = freezed,Object? conflict = freezed,Object? isConflict = null,}) {
  return _then(_AccountImportResult(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String,activeUid: null == activeUid ? _self.activeUid : activeUid // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,conflict: freezed == conflict ? _self.conflict : conflict // ignore: cast_nullable_to_non_nullable
as AccountConflict?,isConflict: null == isConflict ? _self.isConflict : isConflict // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AccountImportResult
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
}/// Create a copy of AccountImportResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountConflictCopyWith<$Res>? get conflict {
    if (_self.conflict == null) {
    return null;
  }

  return $AccountConflictCopyWith<$Res>(_self.conflict!, (value) {
    return _then(_self.copyWith(conflict: value));
  });
}
}

// dart format on
