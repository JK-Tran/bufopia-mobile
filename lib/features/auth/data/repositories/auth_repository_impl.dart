import 'dart:convert';

import 'package:bufopia/features/auth/data/datasources/auth_data_source.dart';
import 'package:bufopia/features/auth/data/mapper/user_mapper.dart';
import 'package:bufopia/features/auth/data/models/user_model.dart';
import 'package:bufopia/features/auth/domain/entities/user_entity.dart';
import 'package:bufopia/features/auth/domain/repositories/auth_repository.dart';
import 'package:bufopia/shared/services/local_storage/app_preferences.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(
    this._dataSource,
    this._userMapper,
    this._appPreferences,
  );

  final AuthDataSource _dataSource;
  final UserMapper _userMapper;
  final AppPreferences _appPreferences;

  @override
  UserEntity? getCurrentUser() {
    final cached = _appPreferences.currentUser;
    if (cached != null && cached.isNotEmpty) {
      try {
        final userData = UserModel.fromJson(
          json.decode(cached) as Map<String, dynamic>,
        );
        return _userMapper.mapToEntity(userData);
      } on Exception {
        return null;
      }
    }

    return null;
  }

  @override
  Future<bool> saveCurrentUser(UserEntity user) async {
    final model = _userMapper.mapToData(user);
    return _appPreferences.saveCurrentUser(json.encode(model.toJson()));
  }

  @override
  Future<void> clearCurrentUserData() => _appPreferences.clearCurrentUserData();

  @override
  Future<UserEntity> getUserInfo({required String uid}) async {
    final response = await _dataSource.getUserInfo(uid: uid);
    return _userMapper.mapToEntity(response);
  }

  @override
  Future<UserEntity> updateUserProfile({
    required String uid,
    required String displayName,
    String? avatarUrl,
  }) async {
    final response = await _dataSource.updateUserProfile(
      uid: uid,
      displayName: displayName,
      avatarUrl: avatarUrl,
    );
    return _userMapper.mapToEntity(response);
  }
}
