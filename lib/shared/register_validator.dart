import 'package:regal_raiment/shared/string_validator.dart';

class RegisterValidator {
  String? validatePhone(String? value) {
    return PhoneRegexValidator().isValid(value) ? '' : null;
  }

  String? validateName(String? name) {
    return name!.isEmpty ? '' : null;
  }

  String? vallidatepassword(String? password) {
    return PasswordValidator().isValid(password) ? null : '';
  }
  
}
