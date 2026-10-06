import 'dart:convert';

import 'package:bufopia/features/auth/data/datasources/auth_data_source.dart';
import 'package:bufopia/features/auth/data/mapper/user_data_mapper.dart';
import 'package:bufopia/features/auth/data/models/user_data.dart';
import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:bufopia/shared/services/local_storage/app_preferences.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(
    this._dataSource,
    this._userDataMapper,
    this._appPreferences,
  );

  final AuthDataSource _dataSource;
  final UserDataMapper _userDataMapper;
  final AppPreferences _appPreferences;

  @override
  User? getCurrentUser() {
    final cached = _appPreferences.currentUser;
    if (cached != null && cached.isNotEmpty) {
      try {
        final userData = UserData.fromJson(
          json.decode(cached) as Map<String, dynamic>,
        );
        return _userDataMapper.mapToEntity(userData);
      } on Exception {
        return null;
      }
    }

    return null;
  }

  @override
  Future<bool> saveCurrentUser(User user) async {
    final data = _userDataMapper.mapToData(user);
    return _appPreferences.saveCurrentUser(json.encode(data.toJson()));
  }

  @override
  Future<void> clearCurrentUserData() => _appPreferences.clearCurrentUserData();

  @override
  Future<User> getUserInfo({required String uid}) async {
    final response = await _dataSource.getUserInfo(uid: uid);
    return _userDataMapper.mapToEntity(response);
  }

  @override
  Future<User> updateUserProfile({
    required String uid,
    required String displayName,
    String? avatarUrl,
  }) async {
    final response = await _dataSource.updateUserProfile(
      uid: uid,
      displayName: displayName,
      avatarUrl: avatarUrl,
    );
    return _userDataMapper.mapToEntity(response);
  }
}
