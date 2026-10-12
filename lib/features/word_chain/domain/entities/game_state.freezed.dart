// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameState {

 String get status; int get turn; int get turnId; int get turnStartedAt; int? get deadline; bool get relaxed; List<int?> get lives; List<int> get mistakes; List<int> get awayCounts; String get requiredLetter; List<String> get usedWords; List<TurnMessage> get messages; int? get winner; String? get finishReason; int get revision;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GameState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.turn, _this.turn) || other.turn == _this.turn)&&(identical(other.turnId, _this.turnId) || other.turnId == _this.turnId)&&(identical(other.turnStartedAt, _this.turnStartedAt) || other.turnStartedAt == _this.turnStartedAt)&&(identical(other.deadline, _this.deadline) || other.deadline == _this.deadline)&&(identical(other.relaxed, _this.relaxed) || other.relaxed == _this.relaxed)&&const DeepCollectionEquality().equals(other.lives, _this.lives)&&const DeepCollectionEquality().equals(other.mistakes, _this.mistakes)&&const DeepCollectionEquality().equals(other.awayCounts, _this.awayCounts)&&(identical(other.requiredLetter, _this.requiredLetter) || other.requiredLetter == _this.requiredLetter)&&const DeepCollectionEquality().equals(other.usedWords, _this.usedWords)&&const DeepCollectionEquality().equals(other.messages, _this.messages)&&(identical(other.winner, _this.winner) || other.winner == _this.winner)&&(identical(other.finishReason, _this.finishReason) || other.finishReason == _this.finishReason)&&(identical(other.revision, _this.revision) || other.revision == _this.revision));
}


@override
int get hashCode {
  final _this = this as GameState;
  return Object.hash(runtimeType,_this.status,_this.turn,_this.turnId,_this.turnStartedAt,_this.deadline,_this.relaxed,const DeepCollectionEquality().hash(_this.lives),const DeepCollectionEquality().hash(_this.mistakes),const DeepCollectionEquality().hash(_this.awayCounts),_this.requiredLetter,const DeepCollectionEquality().hash(_this.usedWords),const DeepCollectionEquality().hash(_this.messages),_this.winner,_this.finishReason,_this.revision);
}

@override
String toString() {
  final _this = this as GameState;
  return 'GameState(status: ${_this.status}, turn: ${_this.turn}, turnId: ${_this.turnId}, turnStartedAt: ${_this.turnStartedAt}, deadline: ${_this.deadline}, relaxed: ${_this.relaxed}, lives: ${_this.lives}, mistakes: ${_this.mistakes}, awayCounts: ${_this.awayCounts}, requiredLetter: ${_this.requiredLetter}, usedWords: ${_this.usedWords}, messages: ${_this.messages}, winner: ${_this.winner}, finishReason: ${_this.finishReason}, revision: ${_this.revision})';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 String status, int turn, int turnId, int turnStartedAt, int? deadline, bool relaxed, List<int?> lives, List<int> mistakes, List<int> awayCounts, String requiredLetter, List<String> usedWords, List<TurnMessage> messages, int? winner, String? finishReason, int revision
});




}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? turn = null,Object? turnId = null,Object? turnStartedAt = null,Object? deadline = freezed,Object? relaxed = null,Object? lives = null,Object? mistakes = null,Object? awayCounts = null,Object? requiredLetter = null,Object? usedWords = null,Object? messages = null,Object? winner = freezed,Object? finishReason = freezed,Object? revision = null,}) {
  return _then(GameState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,turn: null == turn ? _self.turn : turn // ignore: cast_nullable_to_non_nullable
as int,turnId: null == turnId ? _self.turnId : turnId // ignore: cast_nullable_to_non_nullable
as int,turnStartedAt: null == turnStartedAt ? _self.turnStartedAt : turnStartedAt // ignore: cast_nullable_to_non_nullable
as int,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as int?,relaxed: null == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool,lives: null == lives ? _self.lives : lives // ignore: cast_nullable_to_non_nullable
as List<int?>,mistakes: null == mistakes ? _self.mistakes : mistakes // ignore: cast_nullable_to_non_nullable
as List<int>,awayCounts: null == awayCounts ? _self.awayCounts : awayCounts // ignore: cast_nullable_to_non_nullable
as List<int>,requiredLetter: null == requiredLetter ? _self.requiredLetter : requiredLetter // ignore: cast_nullable_to_non_nullable
as String,usedWords: null == usedWords ? _self.usedWords : usedWords // ignore: cast_nullable_to_non_nullable
as List<String>,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<TurnMessage>,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as int?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,revision: null == revision ? _self.revision : revision // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status,  int turn,  int turnId,  int turnStartedAt,  int? deadline,  bool relaxed,  List<int?> lives,  List<int> mistakes,  List<int> awayCounts,  String requiredLetter,  List<String> usedWords,  List<TurnMessage> messages,  int? winner,  String? finishReason,  int revision)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.status,_that.turn,_that.turnId,_that.turnStartedAt,_that.deadline,_that.relaxed,_that.lives,_that.mistakes,_that.awayCounts,_that.requiredLetter,_that.usedWords,_that.messages,_that.winner,_that.finishReason,_that.revision);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status,  int turn,  int turnId,  int turnStartedAt,  int? deadline,  bool relaxed,  List<int?> lives,  List<int> mistakes,  List<int> awayCounts,  String requiredLetter,  List<String> usedWords,  List<TurnMessage> messages,  int? winner,  String? finishReason,  int revision)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.status,_that.turn,_that.turnId,_that.turnStartedAt,_that.deadline,_that.relaxed,_that.lives,_that.mistakes,_that.awayCounts,_that.requiredLetter,_that.usedWords,_that.messages,_that.winner,_that.finishReason,_that.revision);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status,  int turn,  int turnId,  int turnStartedAt,  int? deadline,  bool relaxed,  List<int?> lives,  List<int> mistakes,  List<int> awayCounts,  String requiredLetter,  List<String> usedWords,  List<TurnMessage> messages,  int? winner,  String? finishReason,  int revision)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.status,_that.turn,_that.turnId,_that.turnStartedAt,_that.deadline,_that.relaxed,_that.lives,_that.mistakes,_that.awayCounts,_that.requiredLetter,_that.usedWords,_that.messages,_that.winner,_that.finishReason,_that.revision);case _:
  return null;

}
}

}

/// @nodoc


class _GameState implements GameState {
  const _GameState({this.status = 'waiting', this.turn = 0, this.turnId = 0, this.turnStartedAt = 0, this.deadline, this.relaxed = false,  List<int?> lives = const [3, 3],  List<int> mistakes = const [0, 0],  List<int> awayCounts = const [0, 0], this.requiredLetter = '',  List<String> usedWords = const [],  List<TurnMessage> messages = const [], this.winner, this.finishReason, this.revision = 0}): _lives = lives,_mistakes = mistakes,_awayCounts = awayCounts,_usedWords = usedWords,_messages = messages;
  

@override@JsonKey() final  String status;
@override@JsonKey() final  int turn;
@override@JsonKey() final  int turnId;
@override@JsonKey() final  int turnStartedAt;
@override final  int? deadline;
@override@JsonKey() final  bool relaxed;
 final  List<int?> _lives;
@override@JsonKey() List<int?> get lives {
  if (_lives is EqualUnmodifiableListView) return _lives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lives);
}

 final  List<int> _mistakes;
@override@JsonKey() List<int> get mistakes {
  if (_mistakes is EqualUnmodifiableListView) return _mistakes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mistakes);
}

 final  List<int> _awayCounts;
@override@JsonKey() List<int> get awayCounts {
  if (_awayCounts is EqualUnmodifiableListView) return _awayCounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_awayCounts);
}

@override@JsonKey() final  String requiredLetter;
 final  List<String> _usedWords;
@override@JsonKey() List<String> get usedWords {
  if (_usedWords is EqualUnmodifiableListView) return _usedWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_usedWords);
}

 final  List<TurnMessage> _messages;
@override@JsonKey() List<TurnMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  int? winner;
@override final  String? finishReason;
@override@JsonKey() final  int revision;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&(identical(other.status, status) || other.status == status)&&(identical(other.turn, turn) || other.turn == turn)&&(identical(other.turnId, turnId) || other.turnId == turnId)&&(identical(other.turnStartedAt, turnStartedAt) || other.turnStartedAt == turnStartedAt)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.relaxed, relaxed) || other.relaxed == relaxed)&&const DeepCollectionEquality().equals(other.lives, _lives)&&const DeepCollectionEquality().equals(other.mistakes, _mistakes)&&const DeepCollectionEquality().equals(other.awayCounts, _awayCounts)&&(identical(other.requiredLetter, requiredLetter) || other.requiredLetter == requiredLetter)&&const DeepCollectionEquality().equals(other.usedWords, _usedWords)&&const DeepCollectionEquality().equals(other.messages, _messages)&&(identical(other.winner, winner) || other.winner == winner)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&(identical(other.revision, revision) || other.revision == revision));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,turn,turnId,turnStartedAt,deadline,relaxed,const DeepCollectionEquality().hash(_lives),const DeepCollectionEquality().hash(_mistakes),const DeepCollectionEquality().hash(_awayCounts),requiredLetter,const DeepCollectionEquality().hash(_usedWords),const DeepCollectionEquality().hash(_messages),winner,finishReason,revision);
}

@override
String toString() {
    return 'GameState(status: $status, turn: $turn, turnId: $turnId, turnStartedAt: $turnStartedAt, deadline: $deadline, relaxed: $relaxed, lives: $lives, mistakes: $mistakes, awayCounts: $awayCounts, requiredLetter: $requiredLetter, usedWords: $usedWords, messages: $messages, winner: $winner, finishReason: $finishReason, revision: $revision)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 String status, int turn, int turnId, int turnStartedAt, int? deadline, bool relaxed, List<int?> lives, List<int> mistakes, List<int> awayCounts, String requiredLetter, List<String> usedWords, List<TurnMessage> messages, int? winner, String? finishReason, int revision
});




}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? turn = null,Object? turnId = null,Object? turnStartedAt = null,Object? deadline = freezed,Object? relaxed = null,Object? lives = null,Object? mistakes = null,Object? awayCounts = null,Object? requiredLetter = null,Object? usedWords = null,Object? messages = null,Object? winner = freezed,Object? finishReason = freezed,Object? revision = null,}) {
  return _then(_GameState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,turn: null == turn ? _self.turn : turn // ignore: cast_nullable_to_non_nullable
as int,turnId: null == turnId ? _self.turnId : turnId // ignore: cast_nullable_to_non_nullable
as int,turnStartedAt: null == turnStartedAt ? _self.turnStartedAt : turnStartedAt // ignore: cast_nullable_to_non_nullable
as int,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as int?,relaxed: null == relaxed ? _self.relaxed : relaxed // ignore: cast_nullable_to_non_nullable
as bool,lives: null == lives ? _self._lives : lives // ignore: cast_nullable_to_non_nullable
as List<int?>,mistakes: null == mistakes ? _self._mistakes : mistakes // ignore: cast_nullable_to_non_nullable
as List<int>,awayCounts: null == awayCounts ? _self._awayCounts : awayCounts // ignore: cast_nullable_to_non_nullable
as List<int>,requiredLetter: null == requiredLetter ? _self.requiredLetter : requiredLetter // ignore: cast_nullable_to_non_nullable
as String,usedWords: null == usedWords ? _self._usedWords : usedWords // ignore: cast_nullable_to_non_nullable
as List<String>,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<TurnMessage>,winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as int?,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,revision: null == revision ? _self.revision : revision // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
