import 'package:bufopia/shared/exception/remote/remote_exception.dart';
import 'package:bufopia/shared/infrastructure/data/api/middleware/base_interceptor.dart';
import 'package:bufopia/shared/services/network/network_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ConnectivityInterceptor extends BaseInterceptor {
  ConnectivityInterceptor(this._networkInfo);

  final NetworkService _networkInfo;

  @override
  int get priority => BaseInterceptor.connectivityPriority;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final isConnected = await _networkInfo.isConnected;
    if (!isConnected) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: const RemoteException(kind: RemoteExceptionKind.noInternet),
        ),
      );
    }
    return super.onRequest(options, handler);
  }
}
