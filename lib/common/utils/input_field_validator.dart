import 'package:amplify_core/amplify_core.dart';
import 'package:phone_number/phone_number.dart';
import 'package:polygon/common/utils/specific_field_val.dart';
import 'package:string_validator/string_validator.dart';

Future<bool> validateInput(
  SpecificFieldValueType specificValueType,
  String value,
) async {
  if (value == '') {
    return false;
  }

  switch (specificValueType) {
    case SpecificFieldValueType.email:
      return isEmail(value);
    case SpecificFieldValueType.password:
      // TODO: add validate logic for password
      return true;
    case SpecificFieldValueType.phonenumber:

      // DEBUG
      safePrint(
          "validation result: ${await PhoneNumberUtil().validate(value)}");
      return await PhoneNumberUtil().validate(value); 
       
    case SpecificFieldValueType.name:
      return isAlpha(value.replaceAll(RegExp(r"\s+"), ""));
    case SpecificFieldValueType.nickname:
      return isAlphanumeric(value.replaceAll(RegExp(r"\s+"), "")) || value == '';
    default:
      return true;
  }
}

bool isValidEmail(String email) {
  return RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(email);
}

