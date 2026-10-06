part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getUserInfo({String? uid}) = _GetUserInfo;
  const factory AuthEvent.updateProfile({
    required String displayName,
    String? avatarUrl,
  }) = _UpdateProfile;
  const factory AuthEvent.loggedIn(UserEntity user) = _LoggedIn;
  const factory AuthEvent.userUpdated(UserEntity user) = _UserUpdated;
  const factory AuthEvent.loggedOut() = _LoggedOut;
}
