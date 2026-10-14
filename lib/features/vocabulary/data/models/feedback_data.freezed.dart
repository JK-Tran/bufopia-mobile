// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedbackData {

@JsonKey(name: 'uid') String get uid;@JsonKey(name: 'userName') String get userName;@JsonKey(name: 'category') String get category;@JsonKey(name: 'message') String get message;@JsonKey(name: 'contact') String? get contact;@JsonKey(name: 'page') String? get page;
/// Create a copy of FeedbackData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackDataCopyWith<FeedbackData> get copyWith => _$FeedbackDataCopyWithImpl<FeedbackData>(this as FeedbackData, _$identity);

  /// Serializes this FeedbackData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeedbackData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackData&&(identical(other.uid, _this.uid) || other.uid == _this.uid)&&(identical(other.userName, _this.userName) || other.userName == _this.userName)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.contact, _this.contact) || other.contact == _this.contact)&&(identical(other.page, _this.page) || other.page == _this.page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeedbackData;
  return Object.hash(runtimeType,_this.uid,_this.userName,_this.category,_this.message,_this.contact,_this.page);
}

@override
String toString() {
  final _this = this as FeedbackData;
  return 'FeedbackData(uid: ${_this.uid}, userName: ${_this.userName}, category: ${_this.category}, message: ${_this.message}, contact: ${_this.contact}, page: ${_this.page})';
}


}

/// @nodoc
abstract mixin class $FeedbackDataCopyWith<$Res>  {
  factory $FeedbackDataCopyWith(FeedbackData value, $Res Function(FeedbackData) _then) = _$FeedbackDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uid') String uid,@JsonKey(name: 'userName') String userName,@JsonKey(name: 'category') String category,@JsonKey(name: 'message') String message,@JsonKey(name: 'contact') String? contact,@JsonKey(name: 'page') String? page
});




}
/// @nodoc
class _$FeedbackDataCopyWithImpl<$Res>
    implements $FeedbackDataCopyWith<$Res> {
  _$FeedbackDataCopyWithImpl(this._self, this._then);

  final FeedbackData _self;
  final $Res Function(FeedbackData) _then;

/// Create a copy of FeedbackData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? userName = null,Object? category = null,Object? message = null,Object? contact = freezed,Object? page = freezed,}) {
  return _then(FeedbackData(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackData].
extension FeedbackDataPatterns on FeedbackData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackData value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackData value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'userName')  String userName, @JsonKey(name: 'category')  String category, @JsonKey(name: 'message')  String message, @JsonKey(name: 'contact')  String? contact, @JsonKey(name: 'page')  String? page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackData() when $default != null:
return $default(_that.uid,_that.userName,_that.category,_that.message,_that.contact,_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'userName')  String userName, @JsonKey(name: 'category')  String category, @JsonKey(name: 'message')  String message, @JsonKey(name: 'contact')  String? contact, @JsonKey(name: 'page')  String? page)  $default,) {final _that = this;
switch (_that) {
case _FeedbackData():
return $default(_that.uid,_that.userName,_that.category,_that.message,_that.contact,_that.page);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uid')  String uid, @JsonKey(name: 'userName')  String userName, @JsonKey(name: 'category')  String category, @JsonKey(name: 'message')  String message, @JsonKey(name: 'contact')  String? contact, @JsonKey(name: 'page')  String? page)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackData() when $default != null:
return $default(_that.uid,_that.userName,_that.category,_that.message,_that.contact,_that.page);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedbackData extends FeedbackData {
  const _FeedbackData({@JsonKey(name: 'uid') required this.uid, @JsonKey(name: 'userName') required this.userName, @JsonKey(name: 'category') required this.category, @JsonKey(name: 'message') required this.message, @JsonKey(name: 'contact') this.contact, @JsonKey(name: 'page') this.page}): super._();
  factory _FeedbackData.fromJson(Map<String, dynamic> json) => _$FeedbackDataFromJson(json);

@override@JsonKey(name: 'uid') final  String uid;
@override@JsonKey(name: 'userName') final  String userName;
@override@JsonKey(name: 'category') final  String category;
@override@JsonKey(name: 'message') final  String message;
@override@JsonKey(name: 'contact') final  String? contact;
@override@JsonKey(name: 'page') final  String? page;

/// Create a copy of FeedbackData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackDataCopyWith<_FeedbackData> get copyWith => __$FeedbackDataCopyWithImpl<_FeedbackData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackData&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.category, category) || other.category == category)&&(identical(other.message, message) || other.message == message)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,uid,userName,category,message,contact,page);
}

@override
String toString() {
    return 'FeedbackData(uid: $uid, userName: $userName, category: $category, message: $message, contact: $contact, page: $page)';
}


}

/// @nodoc
abstract mixin class _$FeedbackDataCopyWith<$Res> implements $FeedbackDataCopyWith<$Res> {
  factory _$FeedbackDataCopyWith(_FeedbackData value, $Res Function(_FeedbackData) _then) = __$FeedbackDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uid') String uid,@JsonKey(name: 'userName') String userName,@JsonKey(name: 'category') String category,@JsonKey(name: 'message') String message,@JsonKey(name: 'contact') String? contact,@JsonKey(name: 'page') String? page
});




}
/// @nodoc
class __$FeedbackDataCopyWithImpl<$Res>
    implements _$FeedbackDataCopyWith<$Res> {
  __$FeedbackDataCopyWithImpl(this._self, this._then);

  final _FeedbackData _self;
  final $Res Function(_FeedbackData) _then;

/// Create a copy of FeedbackData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? userName = null,Object? category = null,Object? message = null,Object? contact = freezed,Object? page = freezed,}) {
  return _then(_FeedbackData(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FeedbackDataItem {

@JsonKey(name: 'id') String? get id;@JsonKey(name: 'createdAt') int? get createdAt;
/// Create a copy of FeedbackDataItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackDataItemCopyWith<FeedbackDataItem> get copyWith => _$FeedbackDataItemCopyWithImpl<FeedbackDataItem>(this as FeedbackDataItem, _$identity);

  /// Serializes this FeedbackDataItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeedbackDataItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackDataItem&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeedbackDataItem;
  return Object.hash(runtimeType,_this.id,_this.createdAt);
}

@override
String toString() {
  final _this = this as FeedbackDataItem;
  return 'FeedbackDataItem(id: ${_this.id}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $FeedbackDataItemCopyWith<$Res>  {
  factory $FeedbackDataItemCopyWith(FeedbackDataItem value, $Res Function(FeedbackDataItem) _then) = _$FeedbackDataItemCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'createdAt') int? createdAt
});




}
/// @nodoc
class _$FeedbackDataItemCopyWithImpl<$Res>
    implements $FeedbackDataItemCopyWith<$Res> {
  _$FeedbackDataItemCopyWithImpl(this._self, this._then);

  final FeedbackDataItem _self;
  final $Res Function(FeedbackDataItem) _then;

/// Create a copy of FeedbackDataItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,}) {
  return _then(FeedbackDataItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackDataItem].
extension FeedbackDataItemPatterns on FeedbackDataItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackDataItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackDataItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackDataItem value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackDataItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackDataItem value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackDataItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'createdAt')  int? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackDataItem() when $default != null:
return $default(_that.id,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'createdAt')  int? createdAt)  $default,) {final _that = this;
switch (_that) {
case _FeedbackDataItem():
return $default(_that.id,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String? id, @JsonKey(name: 'createdAt')  int? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackDataItem() when $default != null:
return $default(_that.id,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedbackDataItem extends FeedbackDataItem {
  const _FeedbackDataItem({@JsonKey(name: 'id') this.id, @JsonKey(name: 'createdAt') this.createdAt}): super._();
  factory _FeedbackDataItem.fromJson(Map<String, dynamic> json) => _$FeedbackDataItemFromJson(json);

@override@JsonKey(name: 'id') final  String? id;
@override@JsonKey(name: 'createdAt') final  int? createdAt;

/// Create a copy of FeedbackDataItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackDataItemCopyWith<_FeedbackDataItem> get copyWith => __$FeedbackDataItemCopyWithImpl<_FeedbackDataItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackDataItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackDataItem&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,createdAt);
}

@override
String toString() {
    return 'FeedbackDataItem(id: $id, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FeedbackDataItemCopyWith<$Res> implements $FeedbackDataItemCopyWith<$Res> {
  factory _$FeedbackDataItemCopyWith(_FeedbackDataItem value, $Res Function(_FeedbackDataItem) _then) = __$FeedbackDataItemCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String? id,@JsonKey(name: 'createdAt') int? createdAt
});




}
/// @nodoc
class __$FeedbackDataItemCopyWithImpl<$Res>
    implements _$FeedbackDataItemCopyWith<$Res> {
  __$FeedbackDataItemCopyWithImpl(this._self, this._then);

  final _FeedbackDataItem _self;
  final $Res Function(_FeedbackDataItem) _then;

/// Create a copy of FeedbackDataItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,}) {
  return _then(_FeedbackDataItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$FeedbackDataResponse {

@JsonKey(name: 'success') bool get success;@JsonKey(name: 'feedback') FeedbackDataItem? get feedback;@JsonKey(name: 'message') String? get message;
/// Create a copy of FeedbackDataResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackDataResponseCopyWith<FeedbackDataResponse> get copyWith => _$FeedbackDataResponseCopyWithImpl<FeedbackDataResponse>(this as FeedbackDataResponse, _$identity);

  /// Serializes this FeedbackDataResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeedbackDataResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackDataResponse&&(identical(other.success, _this.success) || other.success == _this.success)&&(identical(other.feedback, _this.feedback) || other.feedback == _this.feedback)&&(identical(other.message, _this.message) || other.message == _this.message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeedbackDataResponse;
  return Object.hash(runtimeType,_this.success,_this.feedback,_this.message);
}

@override
String toString() {
  final _this = this as FeedbackDataResponse;
  return 'FeedbackDataResponse(success: ${_this.success}, feedback: ${_this.feedback}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $FeedbackDataResponseCopyWith<$Res>  {
  factory $FeedbackDataResponseCopyWith(FeedbackDataResponse value, $Res Function(FeedbackDataResponse) _then) = _$FeedbackDataResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'feedback') FeedbackDataItem? feedback,@JsonKey(name: 'message') String? message
});


$FeedbackDataItemCopyWith<$Res>? get feedback;

}
/// @nodoc
class _$FeedbackDataResponseCopyWithImpl<$Res>
    implements $FeedbackDataResponseCopyWith<$Res> {
  _$FeedbackDataResponseCopyWithImpl(this._self, this._then);

  final FeedbackDataResponse _self;
  final $Res Function(FeedbackDataResponse) _then;

/// Create a copy of FeedbackDataResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? feedback = freezed,Object? message = freezed,}) {
  return _then(FeedbackDataResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,feedback: freezed == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as FeedbackDataItem?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FeedbackDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackDataItemCopyWith<$Res>? get feedback {
    if (_self.feedback == null) {
    return null;
  }

  return $FeedbackDataItemCopyWith<$Res>(_self.feedback!, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedbackDataResponse].
extension FeedbackDataResponsePatterns on FeedbackDataResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackDataResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackDataResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackDataResponse value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackDataResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackDataResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackDataResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'feedback')  FeedbackDataItem? feedback, @JsonKey(name: 'message')  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackDataResponse() when $default != null:
return $default(_that.success,_that.feedback,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'feedback')  FeedbackDataItem? feedback, @JsonKey(name: 'message')  String? message)  $default,) {final _that = this;
switch (_that) {
case _FeedbackDataResponse():
return $default(_that.success,_that.feedback,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'success')  bool success, @JsonKey(name: 'feedback')  FeedbackDataItem? feedback, @JsonKey(name: 'message')  String? message)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackDataResponse() when $default != null:
return $default(_that.success,_that.feedback,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedbackDataResponse extends FeedbackDataResponse {
  const _FeedbackDataResponse({@JsonKey(name: 'success') this.success = false, @JsonKey(name: 'feedback') this.feedback, @JsonKey(name: 'message') this.message}): super._();
  factory _FeedbackDataResponse.fromJson(Map<String, dynamic> json) => _$FeedbackDataResponseFromJson(json);

@override@JsonKey(name: 'success') final  bool success;
@override@JsonKey(name: 'feedback') final  FeedbackDataItem? feedback;
@override@JsonKey(name: 'message') final  String? message;

/// Create a copy of FeedbackDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackDataResponseCopyWith<_FeedbackDataResponse> get copyWith => __$FeedbackDataResponseCopyWithImpl<_FeedbackDataResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackDataResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackDataResponse&&(identical(other.success, success) || other.success == success)&&(identical(other.feedback, feedback) || other.feedback == feedback)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,success,feedback,message);
}

@override
String toString() {
    return 'FeedbackDataResponse(success: $success, feedback: $feedback, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FeedbackDataResponseCopyWith<$Res> implements $FeedbackDataResponseCopyWith<$Res> {
  factory _$FeedbackDataResponseCopyWith(_FeedbackDataResponse value, $Res Function(_FeedbackDataResponse) _then) = __$FeedbackDataResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'success') bool success,@JsonKey(name: 'feedback') FeedbackDataItem? feedback,@JsonKey(name: 'message') String? message
});


@override $FeedbackDataItemCopyWith<$Res>? get feedback;

}
/// @nodoc
class __$FeedbackDataResponseCopyWithImpl<$Res>
    implements _$FeedbackDataResponseCopyWith<$Res> {
  __$FeedbackDataResponseCopyWithImpl(this._self, this._then);

  final _FeedbackDataResponse _self;
  final $Res Function(_FeedbackDataResponse) _then;

/// Create a copy of FeedbackDataResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? feedback = freezed,Object? message = freezed,}) {
  return _then(_FeedbackDataResponse(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,feedback: freezed == feedback ? _self.feedback : feedback // ignore: cast_nullable_to_non_nullable
as FeedbackDataItem?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FeedbackDataResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedbackDataItemCopyWith<$Res>? get feedback {
    if (_self.feedback == null) {
    return null;
  }

  return $FeedbackDataItemCopyWith<$Res>(_self.feedback!, (value) {
    return _then(_self.copyWith(feedback: value));
  });
}
}

// dart format on
