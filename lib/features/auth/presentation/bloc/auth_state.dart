part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoggedIn,
    @Default(false) bool isLoading,
    User? currentUser,
    String? errorMessage,
  }) = _AuthState;
}
