part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoggedIn,
    @Default(false) bool isGoogleLinked,
    @Default(false) bool isLoading,
    User? currentUser,
    String? errorMessage,
    AccountConflict? conflict,
    String? pendingIdToken,
  }) = _AuthState;

  const AuthState._();

  bool get isGuest => !isGoogleLinked;
}
