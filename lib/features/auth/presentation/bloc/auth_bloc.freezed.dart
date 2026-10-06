// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetUserInfo value)?  getUserInfo,TResult Function( _UpdateProfile value)?  updateProfile,TResult Function( _LoggedIn value)?  loggedIn,TResult Function( _UserUpdated value)?  userUpdated,TResult Function( _LoggedOut value)?  loggedOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _LoggedIn() when loggedIn != null:
return loggedIn(_that);case _UserUpdated() when userUpdated != null:
return userUpdated(_that);case _LoggedOut() when loggedOut != null:
return loggedOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetUserInfo value)  getUserInfo,required TResult Function( _UpdateProfile value)  updateProfile,required TResult Function( _LoggedIn value)  loggedIn,required TResult Function( _UserUpdated value)  userUpdated,required TResult Function( _LoggedOut value)  loggedOut,}){
final _that = this;
switch (_that) {
case _GetUserInfo():
return getUserInfo(_that);case _UpdateProfile():
return updateProfile(_that);case _LoggedIn():
return loggedIn(_that);case _UserUpdated():
return userUpdated(_that);case _LoggedOut():
return loggedOut(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetUserInfo value)?  getUserInfo,TResult? Function( _UpdateProfile value)?  updateProfile,TResult? Function( _LoggedIn value)?  loggedIn,TResult? Function( _UserUpdated value)?  userUpdated,TResult? Function( _LoggedOut value)?  loggedOut,}){
final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _LoggedIn() when loggedIn != null:
return loggedIn(_that);case _UserUpdated() when userUpdated != null:
return userUpdated(_that);case _LoggedOut() when loggedOut != null:
return loggedOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? uid)?  getUserInfo,TResult Function( String displayName,  String? avatarUrl)?  updateProfile,TResult Function( User user)?  loggedIn,TResult Function( User user)?  userUpdated,TResult Function()?  loggedOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo(_that.uid);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.displayName,_that.avatarUrl);case _LoggedIn() when loggedIn != null:
return loggedIn(_that.user);case _UserUpdated() when userUpdated != null:
return userUpdated(_that.user);case _LoggedOut() when loggedOut != null:
return loggedOut();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? uid)  getUserInfo,required TResult Function( String displayName,  String? avatarUrl)  updateProfile,required TResult Function( User user)  loggedIn,required TResult Function( User user)  userUpdated,required TResult Function()  loggedOut,}) {final _that = this;
switch (_that) {
case _GetUserInfo():
return getUserInfo(_that.uid);case _UpdateProfile():
return updateProfile(_that.displayName,_that.avatarUrl);case _LoggedIn():
return loggedIn(_that.user);case _UserUpdated():
return userUpdated(_that.user);case _LoggedOut():
return loggedOut();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? uid)?  getUserInfo,TResult? Function( String displayName,  String? avatarUrl)?  updateProfile,TResult? Function( User user)?  loggedIn,TResult? Function( User user)?  userUpdated,TResult? Function()?  loggedOut,}) {final _that = this;
switch (_that) {
case _GetUserInfo() when getUserInfo != null:
return getUserInfo(_that.uid);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.displayName,_that.avatarUrl);case _LoggedIn() when loggedIn != null:
return loggedIn(_that.user);case _UserUpdated() when userUpdated != null:
return userUpdated(_that.user);case _LoggedOut() when loggedOut != null:
return loggedOut();case _:
  return null;

}
}

}

/// @nodoc


class _GetUserInfo implements AuthEvent {
  const _GetUserInfo({this.uid});
  

 final  String? uid;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUserInfoCopyWith<_GetUserInfo> get copyWith => __$GetUserInfoCopyWithImpl<_GetUserInfo>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserInfo&&(identical(other.uid, uid) || other.uid == uid));
}


@override
int get hashCode {
    return Object.hash(runtimeType,uid);
}

@override
String toString() {
    return 'AuthEvent.getUserInfo(uid: $uid)';
}


}

/// @nodoc
abstract mixin class _$GetUserInfoCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$GetUserInfoCopyWith(_GetUserInfo value, $Res Function(_GetUserInfo) _then) = __$GetUserInfoCopyWithImpl;
@useResult
$Res call({
 String? uid
});




}
/// @nodoc
class __$GetUserInfoCopyWithImpl<$Res>
    implements _$GetUserInfoCopyWith<$Res> {
  __$GetUserInfoCopyWithImpl(this._self, this._then);

  final _GetUserInfo _self;
  final $Res Function(_GetUserInfo) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? uid = freezed,}) {
  return _then(_GetUserInfo(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UpdateProfile implements AuthEvent {
  const _UpdateProfile({required this.displayName, this.avatarUrl});
  

 final  String displayName;
 final  String? avatarUrl;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileCopyWith<_UpdateProfile> get copyWith => __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfile&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode {
    return Object.hash(runtimeType,displayName,avatarUrl);
}

@override
String toString() {
    return 'AuthEvent.updateProfile(displayName: $displayName, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(_UpdateProfile value, $Res Function(_UpdateProfile) _then) = __$UpdateProfileCopyWithImpl;
@useResult
$Res call({
 String displayName, String? avatarUrl
});




}
/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(this._self, this._then);

  final _UpdateProfile _self;
  final $Res Function(_UpdateProfile) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? avatarUrl = freezed,}) {
  return _then(_UpdateProfile(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoggedIn implements AuthEvent {
  const _LoggedIn(this.user);
  

 final  User user;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoggedInCopyWith<_LoggedIn> get copyWith => __$LoggedInCopyWithImpl<_LoggedIn>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoggedIn&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user);
}

@override
String toString() {
    return 'AuthEvent.loggedIn(user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoggedInCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoggedInCopyWith(_LoggedIn value, $Res Function(_LoggedIn) _then) = __$LoggedInCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class __$LoggedInCopyWithImpl<$Res>
    implements _$LoggedInCopyWith<$Res> {
  __$LoggedInCopyWithImpl(this._self, this._then);

  final _LoggedIn _self;
  final $Res Function(_LoggedIn) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_LoggedIn(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _UserUpdated implements AuthEvent {
  const _UserUpdated(this.user);
  

 final  User user;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserUpdatedCopyWith<_UserUpdated> get copyWith => __$UserUpdatedCopyWithImpl<_UserUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserUpdated&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode {
    return Object.hash(runtimeType,user);
}

@override
String toString() {
    return 'AuthEvent.userUpdated(user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserUpdatedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$UserUpdatedCopyWith(_UserUpdated value, $Res Function(_UserUpdated) _then) = __$UserUpdatedCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class __$UserUpdatedCopyWithImpl<$Res>
    implements _$UserUpdatedCopyWith<$Res> {
  __$UserUpdatedCopyWithImpl(this._self, this._then);

  final _UserUpdated _self;
  final $Res Function(_UserUpdated) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_UserUpdated(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _LoggedOut implements AuthEvent {
  const _LoggedOut();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoggedOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthEvent.loggedOut()';
}


}




/// @nodoc
mixin _$AuthState {

 bool get isLoggedIn; bool get isLoading; User? get currentUser; String? get errorMessage;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AuthState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.isLoggedIn, _this.isLoggedIn) || other.isLoggedIn == _this.isLoggedIn)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.currentUser, _this.currentUser) || other.currentUser == _this.currentUser)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as AuthState;
  return Object.hash(runtimeType,_this.isLoggedIn,_this.isLoading,_this.currentUser,_this.errorMessage);
}

@override
String toString() {
  final _this = this as AuthState;
  return 'AuthState(isLoggedIn: ${_this.isLoggedIn}, isLoading: ${_this.isLoading}, currentUser: ${_this.currentUser}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 bool isLoggedIn, bool isLoading, User? currentUser, String? errorMessage
});


$UserCopyWith<$Res>? get currentUser;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoggedIn = null,Object? isLoading = null,Object? currentUser = freezed,Object? errorMessage = freezed,}) {
  return _then(AuthState(
isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,currentUser: freezed == currentUser ? _self.currentUser : currentUser // ignore: cast_nullable_to_non_nullable
as User?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get currentUser {
    if (_self.currentUser == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.currentUser!, (value) {
    return _then(_self.copyWith(currentUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoggedIn,  bool isLoading,  User? currentUser,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoggedIn,_that.isLoading,_that.currentUser,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoggedIn,  bool isLoading,  User? currentUser,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.isLoggedIn,_that.isLoading,_that.currentUser,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoggedIn,  bool isLoading,  User? currentUser,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isLoggedIn,_that.isLoading,_that.currentUser,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.isLoggedIn = false, this.isLoading = false, this.currentUser, this.errorMessage});
  

@override@JsonKey() final  bool isLoggedIn;
@override@JsonKey() final  bool isLoading;
@override final  User? currentUser;
@override final  String? errorMessage;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.currentUser, currentUser) || other.currentUser == currentUser)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,isLoggedIn,isLoading,currentUser,errorMessage);
}

@override
String toString() {
    return 'AuthState(isLoggedIn: $isLoggedIn, isLoading: $isLoading, currentUser: $currentUser, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoggedIn, bool isLoading, User? currentUser, String? errorMessage
});


@override $UserCopyWith<$Res>? get currentUser;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoggedIn = null,Object? isLoading = null,Object? currentUser = freezed,Object? errorMessage = freezed,}) {
  return _then(_AuthState(
isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,currentUser: freezed == currentUser ? _self.currentUser : currentUser // ignore: cast_nullable_to_non_nullable
as User?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get currentUser {
    if (_self.currentUser == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.currentUser!, (value) {
    return _then(_self.copyWith(currentUser: value));
  });
}
}

// dart format on
