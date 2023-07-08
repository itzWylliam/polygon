import 'package:amplify_core/amplify_core.dart';
import 'package:phone_number/phone_number.dart';
import 'package:polygon/common/utils/specific_field_val.dart';

Future<bool> validateInput(SpecificFieldValueType specificValueType, String value, {String? countryCode}) async {

  if (value == '') {
    return false;
  }

  switch (specificValueType) {
      case SpecificFieldValueType.email:
        return isValidEmail(value);
      case SpecificFieldValueType.password:
        // TODO: add validate logic for password
        return true;
      case SpecificFieldValueType.phonenumber:
        if (countryCode == null) {
          safePrint("Invalid Country Dial Code: No Input");
          return false;
        } else if (await PhoneNumberUtil().validate(value, regionCode: countryCode) == false) {
          // safePrint(countryCode + value);
          safePrint("validation result: ${await PhoneNumberUtil().validate(value, regionCode: countryCode)}");
          return false;
        } else {
          return false;
        }
      default:
        return true;
    }
}

bool isValidEmail(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }