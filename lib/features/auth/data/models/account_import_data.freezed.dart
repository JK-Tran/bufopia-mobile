// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_import_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountConflictData {

@JsonKey(name: 'message') String? get message;@JsonKey(name: 'code') String? get code;@JsonKey(name: 'guest') Map<String, dynamic>? get guest;@JsonKey(name: 'cloud') Map<String, dynamic>? get cloud;@JsonKey(name: 'account') Map<String, dynamic>? get account;
/// Create a copy of AccountConflictData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountConflictDataCopyWith<AccountConflictData> get copyWith => _$AccountConflictDataCopyWithImpl<AccountConflictData>(this as AccountConflictData, _$identity);

  /// Serializes this AccountConflictData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AccountConflictData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountConflictData&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.code, _this.code) || other.code == _this.code)&&const DeepCollectionEquality().equals(other.guest, _this.guest)&&const DeepCollectionEquality().equals(other.cloud, _this.cloud)&&const DeepCollectionEquality().equals(other.account, _this.account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AccountConflictData;
  return Object.hash(runtimeType,_this.message,_this.code,const DeepCollectionEquality().hash(_this.guest),const DeepCollectionEquality().hash(_this.cloud),const DeepCollectionEquality().hash(_this.account));
}

@override
String toString() {
  final _this = this as AccountConflictData;
  return 'AccountConflictData(message: ${_this.message}, code: ${_this.code}, guest: ${_this.guest}, cloud: ${_this.cloud}, account: ${_this.account})';
}


}

/// @nodoc
abstract mixin class $AccountConflictDataCopyWith<$Res>  {
  factory $AccountConflictDataCopyWith(AccountConflictData value, $Res Function(AccountConflictData) _then) = _$AccountConflictDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message') String? message,@JsonKey(name: 'code') String? code,@JsonKey(name: 'guest') Map<String, dynamic>? guest,@JsonKey(name: 'cloud') Map<String, dynamic>? cloud,@JsonKey(name: 'account') Map<String, dynamic>? account
});




}
/// @nodoc
class _$AccountConflictDataCopyWithImpl<$Res>
    implements $AccountConflictDataCopyWith<$Res> {
  _$AccountConflictDataCopyWithImpl(this._self, this._then);

  final AccountConflictData _self;
  final $Res Function(AccountConflictData) _then;

/// Create a copy of AccountConflictData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? code = freezed,Object? guest = freezed,Object? cloud = freezed,Object? account = freezed,}) {
  return _then(AccountConflictData(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,guest: freezed == guest ? _self.guest : guest // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,cloud: freezed == cloud ? _self.cloud : cloud // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AccountConflictData].
extension AccountConflictDataPatterns on AccountConflictData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountConflictData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountConflictData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountConflictData value)  $default,){
final _that = this;
switch (_that) {
case _AccountConflictData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountConflictData value)?  $default,){
final _that = this;
switch (_that) {
case _AccountConflictData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  String? message, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'guest')  Map<String, dynamic>? guest, @JsonKey(name: 'cloud')  Map<String, dynamic>? cloud, @JsonKey(name: 'account')  Map<String, dynamic>? account)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountConflictData() when $default != null:
return $default(_that.message,_that.code,_that.guest,_that.cloud,_that.account);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message')  String? message, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'guest')  Map<String, dynamic>? guest, @JsonKey(name: 'cloud')  Map<String, dynamic>? cloud, @JsonKey(name: 'account')  Map<String, dynamic>? account)  $default,) {final _that = this;
switch (_that) {
case _AccountConflictData():
return $default(_that.message,_that.code,_that.guest,_that.cloud,_that.account);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message')  String? message, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'guest')  Map<String, dynamic>? guest, @JsonKey(name: 'cloud')  Map<String, dynamic>? cloud, @JsonKey(name: 'account')  Map<String, dynamic>? account)?  $default,) {final _that = this;
switch (_that) {
case _AccountConflictData() when $default != null:
return $default(_that.message,_that.code,_that.guest,_that.cloud,_that.account);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountConflictData extends AccountConflictData {
  const _AccountConflictData({@JsonKey(name: 'message') this.message, @JsonKey(name: 'code') this.code, @JsonKey(name: 'guest')  Map<String, dynamic>? guest, @JsonKey(name: 'cloud')  Map<String, dynamic>? cloud, @JsonKey(name: 'account')  Map<String, dynamic>? account}): _guest = guest,_cloud = cloud,_account = account,super._();
  factory _AccountConflictData.fromJson(Map<String, dynamic> json) => _$AccountConflictDataFromJson(json);

@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'code') final  String? code;
 final  Map<String, dynamic>? _guest;
@override@JsonKey(name: 'guest') Map<String, dynamic>? get guest {
  final value = _guest;
  if (value == null) return null;
  if (_guest is EqualUnmodifiableMapView) return _guest;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _cloud;
@override@JsonKey(name: 'cloud') Map<String, dynamic>? get cloud {
  final value = _cloud;
  if (value == null) return null;
  if (_cloud is EqualUnmodifiableMapView) return _cloud;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _account;
@override@JsonKey(name: 'account') Map<String, dynamic>? get account {
  final value = _account;
  if (value == null) return null;
  if (_account is EqualUnmodifiableMapView) return _account;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AccountConflictData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountConflictDataCopyWith<_AccountConflictData> get copyWith => __$AccountConflictDataCopyWithImpl<_AccountConflictData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountConflictDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountConflictData&&(identical(other.message, message) || other.message == message)&&(identical(other.code, code) || other.code == code)&&const DeepCollectionEquality().equals(other.guest, _guest)&&const DeepCollectionEquality().equals(other.cloud, _cloud)&&const DeepCollectionEquality().equals(other.account, _account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,message,code,const DeepCollectionEquality().hash(_guest),const DeepCollectionEquality().hash(_cloud),const DeepCollectionEquality().hash(_account));
}

@override
String toString() {
    return 'AccountConflictData(message: $message, code: $code, guest: $guest, cloud: $cloud, account: $account)';
}


}

/// @nodoc
abstract mixin class _$AccountConflictDataCopyWith<$Res> implements $AccountConflictDataCopyWith<$Res> {
  factory _$AccountConflictDataCopyWith(_AccountConflictData value, $Res Function(_AccountConflictData) _then) = __$AccountConflictDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message') String? message,@JsonKey(name: 'code') String? code,@JsonKey(name: 'guest') Map<String, dynamic>? guest,@JsonKey(name: 'cloud') Map<String, dynamic>? cloud,@JsonKey(name: 'account') Map<String, dynamic>? account
});




}
/// @nodoc
class __$AccountConflictDataCopyWithImpl<$Res>
    implements _$AccountConflictDataCopyWith<$Res> {
  __$AccountConflictDataCopyWithImpl(this._self, this._then);

  final _AccountConflictData _self;
  final $Res Function(_AccountConflictData) _then;

/// Create a copy of AccountConflictData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? code = freezed,Object? guest = freezed,Object? cloud = freezed,Object? account = freezed,}) {
  return _then(_AccountConflictData(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,guest: freezed == guest ? _self._guest : guest // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,cloud: freezed == cloud ? _self._cloud : cloud // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,account: freezed == account ? _self._account : account // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}


/// @nodoc
mixin _$AccountImportResponseData {

@JsonKey(name: 'status') String? get status;@JsonKey(name: 'action') String? get action;@JsonKey(name: 'active_uid') String? get activeUid;@JsonKey(name: 'uid') String? get uid;@JsonKey(name: 'user') UserData? get user;@JsonKey(name: 'conflict') AccountConflictData? get conflict;@JsonKey(name: 'code') String? get code;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'account') Map<String, dynamic>? get account;
/// Create a copy of AccountImportResponseData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountImportResponseDataCopyWith<AccountImportResponseData> get copyWith => _$AccountImportResponseDataCopyWithImpl<AccountImportResponseData>(this as AccountImportResponseData, _$identity);

  /// Serializes this AccountImportResponseData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AccountImportResponseData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountImportResponseData&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.action, _this.action) || other.action == _this.action)&&(identical(other.activeUid, _this.activeUid) || other.activeUid == _this.activeUid)&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.conflict, _this.conflict) || other.conflict == _this.conflict)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.message, _this.message) || other.message == _this.message)&&const DeepCollectionEquality().equals(other.account, _this.account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AccountImportResponseData;
  return Object.hash(runtimeType,_this.status,_this.action,_this.activeUid,_this.uid,_this.user,_this.conflict,_this.code,_this.message,const DeepCollectionEquality().hash(_this.account));
}

@override
String toString() {
  final _this = this as AccountImportResponseData;
  return 'AccountImportResponseData(status: ${_this.status}, action: ${_this.action}, activeUid: ${_this.activeUid}, uid: ${_this.uid}, user: ${_this.user}, conflict: ${_this.conflict}, code: ${_this.code}, message: ${_this.message}, account: ${_this.account})';
}


}

/// @nodoc
abstract mixin class $AccountImportResponseDataCopyWith<$Res>  {
  factory $AccountImportResponseDataCopyWith(AccountImportResponseData value, $Res Function(AccountImportResponseData) _then) = _$AccountImportResponseDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'action') String? action,@JsonKey(name: 'active_uid') String? activeUid,@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'user') UserData? user,@JsonKey(name: 'conflict') AccountConflictData? conflict,@JsonKey(name: 'code') String? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'account') Map<String, dynamic>? account
});


$UserDataCopyWith<$Res>? get user;$AccountConflictDataCopyWith<$Res>? get conflict;

}
/// @nodoc
class _$AccountImportResponseDataCopyWithImpl<$Res>
    implements $AccountImportResponseDataCopyWith<$Res> {
  _$AccountImportResponseDataCopyWithImpl(this._self, this._then);

  final AccountImportResponseData _self;
  final $Res Function(AccountImportResponseData) _then;

/// Create a copy of AccountImportResponseData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? action = freezed,Object? activeUid = freezed,Object? uid = freezed,Object? user = freezed,Object? conflict = freezed,Object? code = freezed,Object? message = freezed,Object? account = freezed,}) {
  return _then(AccountImportResponseData(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,activeUid: freezed == activeUid ? _self.activeUid : activeUid // ignore: cast_nullable_to_non_nullable
as String?,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,conflict: freezed == conflict ? _self.conflict : conflict // ignore: cast_nullable_to_non_nullable
as AccountConflictData?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,account: freezed == account ? _self.account : account // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of AccountImportResponseData
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
}/// Create a copy of AccountImportResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountConflictDataCopyWith<$Res>? get conflict {
    if (_self.conflict == null) {
    return null;
  }

  return $AccountConflictDataCopyWith<$Res>(_self.conflict!, (value) {
    return _then(_self.copyWith(conflict: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccountImportResponseData].
extension AccountImportResponseDataPatterns on AccountImportResponseData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountImportResponseData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountImportResponseData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountImportResponseData value)  $default,){
final _that = this;
switch (_that) {
case _AccountImportResponseData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountImportResponseData value)?  $default,){
final _that = this;
switch (_that) {
case _AccountImportResponseData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'action')  String? action, @JsonKey(name: 'active_uid')  String? activeUid, @JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'user')  UserData? user, @JsonKey(name: 'conflict')  AccountConflictData? conflict, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'account')  Map<String, dynamic>? account)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountImportResponseData() when $default != null:
return $default(_that.status,_that.action,_that.activeUid,_that.uid,_that.user,_that.conflict,_that.code,_that.message,_that.account);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'action')  String? action, @JsonKey(name: 'active_uid')  String? activeUid, @JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'user')  UserData? user, @JsonKey(name: 'conflict')  AccountConflictData? conflict, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'account')  Map<String, dynamic>? account)  $default,) {final _that = this;
switch (_that) {
case _AccountImportResponseData():
return $default(_that.status,_that.action,_that.activeUid,_that.uid,_that.user,_that.conflict,_that.code,_that.message,_that.account);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  String? status, @JsonKey(name: 'action')  String? action, @JsonKey(name: 'active_uid')  String? activeUid, @JsonKey(name: 'uid')  String? uid, @JsonKey(name: 'user')  UserData? user, @JsonKey(name: 'conflict')  AccountConflictData? conflict, @JsonKey(name: 'code')  String? code, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'account')  Map<String, dynamic>? account)?  $default,) {final _that = this;
switch (_that) {
case _AccountImportResponseData() when $default != null:
return $default(_that.status,_that.action,_that.activeUid,_that.uid,_that.user,_that.conflict,_that.code,_that.message,_that.account);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AccountImportResponseData extends AccountImportResponseData {
  const _AccountImportResponseData({@JsonKey(name: 'status') this.status, @JsonKey(name: 'action') this.action, @JsonKey(name: 'active_uid') this.activeUid, @JsonKey(name: 'uid') this.uid, @JsonKey(name: 'user') this.user, @JsonKey(name: 'conflict') this.conflict, @JsonKey(name: 'code') this.code, @JsonKey(name: 'message') this.message, @JsonKey(name: 'account')  Map<String, dynamic>? account}): _account = account,super._();
  factory _AccountImportResponseData.fromJson(Map<String, dynamic> json) => _$AccountImportResponseDataFromJson(json);

@override@JsonKey(name: 'status') final  String? status;
@override@JsonKey(name: 'action') final  String? action;
@override@JsonKey(name: 'active_uid') final  String? activeUid;
@override@JsonKey(name: 'uid') final  String? uid;
@override@JsonKey(name: 'user') final  UserData? user;
@override@JsonKey(name: 'conflict') final  AccountConflictData? conflict;
@override@JsonKey(name: 'code') final  String? code;
@override@JsonKey(name: 'message') final  String? message;
 final  Map<String, dynamic>? _account;
@override@JsonKey(name: 'account') Map<String, dynamic>? get account {
  final value = _account;
  if (value == null) return null;
  if (_account is EqualUnmodifiableMapView) return _account;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AccountImportResponseData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountImportResponseDataCopyWith<_AccountImportResponseData> get copyWith => __$AccountImportResponseDataCopyWithImpl<_AccountImportResponseData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountImportResponseDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountImportResponseData&&(identical(other.status, status) || other.status == status)&&(identical(other.action, action) || other.action == action)&&(identical(other.activeUid, activeUid) || other.activeUid == activeUid)&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.user, user) || other.user == user)&&(identical(other.conflict, conflict) || other.conflict == conflict)&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.account, _account));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,action,activeUid,uid,user,conflict,code,message,const DeepCollectionEquality().hash(_account));
}

@override
String toString() {
    return 'AccountImportResponseData(status: $status, action: $action, activeUid: $activeUid, uid: $uid, user: $user, conflict: $conflict, code: $code, message: $message, account: $account)';
}


}

/// @nodoc
abstract mixin class _$AccountImportResponseDataCopyWith<$Res> implements $AccountImportResponseDataCopyWith<$Res> {
  factory _$AccountImportResponseDataCopyWith(_AccountImportResponseData value, $Res Function(_AccountImportResponseData) _then) = __$AccountImportResponseDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') String? status,@JsonKey(name: 'action') String? action,@JsonKey(name: 'active_uid') String? activeUid,@JsonKey(name: 'uid') String? uid,@JsonKey(name: 'user') UserData? user,@JsonKey(name: 'conflict') AccountConflictData? conflict,@JsonKey(name: 'code') String? code,@JsonKey(name: 'message') String? message,@JsonKey(name: 'account') Map<String, dynamic>? account
});


@override $UserDataCopyWith<$Res>? get user;@override $AccountConflictDataCopyWith<$Res>? get conflict;

}
/// @nodoc
class __$AccountImportResponseDataCopyWithImpl<$Res>
    implements _$AccountImportResponseDataCopyWith<$Res> {
  __$AccountImportResponseDataCopyWithImpl(this._self, this._then);

  final _AccountImportResponseData _self;
  final $Res Function(_AccountImportResponseData) _then;

/// Create a copy of AccountImportResponseData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? action = freezed,Object? activeUid = freezed,Object? uid = freezed,Object? user = freezed,Object? conflict = freezed,Object? code = freezed,Object? message = freezed,Object? account = freezed,}) {
  return _then(_AccountImportResponseData(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,activeUid: freezed == activeUid ? _self.activeUid : activeUid // ignore: cast_nullable_to_non_nullable
as String?,uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserData?,conflict: freezed == conflict ? _self.conflict : conflict // ignore: cast_nullable_to_non_nullable
as AccountConflictData?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,account: freezed == account ? _self._account : account // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of AccountImportResponseData
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
}/// Create a copy of AccountImportResponseData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountConflictDataCopyWith<$Res>? get conflict {
    if (_self.conflict == null) {
    return null;
  }

  return $AccountConflictDataCopyWith<$Res>(_self.conflict!, (value) {
    return _then(_self.copyWith(conflict: value));
  });
}
}

// dart format on
