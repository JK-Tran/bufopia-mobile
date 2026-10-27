// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedbackEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FeedbackEvent()';
}


}

/// @nodoc
class $FeedbackEventCopyWith<$Res>  {
$FeedbackEventCopyWith(FeedbackEvent _, $Res Function(FeedbackEvent) __);
}


/// Adds pattern-matching-related methods to [FeedbackEvent].
extension FeedbackEventPatterns on FeedbackEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initiated value)?  initiated,TResult Function( _TabChanged value)?  tabChanged,TResult Function( _WordEntrySelected value)?  wordEntrySelected,TResult Function( _ToggleFullDictionaryMode value)?  toggleFullDictionaryMode,TResult Function( _SubmitGeneralFeedback value)?  submitGeneralFeedback,TResult Function( _SubmitWordReport value)?  submitWordReport,TResult Function( _ResetForm value)?  resetForm,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initiated() when initiated != null:
return initiated(_that);case _TabChanged() when tabChanged != null:
return tabChanged(_that);case _WordEntrySelected() when wordEntrySelected != null:
return wordEntrySelected(_that);case _ToggleFullDictionaryMode() when toggleFullDictionaryMode != null:
return toggleFullDictionaryMode(_that);case _SubmitGeneralFeedback() when submitGeneralFeedback != null:
return submitGeneralFeedback(_that);case _SubmitWordReport() when submitWordReport != null:
return submitWordReport(_that);case _ResetForm() when resetForm != null:
return resetForm(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initiated value)  initiated,required TResult Function( _TabChanged value)  tabChanged,required TResult Function( _WordEntrySelected value)  wordEntrySelected,required TResult Function( _ToggleFullDictionaryMode value)  toggleFullDictionaryMode,required TResult Function( _SubmitGeneralFeedback value)  submitGeneralFeedback,required TResult Function( _SubmitWordReport value)  submitWordReport,required TResult Function( _ResetForm value)  resetForm,}){
final _that = this;
switch (_that) {
case _Initiated():
return initiated(_that);case _TabChanged():
return tabChanged(_that);case _WordEntrySelected():
return wordEntrySelected(_that);case _ToggleFullDictionaryMode():
return toggleFullDictionaryMode(_that);case _SubmitGeneralFeedback():
return submitGeneralFeedback(_that);case _SubmitWordReport():
return submitWordReport(_that);case _ResetForm():
return resetForm(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initiated value)?  initiated,TResult? Function( _TabChanged value)?  tabChanged,TResult? Function( _WordEntrySelected value)?  wordEntrySelected,TResult? Function( _ToggleFullDictionaryMode value)?  toggleFullDictionaryMode,TResult? Function( _SubmitGeneralFeedback value)?  submitGeneralFeedback,TResult? Function( _SubmitWordReport value)?  submitWordReport,TResult? Function( _ResetForm value)?  resetForm,}){
final _that = this;
switch (_that) {
case _Initiated() when initiated != null:
return initiated(_that);case _TabChanged() when tabChanged != null:
return tabChanged(_that);case _WordEntrySelected() when wordEntrySelected != null:
return wordEntrySelected(_that);case _ToggleFullDictionaryMode() when toggleFullDictionaryMode != null:
return toggleFullDictionaryMode(_that);case _SubmitGeneralFeedback() when submitGeneralFeedback != null:
return submitGeneralFeedback(_that);case _SubmitWordReport() when submitWordReport != null:
return submitWordReport(_that);case _ResetForm() when resetForm != null:
return resetForm(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initiated,TResult Function( FeedbackActiveTab tab)?  tabChanged,TResult Function( FeedbackWordEntry? entry)?  wordEntrySelected,TResult Function()?  toggleFullDictionaryMode,TResult Function( String category,  String message,  String? contact)?  submitGeneralFeedback,TResult Function( String issueType,  String content,  String? contact)?  submitWordReport,TResult Function()?  resetForm,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initiated() when initiated != null:
return initiated();case _TabChanged() when tabChanged != null:
return tabChanged(_that.tab);case _WordEntrySelected() when wordEntrySelected != null:
return wordEntrySelected(_that.entry);case _ToggleFullDictionaryMode() when toggleFullDictionaryMode != null:
return toggleFullDictionaryMode();case _SubmitGeneralFeedback() when submitGeneralFeedback != null:
return submitGeneralFeedback(_that.category,_that.message,_that.contact);case _SubmitWordReport() when submitWordReport != null:
return submitWordReport(_that.issueType,_that.content,_that.contact);case _ResetForm() when resetForm != null:
return resetForm();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initiated,required TResult Function( FeedbackActiveTab tab)  tabChanged,required TResult Function( FeedbackWordEntry? entry)  wordEntrySelected,required TResult Function()  toggleFullDictionaryMode,required TResult Function( String category,  String message,  String? contact)  submitGeneralFeedback,required TResult Function( String issueType,  String content,  String? contact)  submitWordReport,required TResult Function()  resetForm,}) {final _that = this;
switch (_that) {
case _Initiated():
return initiated();case _TabChanged():
return tabChanged(_that.tab);case _WordEntrySelected():
return wordEntrySelected(_that.entry);case _ToggleFullDictionaryMode():
return toggleFullDictionaryMode();case _SubmitGeneralFeedback():
return submitGeneralFeedback(_that.category,_that.message,_that.contact);case _SubmitWordReport():
return submitWordReport(_that.issueType,_that.content,_that.contact);case _ResetForm():
return resetForm();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initiated,TResult? Function( FeedbackActiveTab tab)?  tabChanged,TResult? Function( FeedbackWordEntry? entry)?  wordEntrySelected,TResult? Function()?  toggleFullDictionaryMode,TResult? Function( String category,  String message,  String? contact)?  submitGeneralFeedback,TResult? Function( String issueType,  String content,  String? contact)?  submitWordReport,TResult? Function()?  resetForm,}) {final _that = this;
switch (_that) {
case _Initiated() when initiated != null:
return initiated();case _TabChanged() when tabChanged != null:
return tabChanged(_that.tab);case _WordEntrySelected() when wordEntrySelected != null:
return wordEntrySelected(_that.entry);case _ToggleFullDictionaryMode() when toggleFullDictionaryMode != null:
return toggleFullDictionaryMode();case _SubmitGeneralFeedback() when submitGeneralFeedback != null:
return submitGeneralFeedback(_that.category,_that.message,_that.contact);case _SubmitWordReport() when submitWordReport != null:
return submitWordReport(_that.issueType,_that.content,_that.contact);case _ResetForm() when resetForm != null:
return resetForm();case _:
  return null;

}
}

}

/// @nodoc


class _Initiated implements FeedbackEvent {
  const _Initiated();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initiated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FeedbackEvent.initiated()';
}


}




/// @nodoc


class _TabChanged implements FeedbackEvent {
  const _TabChanged(this.tab);
  

 final  FeedbackActiveTab tab;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TabChangedCopyWith<_TabChanged> get copyWith => __$TabChangedCopyWithImpl<_TabChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TabChanged&&(identical(other.tab, tab) || other.tab == tab));
}


@override
int get hashCode {
    return Object.hash(runtimeType,tab);
}

@override
String toString() {
    return 'FeedbackEvent.tabChanged(tab: $tab)';
}


}

/// @nodoc
abstract mixin class _$TabChangedCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$TabChangedCopyWith(_TabChanged value, $Res Function(_TabChanged) _then) = __$TabChangedCopyWithImpl;
@useResult
$Res call({
 FeedbackActiveTab tab
});




}
/// @nodoc
class __$TabChangedCopyWithImpl<$Res>
    implements _$TabChangedCopyWith<$Res> {
  __$TabChangedCopyWithImpl(this._self, this._then);

  final _TabChanged _self;
  final $Res Function(_TabChanged) _then;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tab = null,}) {
  return _then(_TabChanged(
null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as FeedbackActiveTab,
  ));
}


}

/// @nodoc


class _WordEntrySelected implements FeedbackEvent {
  const _WordEntrySelected(this.entry);
  

 final  FeedbackWordEntry? entry;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WordEntrySelectedCopyWith<_WordEntrySelected> get copyWith => __$WordEntrySelectedCopyWithImpl<_WordEntrySelected>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WordEntrySelected&&(identical(other.entry, entry) || other.entry == entry));
}


@override
int get hashCode {
    return Object.hash(runtimeType,entry);
}

@override
String toString() {
    return 'FeedbackEvent.wordEntrySelected(entry: $entry)';
}


}

/// @nodoc
abstract mixin class _$WordEntrySelectedCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$WordEntrySelectedCopyWith(_WordEntrySelected value, $Res Function(_WordEntrySelected) _then) = __$WordEntrySelectedCopyWithImpl;
@useResult
$Res call({
 FeedbackWordEntry? entry
});




}
/// @nodoc
class __$WordEntrySelectedCopyWithImpl<$Res>
    implements _$WordEntrySelectedCopyWith<$Res> {
  __$WordEntrySelectedCopyWithImpl(this._self, this._then);

  final _WordEntrySelected _self;
  final $Res Function(_WordEntrySelected) _then;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? entry = freezed,}) {
  return _then(_WordEntrySelected(
freezed == entry ? _self.entry : entry // ignore: cast_nullable_to_non_nullable
as FeedbackWordEntry?,
  ));
}


}

/// @nodoc


class _ToggleFullDictionaryMode implements FeedbackEvent {
  const _ToggleFullDictionaryMode();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleFullDictionaryMode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FeedbackEvent.toggleFullDictionaryMode()';
}


}




/// @nodoc


class _SubmitGeneralFeedback implements FeedbackEvent {
  const _SubmitGeneralFeedback({required this.category, required this.message, this.contact});
  

 final  String category;
 final  String message;
 final  String? contact;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitGeneralFeedbackCopyWith<_SubmitGeneralFeedback> get copyWith => __$SubmitGeneralFeedbackCopyWithImpl<_SubmitGeneralFeedback>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitGeneralFeedback&&(identical(other.category, category) || other.category == category)&&(identical(other.message, message) || other.message == message)&&(identical(other.contact, contact) || other.contact == contact));
}


@override
int get hashCode {
    return Object.hash(runtimeType,category,message,contact);
}

@override
String toString() {
    return 'FeedbackEvent.submitGeneralFeedback(category: $category, message: $message, contact: $contact)';
}


}

/// @nodoc
abstract mixin class _$SubmitGeneralFeedbackCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$SubmitGeneralFeedbackCopyWith(_SubmitGeneralFeedback value, $Res Function(_SubmitGeneralFeedback) _then) = __$SubmitGeneralFeedbackCopyWithImpl;
@useResult
$Res call({
 String category, String message, String? contact
});




}
/// @nodoc
class __$SubmitGeneralFeedbackCopyWithImpl<$Res>
    implements _$SubmitGeneralFeedbackCopyWith<$Res> {
  __$SubmitGeneralFeedbackCopyWithImpl(this._self, this._then);

  final _SubmitGeneralFeedback _self;
  final $Res Function(_SubmitGeneralFeedback) _then;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,Object? message = null,Object? contact = freezed,}) {
  return _then(_SubmitGeneralFeedback(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _SubmitWordReport implements FeedbackEvent {
  const _SubmitWordReport({required this.issueType, required this.content, this.contact});
  

 final  String issueType;
 final  String content;
 final  String? contact;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitWordReportCopyWith<_SubmitWordReport> get copyWith => __$SubmitWordReportCopyWithImpl<_SubmitWordReport>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitWordReport&&(identical(other.issueType, issueType) || other.issueType == issueType)&&(identical(other.content, content) || other.content == content)&&(identical(other.contact, contact) || other.contact == contact));
}


@override
int get hashCode {
    return Object.hash(runtimeType,issueType,content,contact);
}

@override
String toString() {
    return 'FeedbackEvent.submitWordReport(issueType: $issueType, content: $content, contact: $contact)';
}


}

/// @nodoc
abstract mixin class _$SubmitWordReportCopyWith<$Res> implements $FeedbackEventCopyWith<$Res> {
  factory _$SubmitWordReportCopyWith(_SubmitWordReport value, $Res Function(_SubmitWordReport) _then) = __$SubmitWordReportCopyWithImpl;
@useResult
$Res call({
 String issueType, String content, String? contact
});




}
/// @nodoc
class __$SubmitWordReportCopyWithImpl<$Res>
    implements _$SubmitWordReportCopyWith<$Res> {
  __$SubmitWordReportCopyWithImpl(this._self, this._then);

  final _SubmitWordReport _self;
  final $Res Function(_SubmitWordReport) _then;

/// Create a copy of FeedbackEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? issueType = null,Object? content = null,Object? contact = freezed,}) {
  return _then(_SubmitWordReport(
issueType: null == issueType ? _self.issueType : issueType // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _ResetForm implements FeedbackEvent {
  const _ResetForm();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'FeedbackEvent.resetForm()';
}


}




/// @nodoc
mixin _$FeedbackState {

 FeedbackActiveTab get activeTab; bool get isLoading; bool get isSubmitting; bool get isSubmittedSuccess; bool get isFullDictionaryMode; String? get submittedReportedWord; FeedbackWordEntry? get selectedWordEntry; List<FeedbackWordEntry> get historyWords; List<FeedbackWordEntry> get allWords; String? get errorMessage;
/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackStateCopyWith<FeedbackState> get copyWith => _$FeedbackStateCopyWithImpl<FeedbackState>(this as FeedbackState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FeedbackState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackState&&(identical(other.activeTab, _this.activeTab) || other.activeTab == _this.activeTab)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isSubmitting, _this.isSubmitting) || other.isSubmitting == _this.isSubmitting)&&(identical(other.isSubmittedSuccess, _this.isSubmittedSuccess) || other.isSubmittedSuccess == _this.isSubmittedSuccess)&&(identical(other.isFullDictionaryMode, _this.isFullDictionaryMode) || other.isFullDictionaryMode == _this.isFullDictionaryMode)&&(identical(other.submittedReportedWord, _this.submittedReportedWord) || other.submittedReportedWord == _this.submittedReportedWord)&&(identical(other.selectedWordEntry, _this.selectedWordEntry) || other.selectedWordEntry == _this.selectedWordEntry)&&const DeepCollectionEquality().equals(other.historyWords, _this.historyWords)&&const DeepCollectionEquality().equals(other.allWords, _this.allWords)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage));
}


@override
int get hashCode {
  final _this = this as FeedbackState;
  return Object.hash(runtimeType,_this.activeTab,_this.isLoading,_this.isSubmitting,_this.isSubmittedSuccess,_this.isFullDictionaryMode,_this.submittedReportedWord,_this.selectedWordEntry,const DeepCollectionEquality().hash(_this.historyWords),const DeepCollectionEquality().hash(_this.allWords),_this.errorMessage);
}

@override
String toString() {
  final _this = this as FeedbackState;
  return 'FeedbackState(activeTab: ${_this.activeTab}, isLoading: ${_this.isLoading}, isSubmitting: ${_this.isSubmitting}, isSubmittedSuccess: ${_this.isSubmittedSuccess}, isFullDictionaryMode: ${_this.isFullDictionaryMode}, submittedReportedWord: ${_this.submittedReportedWord}, selectedWordEntry: ${_this.selectedWordEntry}, historyWords: ${_this.historyWords}, allWords: ${_this.allWords}, errorMessage: ${_this.errorMessage})';
}


}

/// @nodoc
abstract mixin class $FeedbackStateCopyWith<$Res>  {
  factory $FeedbackStateCopyWith(FeedbackState value, $Res Function(FeedbackState) _then) = _$FeedbackStateCopyWithImpl;
@useResult
$Res call({
 FeedbackActiveTab activeTab, bool isLoading, bool isSubmitting, bool isSubmittedSuccess, bool isFullDictionaryMode, String? submittedReportedWord, FeedbackWordEntry? selectedWordEntry, List<FeedbackWordEntry> historyWords, List<FeedbackWordEntry> allWords, String? errorMessage
});




}
/// @nodoc
class _$FeedbackStateCopyWithImpl<$Res>
    implements $FeedbackStateCopyWith<$Res> {
  _$FeedbackStateCopyWithImpl(this._self, this._then);

  final FeedbackState _self;
  final $Res Function(FeedbackState) _then;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeTab = null,Object? isLoading = null,Object? isSubmitting = null,Object? isSubmittedSuccess = null,Object? isFullDictionaryMode = null,Object? submittedReportedWord = freezed,Object? selectedWordEntry = freezed,Object? historyWords = null,Object? allWords = null,Object? errorMessage = freezed,}) {
  return _then(FeedbackState(
activeTab: null == activeTab ? _self.activeTab : activeTab // ignore: cast_nullable_to_non_nullable
as FeedbackActiveTab,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSubmittedSuccess: null == isSubmittedSuccess ? _self.isSubmittedSuccess : isSubmittedSuccess // ignore: cast_nullable_to_non_nullable
as bool,isFullDictionaryMode: null == isFullDictionaryMode ? _self.isFullDictionaryMode : isFullDictionaryMode // ignore: cast_nullable_to_non_nullable
as bool,submittedReportedWord: freezed == submittedReportedWord ? _self.submittedReportedWord : submittedReportedWord // ignore: cast_nullable_to_non_nullable
as String?,selectedWordEntry: freezed == selectedWordEntry ? _self.selectedWordEntry : selectedWordEntry // ignore: cast_nullable_to_non_nullable
as FeedbackWordEntry?,historyWords: null == historyWords ? _self.historyWords : historyWords // ignore: cast_nullable_to_non_nullable
as List<FeedbackWordEntry>,allWords: null == allWords ? _self.allWords : allWords // ignore: cast_nullable_to_non_nullable
as List<FeedbackWordEntry>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackState].
extension FeedbackStatePatterns on FeedbackState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackState value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackState value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeedbackActiveTab activeTab,  bool isLoading,  bool isSubmitting,  bool isSubmittedSuccess,  bool isFullDictionaryMode,  String? submittedReportedWord,  FeedbackWordEntry? selectedWordEntry,  List<FeedbackWordEntry> historyWords,  List<FeedbackWordEntry> allWords,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackState() when $default != null:
return $default(_that.activeTab,_that.isLoading,_that.isSubmitting,_that.isSubmittedSuccess,_that.isFullDictionaryMode,_that.submittedReportedWord,_that.selectedWordEntry,_that.historyWords,_that.allWords,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeedbackActiveTab activeTab,  bool isLoading,  bool isSubmitting,  bool isSubmittedSuccess,  bool isFullDictionaryMode,  String? submittedReportedWord,  FeedbackWordEntry? selectedWordEntry,  List<FeedbackWordEntry> historyWords,  List<FeedbackWordEntry> allWords,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _FeedbackState():
return $default(_that.activeTab,_that.isLoading,_that.isSubmitting,_that.isSubmittedSuccess,_that.isFullDictionaryMode,_that.submittedReportedWord,_that.selectedWordEntry,_that.historyWords,_that.allWords,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeedbackActiveTab activeTab,  bool isLoading,  bool isSubmitting,  bool isSubmittedSuccess,  bool isFullDictionaryMode,  String? submittedReportedWord,  FeedbackWordEntry? selectedWordEntry,  List<FeedbackWordEntry> historyWords,  List<FeedbackWordEntry> allWords,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackState() when $default != null:
return $default(_that.activeTab,_that.isLoading,_that.isSubmitting,_that.isSubmittedSuccess,_that.isFullDictionaryMode,_that.submittedReportedWord,_that.selectedWordEntry,_that.historyWords,_that.allWords,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _FeedbackState implements FeedbackState {
  const _FeedbackState({this.activeTab = FeedbackActiveTab.general, this.isLoading = true, this.isSubmitting = false, this.isSubmittedSuccess = false, this.isFullDictionaryMode = false, this.submittedReportedWord, this.selectedWordEntry,  List<FeedbackWordEntry> historyWords = const [],  List<FeedbackWordEntry> allWords = const [], this.errorMessage}): _historyWords = historyWords,_allWords = allWords;
  

@override@JsonKey() final  FeedbackActiveTab activeTab;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isSubmitting;
@override@JsonKey() final  bool isSubmittedSuccess;
@override@JsonKey() final  bool isFullDictionaryMode;
@override final  String? submittedReportedWord;
@override final  FeedbackWordEntry? selectedWordEntry;
 final  List<FeedbackWordEntry> _historyWords;
@override@JsonKey() List<FeedbackWordEntry> get historyWords {
  if (_historyWords is EqualUnmodifiableListView) return _historyWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_historyWords);
}

 final  List<FeedbackWordEntry> _allWords;
@override@JsonKey() List<FeedbackWordEntry> get allWords {
  if (_allWords is EqualUnmodifiableListView) return _allWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allWords);
}

@override final  String? errorMessage;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackStateCopyWith<_FeedbackState> get copyWith => __$FeedbackStateCopyWithImpl<_FeedbackState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackState&&(identical(other.activeTab, activeTab) || other.activeTab == activeTab)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSubmittedSuccess, isSubmittedSuccess) || other.isSubmittedSuccess == isSubmittedSuccess)&&(identical(other.isFullDictionaryMode, isFullDictionaryMode) || other.isFullDictionaryMode == isFullDictionaryMode)&&(identical(other.submittedReportedWord, submittedReportedWord) || other.submittedReportedWord == submittedReportedWord)&&(identical(other.selectedWordEntry, selectedWordEntry) || other.selectedWordEntry == selectedWordEntry)&&const DeepCollectionEquality().equals(other.historyWords, _historyWords)&&const DeepCollectionEquality().equals(other.allWords, _allWords)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,activeTab,isLoading,isSubmitting,isSubmittedSuccess,isFullDictionaryMode,submittedReportedWord,selectedWordEntry,const DeepCollectionEquality().hash(_historyWords),const DeepCollectionEquality().hash(_allWords),errorMessage);
}

@override
String toString() {
    return 'FeedbackState(activeTab: $activeTab, isLoading: $isLoading, isSubmitting: $isSubmitting, isSubmittedSuccess: $isSubmittedSuccess, isFullDictionaryMode: $isFullDictionaryMode, submittedReportedWord: $submittedReportedWord, selectedWordEntry: $selectedWordEntry, historyWords: $historyWords, allWords: $allWords, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$FeedbackStateCopyWith<$Res> implements $FeedbackStateCopyWith<$Res> {
  factory _$FeedbackStateCopyWith(_FeedbackState value, $Res Function(_FeedbackState) _then) = __$FeedbackStateCopyWithImpl;
@override @useResult
$Res call({
 FeedbackActiveTab activeTab, bool isLoading, bool isSubmitting, bool isSubmittedSuccess, bool isFullDictionaryMode, String? submittedReportedWord, FeedbackWordEntry? selectedWordEntry, List<FeedbackWordEntry> historyWords, List<FeedbackWordEntry> allWords, String? errorMessage
});




}
/// @nodoc
class __$FeedbackStateCopyWithImpl<$Res>
    implements _$FeedbackStateCopyWith<$Res> {
  __$FeedbackStateCopyWithImpl(this._self, this._then);

  final _FeedbackState _self;
  final $Res Function(_FeedbackState) _then;

/// Create a copy of FeedbackState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeTab = null,Object? isLoading = null,Object? isSubmitting = null,Object? isSubmittedSuccess = null,Object? isFullDictionaryMode = null,Object? submittedReportedWord = freezed,Object? selectedWordEntry = freezed,Object? historyWords = null,Object? allWords = null,Object? errorMessage = freezed,}) {
  return _then(_FeedbackState(
activeTab: null == activeTab ? _self.activeTab : activeTab // ignore: cast_nullable_to_non_nullable
as FeedbackActiveTab,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSubmittedSuccess: null == isSubmittedSuccess ? _self.isSubmittedSuccess : isSubmittedSuccess // ignore: cast_nullable_to_non_nullable
as bool,isFullDictionaryMode: null == isFullDictionaryMode ? _self.isFullDictionaryMode : isFullDictionaryMode // ignore: cast_nullable_to_non_nullable
as bool,submittedReportedWord: freezed == submittedReportedWord ? _self.submittedReportedWord : submittedReportedWord // ignore: cast_nullable_to_non_nullable
as String?,selectedWordEntry: freezed == selectedWordEntry ? _self.selectedWordEntry : selectedWordEntry // ignore: cast_nullable_to_non_nullable
as FeedbackWordEntry?,historyWords: null == historyWords ? _self._historyWords : historyWords // ignore: cast_nullable_to_non_nullable
as List<FeedbackWordEntry>,allWords: null == allWords ? _self._allWords : allWords // ignore: cast_nullable_to_non_nullable
as List<FeedbackWordEntry>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
