import 'package:amplify_core/amplify_core.dart';
import 'package:phone_number/phone_number.dart';
import 'package:polygon/common/utils/specific_field_val.dart';
import 'package:string_validator/string_validator.dart';

Future<bool> validateInput(
  SpecificFieldValueType specificValueType,
  String value,
) async {
  if (specificValueType != SpecificFieldValueType.nickname && value == '') {
    return false;
  }

  switch (specificValueType) {
    case SpecificFieldValueType.email:
      return isEmail(value);
    case SpecificFieldValueType.password:
      return isAcceptablePassword(value);
    case SpecificFieldValueType.phonenumber:
      return await PhoneNumberUtil().validate(value);

    case SpecificFieldValueType.name:
      return isAlpha(value.replaceAll(RegExp(r"\s+"), ""));
    case SpecificFieldValueType.nickname:
      return isAlphanumeric(value.replaceAll(RegExp(r"\s+"), ""));
    default:
      return true;
  }
}

bool isValidEmail(String email) {
  return RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);
}

bool isAcceptablePassword(String password) {
  return (password.length >= 6 &&
      password.length <= 99 &&
      password.contains(RegExp(r'[A-Z]')) &&
      password.contains(RegExp(r'[a-z]')) &&
      password.contains(RegExp(r'[0-9]')) &&
      // @ # % &  :  _ ~
      (password.contains("@") ||
          password.contains("#") ||
          password.contains("%") ||
          password.contains("&") ||
          password.contains(":") ||
          password.contains("_") ||
          password.contains("~")));
}
