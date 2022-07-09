import 'package:get/get.dart';

const int min = 6;
const int max = 30;

validateInput(String val, int min, int max, String type) {
  // if type username

  if (type == 'username') {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }

  // if type email
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }

  // if type phone

  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phone";
    }
  }

  // if is empty
  if (val.isEmpty) {
    return "can not be empty";
  }

  // if min

  if (val.length < min) {
    return "min character is $min";
  }

  // if max
  if (val.length > max) {
    return "max character is $max";
  }
}
