import 'package:bufopia/shared/exception/base/app_exception.dart';

class ValidationException extends AppException {
  const ValidationException(this.kind) : super(AppExceptionType.validation);

  final ValidationExceptionKind kind;

  @override
  String toString() {
    return 'ValidationException: {kind: $kind}';
  }
}

enum ValidationExceptionKind {
  emptyField,
  invalidEmail,
  emptyEmail,
  invalidPassword,
  invalidNewPassword,
  invalidUserName,
  invalidPhoneNumber,
  invalidOtpCode,
  invalidDateTime,
  invalidInfomation,
  passwordsAreNotMatch,
}
