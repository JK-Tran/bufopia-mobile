import 'package:bufopia/shared/exception/base/app_exception.dart';

typedef ExceptionMapper<T extends AppException> = T Function(Object? exception);
