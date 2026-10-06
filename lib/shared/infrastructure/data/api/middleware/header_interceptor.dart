import 'dart:io';

import 'package:bufopia/shared/constants/server/server_request_response_constants.dart';
import 'package:bufopia/shared/helper/app_info.dart';
import 'package:bufopia/shared/infrastructure/data/api/middleware/base_interceptor.dart';
import 'package:bufopia/shared/services/device/device_auth_service.dart';
import 'package:dio/dio.dart';

import 'package:injectable/injectable.dart';

@Injectable()
class HeaderInterceptor extends BaseInterceptor {
  HeaderInterceptor(this._appInfo, this._deviceAuthService);

  Map<String, dynamic> headers = {
    'accept': 'application/json, text/plain, */*',
  };
  final AppInfo _appInfo;
  final DeviceAuthService _deviceAuthService;

  String? xAntMobile;

  String? optionalOrigin;

  @override
  int get priority => BaseInterceptor.headerPriority;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll(headers);
    if (xAntMobile != null && xAntMobile!.isNotEmpty) {
      options.headers['x-ant-mobile'] = xAntMobile;
      if (optionalOrigin != null && optionalOrigin!.isNotEmpty) {
        options.headers['Origin'] = optionalOrigin;
      }
    }
    options.headers.addAll(_userAgentClientHeader());
    options.headers.addAll(_getAppInfoHeaders());

    final secret = await _deviceAuthService.getDeviceSecret();
    if (secret.isNotEmpty && !options.headers.containsKey('Authorization')) {
      options.headers['Authorization'] = 'Bearer $secret';
    }

    handler.next(options);
  }

  Map<String, dynamic> _userAgentClientHeader() {
    return {
      ServerRequestResponseConstants.userAgentKey:
          '${Platform.operatingSystem} - ${_appInfo.versionName}',
    };
  }

  Map<String, dynamic> _getAppInfoHeaders() {
    return {
      'is-app': '1',
      ServerRequestResponseConstants.currentVersionKey: _appInfo.versionName,
      ServerRequestResponseConstants.platformKey: Platform.isAndroid
          ? 'android'
          : 'ios',
    };
  }
}
