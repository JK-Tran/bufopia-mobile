class ValidationUtils {
  const ValidationUtils._();

  static bool isValidPassword(String password) {
    return password.length >= 6 && password.isNotEmpty;
  }

  static bool isValidSimplePassword(String password) {
    return password.length >= 8 &&
        password.isNotEmpty &&
        !(password.compareTo('123456') == 0) &&
        !(password.compareTo('1234567') == 0) &&
        !(password.compareTo('12345678') == 0) &&
        !(password.compareTo('123456789') == 0) &&
        !(password.compareTo('1234567890') == 0);
  }

  static bool isValidNewPassword(String password) {
    final hasUppercase = password.contains(RegExp('[A-Z]'));
    final hasLowercase = password.contains(RegExp('[a-z]'));
    final hasDigits = password.contains(RegExp('[0-9]'));
    final hasSpecialCharacters = password.contains(
      RegExp('[!@#%^&*(),.?":{}|<>]'),
    );
    final hasMinLength = password.length > 8;

    return hasUppercase &&
        hasLowercase &&
        hasDigits &&
        hasSpecialCharacters &&
        hasMinLength;
  }

  static bool isValidOtpCode(String password) {
    return password.isNotEmpty && password.length == 6;
  }

  /// Check if a string is empty phone number.
  /// Return true if it is not empty.
  static bool isEmptyPhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return false;
    }

    return true;
  }

  /// Check if a string is valid phone number.
  /// Return true if it is valid.
  static bool isValidPhoneNumber(String phoneNumber) {
    if (!RegExp(r'(^(?:[+0]9)?[0-9]{10,11}$)').hasMatch(phoneNumber.trim())) {
      return false;
    }

    return true;
  }

  /// Check if a string is empty email.
  /// Return true if it is valid.
  static bool isEmptyEmail(String email) {
    if (email.isEmpty) {
      return false;
    }

    return true;
  }

  /// Check if a string is a valid email.
  /// Return true if it is valid.
  static bool isValidEmail(String email) {
    if (!RegExp(
      r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
    ).hasMatch(email.trim())) {
      return false;
    }

    return true;
  }

  /// Check if a string is empty date time.
  /// Return true if it is valid.
  static bool isEmptyDateTime(String dateTime) {
    if (dateTime.isEmpty) {
      return false;
    }

    return true;
  }

  /// Check if a string is a valid date time.
  /// Return true if it is valid.
  static bool isValidDateTime(String dateTime) {
    if (!RegExp(
      r'^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$',
    ).hasMatch(dateTime)) {
      return false;
    }

    return true;
  }

  /// Check if a string is alphanumeric.
  /// Return true if it is valid.
  static bool isAlphanumeric(String text) {
    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(text.trim())) {
      return false;
    }

    return true;
  }

  /// Check if string is link
  /// Return true if it is valid
  static bool isLink(String text) {
    return Uri.parse(text).isAbsolute;
  }
}
