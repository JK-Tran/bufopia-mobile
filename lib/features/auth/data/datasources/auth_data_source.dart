import 'package:bufopia/features/auth/data/models/account_import_data.dart';
import 'package:bufopia/features/auth/data/models/socket_ticket_data.dart';
import 'package:bufopia/features/auth/data/models/user_data.dart';
import 'package:bufopia/shared/exception/remote/remote_exception.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:bufopia/shared/model/typedef.dart';
import 'package:dio/dio.dart';
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
      decoder: (data) {
        final json = data! as JSON;
        if (json.containsKey('user')) {
          return UserData.fromJson(json['user'] as JSON);
        }
        return UserData.fromJson(json);
      },
    );
  }

  Future<UserData?> updateUserProfile({
    required String uid,
    required String displayName,
    String? avatarUrl,
    bool termsAccepted = true,
    String termsVersion = '2026-10',
  }) async {
    return _noneAuthAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/users/$uid',
      body: {
        'display_name': displayName,
        if (avatarUrl != null && avatarUrl.isNotEmpty) 'avatar_url': avatarUrl,
        'terms_accepted': termsAccepted,
        'terms_version': termsVersion,
      },
      decoder: (data) {
        final json = data! as JSON;
        if (json.containsKey('user')) {
          return UserData.fromJson(json['user'] as JSON);
        }
        return UserData.fromJson(json);
      },
    );
  }

  /// Lấy vé kết nối WebSocket tạm thời 30 giây (POST /api/session/socket-ticket)
  Future<String?> getSocketTicket({
    required String uid,
    required String path,
    String? token,
  }) async {
    final response = await _noneAuthAppServerApiClient
        .request<SocketTicketData, SocketTicketData>(
          method: RestMethod.post,
          successResponseMapperType: SuccessResponseMapperType.jsonObject,
          path: '/session/socket-ticket',
          options: Options(
            headers: {
              if (token != null && token.isNotEmpty) ...{
                'Authorization': 'Bearer $token',
                'X-Account-Token': token,
              },
            },
          ),
          body: {
            'uid': uid,
            'path': path,
          },
          decoder: (data) => SocketTicketData.fromJson(data! as JSON),
        );
    return response?.ticket;
  }

  /// Chuyển đổi / Gộp tiến độ tài khoản khách lên Google (POST /api/account/import)
  Future<AccountImportResponseData?> importAccount({
    required String idToken,
    required String sourceUid,
    String? sourceToken,
    String? action,
    String? displayName,
    int xp = 0,
    List<Map<String, dynamic>> profiles = const [],
  }) async {
    try {
      return await _noneAuthAppServerApiClient
          .request<AccountImportResponseData, AccountImportResponseData>(
            method: RestMethod.post,
            successResponseMapperType: SuccessResponseMapperType.jsonObject,
            path: '/account/import',
            options: Options(
              headers: {
                'Authorization': 'Bearer $idToken',
              },
            ),
            body: {
              'sourceUid': sourceUid,
              'sourceToken': ?sourceToken,
              'action': ?action,
              'displayName': ?displayName,
              'xp': xp,
              'profiles': profiles,
            },
            decoder: (data) =>
                AccountImportResponseData.fromJson(data! as JSON),
          );
    } on RemoteException catch (e) {
      if (e.httpErrorCode == 409) {
        final root = e.rootException;
        if (root is DioException && root.response?.data is Map) {
          return AccountImportResponseData.fromJson(
            Map<String, dynamic>.from(root.response!.data as Map),
          );
        }
        return AccountImportResponseData(
          code: 'account_exists_conflict',
          message: e.generalServerMessage,
        );
      }
      rethrow;
    } on DioException catch (e) {
      if (e.response?.statusCode == 409 && e.response?.data is Map) {
        return AccountImportResponseData.fromJson(
          Map<String, dynamic>.from(e.response!.data as Map),
        );
      }
      rethrow;
    }
  }
}
