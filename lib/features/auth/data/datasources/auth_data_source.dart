import 'package:bufopia/features/auth/data/models/user_data.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:bufopia/shared/model/typedef.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthDataSource {
  AuthDataSource(this._noneAuthAppServerApiClient);

  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;

  Future<UserData?> getUserInfo({required String uid}) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/users/$uid',
      decoder: (data) => UserData.fromJson((data! as JSON)['user'] as JSON),
    );
  }

  Future<UserData?> updateUserProfile({
    required String uid,
    required String displayName,
    String? avatarUrl,
  }) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.put,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/users/$uid',
      body: {
        'display_name': displayName,
        'avatar_url': ?avatarUrl,
      },
      decoder: (data) => UserData.fromJson((data! as JSON)['user'] as JSON),
    );
  }
}
