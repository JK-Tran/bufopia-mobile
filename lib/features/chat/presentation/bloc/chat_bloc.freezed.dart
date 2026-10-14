// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChatEvent()';
}


}

/// @nodoc
class $ChatEventCopyWith<$Res>  {
$ChatEventCopyWith(ChatEvent _, $Res Function(ChatEvent) __);
}


/// Adds pattern-matching-related methods to [ChatEvent].
extension ChatEventPatterns on ChatEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SendChat value)?  sendChat,TResult Function( _ChatReceived value)?  chatReceived,TResult Function( _ChatHistoryLoaded value)?  chatHistoryLoaded,TResult Function( _OpenChat value)?  openChat,TResult Function( _CloseChat value)?  closeChat,TResult Function( _ClearChat value)?  clearChat,TResult Function( _PlayerIndexUpdated value)?  playerIndexUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendChat() when sendChat != null:
return sendChat(_that);case _ChatReceived() when chatReceived != null:
return chatReceived(_that);case _ChatHistoryLoaded() when chatHistoryLoaded != null:
return chatHistoryLoaded(_that);case _OpenChat() when openChat != null:
return openChat(_that);case _CloseChat() when closeChat != null:
return closeChat(_that);case _ClearChat() when clearChat != null:
return clearChat(_that);case _PlayerIndexUpdated() when playerIndexUpdated != null:
return playerIndexUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SendChat value)  sendChat,required TResult Function( _ChatReceived value)  chatReceived,required TResult Function( _ChatHistoryLoaded value)  chatHistoryLoaded,required TResult Function( _OpenChat value)  openChat,required TResult Function( _CloseChat value)  closeChat,required TResult Function( _ClearChat value)  clearChat,required TResult Function( _PlayerIndexUpdated value)  playerIndexUpdated,}){
final _that = this;
switch (_that) {
case _SendChat():
return sendChat(_that);case _ChatReceived():
return chatReceived(_that);case _ChatHistoryLoaded():
return chatHistoryLoaded(_that);case _OpenChat():
return openChat(_that);case _CloseChat():
return closeChat(_that);case _ClearChat():
return clearChat(_that);case _PlayerIndexUpdated():
return playerIndexUpdated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SendChat value)?  sendChat,TResult? Function( _ChatReceived value)?  chatReceived,TResult? Function( _ChatHistoryLoaded value)?  chatHistoryLoaded,TResult? Function( _OpenChat value)?  openChat,TResult? Function( _CloseChat value)?  closeChat,TResult? Function( _ClearChat value)?  clearChat,TResult? Function( _PlayerIndexUpdated value)?  playerIndexUpdated,}){
final _that = this;
switch (_that) {
case _SendChat() when sendChat != null:
return sendChat(_that);case _ChatReceived() when chatReceived != null:
return chatReceived(_that);case _ChatHistoryLoaded() when chatHistoryLoaded != null:
return chatHistoryLoaded(_that);case _OpenChat() when openChat != null:
return openChat(_that);case _CloseChat() when closeChat != null:
return closeChat(_that);case _ClearChat() when clearChat != null:
return clearChat(_that);case _PlayerIndexUpdated() when playerIndexUpdated != null:
return playerIndexUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text,  bool isBotMode,  int myPlayerIndex,  String? rivalName,  String? rivalAvatar)?  sendChat,TResult Function( Chat message,  int myPlayerIndex)?  chatReceived,TResult Function( List<Chat> messages,  int myPlayerIndex)?  chatHistoryLoaded,TResult Function( int myPlayerIndex)?  openChat,TResult Function()?  closeChat,TResult Function()?  clearChat,TResult Function( int myPlayerIndex)?  playerIndexUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendChat() when sendChat != null:
return sendChat(_that.text,_that.isBotMode,_that.myPlayerIndex,_that.rivalName,_that.rivalAvatar);case _ChatReceived() when chatReceived != null:
return chatReceived(_that.message,_that.myPlayerIndex);case _ChatHistoryLoaded() when chatHistoryLoaded != null:
return chatHistoryLoaded(_that.messages,_that.myPlayerIndex);case _OpenChat() when openChat != null:
return openChat(_that.myPlayerIndex);case _CloseChat() when closeChat != null:
return closeChat();case _ClearChat() when clearChat != null:
return clearChat();case _PlayerIndexUpdated() when playerIndexUpdated != null:
return playerIndexUpdated(_that.myPlayerIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text,  bool isBotMode,  int myPlayerIndex,  String? rivalName,  String? rivalAvatar)  sendChat,required TResult Function( Chat message,  int myPlayerIndex)  chatReceived,required TResult Function( List<Chat> messages,  int myPlayerIndex)  chatHistoryLoaded,required TResult Function( int myPlayerIndex)  openChat,required TResult Function()  closeChat,required TResult Function()  clearChat,required TResult Function( int myPlayerIndex)  playerIndexUpdated,}) {final _that = this;
switch (_that) {
case _SendChat():
return sendChat(_that.text,_that.isBotMode,_that.myPlayerIndex,_that.rivalName,_that.rivalAvatar);case _ChatReceived():
return chatReceived(_that.message,_that.myPlayerIndex);case _ChatHistoryLoaded():
return chatHistoryLoaded(_that.messages,_that.myPlayerIndex);case _OpenChat():
return openChat(_that.myPlayerIndex);case _CloseChat():
return closeChat();case _ClearChat():
return clearChat();case _PlayerIndexUpdated():
return playerIndexUpdated(_that.myPlayerIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text,  bool isBotMode,  int myPlayerIndex,  String? rivalName,  String? rivalAvatar)?  sendChat,TResult? Function( Chat message,  int myPlayerIndex)?  chatReceived,TResult? Function( List<Chat> messages,  int myPlayerIndex)?  chatHistoryLoaded,TResult? Function( int myPlayerIndex)?  openChat,TResult? Function()?  closeChat,TResult? Function()?  clearChat,TResult? Function( int myPlayerIndex)?  playerIndexUpdated,}) {final _that = this;
switch (_that) {
case _SendChat() when sendChat != null:
return sendChat(_that.text,_that.isBotMode,_that.myPlayerIndex,_that.rivalName,_that.rivalAvatar);case _ChatReceived() when chatReceived != null:
return chatReceived(_that.message,_that.myPlayerIndex);case _ChatHistoryLoaded() when chatHistoryLoaded != null:
return chatHistoryLoaded(_that.messages,_that.myPlayerIndex);case _OpenChat() when openChat != null:
return openChat(_that.myPlayerIndex);case _CloseChat() when closeChat != null:
return closeChat();case _ClearChat() when clearChat != null:
return clearChat();case _PlayerIndexUpdated() when playerIndexUpdated != null:
return playerIndexUpdated(_that.myPlayerIndex);case _:
  return null;

}
}

}

/// @nodoc


class _SendChat implements ChatEvent {
  const _SendChat({required this.text, this.isBotMode = false, this.myPlayerIndex = 0, this.rivalName, this.rivalAvatar});
  

 final  String text;
@JsonKey() final  bool isBotMode;
@JsonKey() final  int myPlayerIndex;
 final  String? rivalName;
 final  String? rivalAvatar;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendChatCopyWith<_SendChat> get copyWith => __$SendChatCopyWithImpl<_SendChat>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendChat&&(identical(other.text, text) || other.text == text)&&(identical(other.isBotMode, isBotMode) || other.isBotMode == isBotMode)&&(identical(other.myPlayerIndex, myPlayerIndex) || other.myPlayerIndex == myPlayerIndex)&&(identical(other.rivalName, rivalName) || other.rivalName == rivalName)&&(identical(other.rivalAvatar, rivalAvatar) || other.rivalAvatar == rivalAvatar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,text,isBotMode,myPlayerIndex,rivalName,rivalAvatar);
}

@override
String toString() {
    return 'ChatEvent.sendChat(text: $text, isBotMode: $isBotMode, myPlayerIndex: $myPlayerIndex, rivalName: $rivalName, rivalAvatar: $rivalAvatar)';
}


}

/// @nodoc
abstract mixin class _$SendChatCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$SendChatCopyWith(_SendChat value, $Res Function(_SendChat) _then) = __$SendChatCopyWithImpl;
@useResult
$Res call({
 String text, bool isBotMode, int myPlayerIndex, String? rivalName, String? rivalAvatar
});




}
/// @nodoc
class __$SendChatCopyWithImpl<$Res>
    implements _$SendChatCopyWith<$Res> {
  __$SendChatCopyWithImpl(this._self, this._then);

  final _SendChat _self;
  final $Res Function(_SendChat) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,Object? isBotMode = null,Object? myPlayerIndex = null,Object? rivalName = freezed,Object? rivalAvatar = freezed,}) {
  return _then(_SendChat(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,isBotMode: null == isBotMode ? _self.isBotMode : isBotMode // ignore: cast_nullable_to_non_nullable
as bool,myPlayerIndex: null == myPlayerIndex ? _self.myPlayerIndex : myPlayerIndex // ignore: cast_nullable_to_non_nullable
as int,rivalName: freezed == rivalName ? _self.rivalName : rivalName // ignore: cast_nullable_to_non_nullable
as String?,rivalAvatar: freezed == rivalAvatar ? _self.rivalAvatar : rivalAvatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ChatReceived implements ChatEvent {
  const _ChatReceived({required this.message, this.myPlayerIndex = 0});
  

 final  Chat message;
@JsonKey() final  int myPlayerIndex;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatReceivedCopyWith<_ChatReceived> get copyWith => __$ChatReceivedCopyWithImpl<_ChatReceived>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatReceived&&(identical(other.message, message) || other.message == message)&&(identical(other.myPlayerIndex, myPlayerIndex) || other.myPlayerIndex == myPlayerIndex));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message,myPlayerIndex);
}

@override
String toString() {
    return 'ChatEvent.chatReceived(message: $message, myPlayerIndex: $myPlayerIndex)';
}


}

/// @nodoc
abstract mixin class _$ChatReceivedCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$ChatReceivedCopyWith(_ChatReceived value, $Res Function(_ChatReceived) _then) = __$ChatReceivedCopyWithImpl;
@useResult
$Res call({
 Chat message, int myPlayerIndex
});


$ChatCopyWith<$Res> get message;

}
/// @nodoc
class __$ChatReceivedCopyWithImpl<$Res>
    implements _$ChatReceivedCopyWith<$Res> {
  __$ChatReceivedCopyWithImpl(this._self, this._then);

  final _ChatReceived _self;
  final $Res Function(_ChatReceived) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? myPlayerIndex = null,}) {
  return _then(_ChatReceived(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as Chat,myPlayerIndex: null == myPlayerIndex ? _self.myPlayerIndex : myPlayerIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCopyWith<$Res> get message {
  
  return $ChatCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

/// @nodoc


class _ChatHistoryLoaded implements ChatEvent {
  const _ChatHistoryLoaded({required  List<Chat> messages, this.myPlayerIndex = 0}): _messages = messages;
  

 final  List<Chat> _messages;
 List<Chat> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@JsonKey() final  int myPlayerIndex;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatHistoryLoadedCopyWith<_ChatHistoryLoaded> get copyWith => __$ChatHistoryLoadedCopyWithImpl<_ChatHistoryLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatHistoryLoaded&&const DeepCollectionEquality().equals(other.messages, _messages)&&(identical(other.myPlayerIndex, myPlayerIndex) || other.myPlayerIndex == myPlayerIndex));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),myPlayerIndex);
}

@override
String toString() {
    return 'ChatEvent.chatHistoryLoaded(messages: $messages, myPlayerIndex: $myPlayerIndex)';
}


}

/// @nodoc
abstract mixin class _$ChatHistoryLoadedCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$ChatHistoryLoadedCopyWith(_ChatHistoryLoaded value, $Res Function(_ChatHistoryLoaded) _then) = __$ChatHistoryLoadedCopyWithImpl;
@useResult
$Res call({
 List<Chat> messages, int myPlayerIndex
});




}
/// @nodoc
class __$ChatHistoryLoadedCopyWithImpl<$Res>
    implements _$ChatHistoryLoadedCopyWith<$Res> {
  __$ChatHistoryLoadedCopyWithImpl(this._self, this._then);

  final _ChatHistoryLoaded _self;
  final $Res Function(_ChatHistoryLoaded) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? myPlayerIndex = null,}) {
  return _then(_ChatHistoryLoaded(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Chat>,myPlayerIndex: null == myPlayerIndex ? _self.myPlayerIndex : myPlayerIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _OpenChat implements ChatEvent {
  const _OpenChat({this.myPlayerIndex = 0});
  

@JsonKey() final  int myPlayerIndex;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenChatCopyWith<_OpenChat> get copyWith => __$OpenChatCopyWithImpl<_OpenChat>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenChat&&(identical(other.myPlayerIndex, myPlayerIndex) || other.myPlayerIndex == myPlayerIndex));
}


@override
int get hashCode {
    return Object.hash(runtimeType,myPlayerIndex);
}

@override
String toString() {
    return 'ChatEvent.openChat(myPlayerIndex: $myPlayerIndex)';
}


}

/// @nodoc
abstract mixin class _$OpenChatCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$OpenChatCopyWith(_OpenChat value, $Res Function(_OpenChat) _then) = __$OpenChatCopyWithImpl;
@useResult
$Res call({
 int myPlayerIndex
});




}
/// @nodoc
class __$OpenChatCopyWithImpl<$Res>
    implements _$OpenChatCopyWith<$Res> {
  __$OpenChatCopyWithImpl(this._self, this._then);

  final _OpenChat _self;
  final $Res Function(_OpenChat) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? myPlayerIndex = null,}) {
  return _then(_OpenChat(
myPlayerIndex: null == myPlayerIndex ? _self.myPlayerIndex : myPlayerIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CloseChat implements ChatEvent {
  const _CloseChat();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CloseChat);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChatEvent.closeChat()';
}


}




/// @nodoc


class _ClearChat implements ChatEvent {
  const _ClearChat();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearChat);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ChatEvent.clearChat()';
}


}




/// @nodoc


class _PlayerIndexUpdated implements ChatEvent {
  const _PlayerIndexUpdated({required this.myPlayerIndex});
  

 final  int myPlayerIndex;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerIndexUpdatedCopyWith<_PlayerIndexUpdated> get copyWith => __$PlayerIndexUpdatedCopyWithImpl<_PlayerIndexUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerIndexUpdated&&(identical(other.myPlayerIndex, myPlayerIndex) || other.myPlayerIndex == myPlayerIndex));
}


@override
int get hashCode {
    return Object.hash(runtimeType,myPlayerIndex);
}

@override
String toString() {
    return 'ChatEvent.playerIndexUpdated(myPlayerIndex: $myPlayerIndex)';
}


}

/// @nodoc
abstract mixin class _$PlayerIndexUpdatedCopyWith<$Res> implements $ChatEventCopyWith<$Res> {
  factory _$PlayerIndexUpdatedCopyWith(_PlayerIndexUpdated value, $Res Function(_PlayerIndexUpdated) _then) = __$PlayerIndexUpdatedCopyWithImpl;
@useResult
$Res call({
 int myPlayerIndex
});




}
/// @nodoc
class __$PlayerIndexUpdatedCopyWithImpl<$Res>
    implements _$PlayerIndexUpdatedCopyWith<$Res> {
  __$PlayerIndexUpdatedCopyWithImpl(this._self, this._then);

  final _PlayerIndexUpdated _self;
  final $Res Function(_PlayerIndexUpdated) _then;

/// Create a copy of ChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? myPlayerIndex = null,}) {
  return _then(_PlayerIndexUpdated(
myPlayerIndex: null == myPlayerIndex ? _self.myPlayerIndex : myPlayerIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ChatState {

 List<Chat> get messages; int get unreadCount; bool get isOpen; String? get errorMessage;
/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatStateCopyWith<ChatState> get copyWith => _$ChatStateCopyWithImpl<ChatState>(this as ChatState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ChatState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatState&&const DeepCollectionEquality().equals(other.messages, _this.messages)&&(identical(other.unreadCount, _this.unreadCount) || other.unreadCount == _this.unreadCount)&&(identical(other.isOpen, _this.isOpen) || other.isOpen == _this.isOpen)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as ChatState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.messages),_this.unreadCount,_this.isOpen,_this.errorMessage);
}

@override
String toString() {
  final _this = this as ChatState;
  return 'ChatState(messages: ${_this.messages}, unreadCount: ${_this.unreadCount}, isOpen: ${_this.isOpen}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $ChatStateCopyWith<$Res>  {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) _then) = _$ChatStateCopyWithImpl;
@useResult
$Res call({
 List<Chat> messages, int unreadCount, bool isOpen, String? errorMessage
});




}
/// @nodoc
class _$ChatStateCopyWithImpl<$Res>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._self, this._then);

  final ChatState _self;
  final $Res Function(ChatState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? unreadCount = null,Object? isOpen = null,Object? errorMessage = freezed,}) {
  return _then(ChatState(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<Chat>,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatState].
extension ChatStatePatterns on ChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatState value)  $default,){
final _that = this;
switch (_that) {
case _ChatState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatState value)?  $default,){
final _that = this;
switch (_that) {
case _ChatState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Chat> messages,  int unreadCount,  bool isOpen,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatState() when $default != null:
return $default(_that.messages,_that.unreadCount,_that.isOpen,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Chat> messages,  int unreadCount,  bool isOpen,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ChatState():
return $default(_that.messages,_that.unreadCount,_that.isOpen,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Chat> messages,  int unreadCount,  bool isOpen,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ChatState() when $default != null:
return $default(_that.messages,_that.unreadCount,_that.isOpen,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ChatState implements ChatState {
  const _ChatState({ List<Chat> messages = const [], this.unreadCount = 0, this.isOpen = false, this.errorMessage}): _messages = messages;
  

 final  List<Chat> _messages;
@override@JsonKey() List<Chat> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey() final  int unreadCount;
@override@JsonKey() final  bool isOpen;
@override final  String? errorMessage;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatStateCopyWith<_ChatState> get copyWith => __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatState&&const DeepCollectionEquality().equals(other.messages, _messages)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),unreadCount,isOpen,errorMessage);
}

@override
String toString() {
    return 'ChatState(messages: $messages, unreadCount: $unreadCount, isOpen: $isOpen, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(_ChatState value, $Res Function(_ChatState) _then) = __$ChatStateCopyWithImpl;
@override @useResult
$Res call({
 List<Chat> messages, int unreadCount, bool isOpen, String? errorMessage
});




}
/// @nodoc
class __$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(this._self, this._then);

  final _ChatState _self;
  final $Res Function(_ChatState) _then;

/// Create a copy of ChatState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? unreadCount = null,Object? isOpen = null,Object? errorMessage = freezed,}) {
  return _then(_ChatState(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Chat>,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
