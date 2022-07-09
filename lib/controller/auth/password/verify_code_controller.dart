import 'package:get/get.dart';

import '../../../core/constant/app_routes.dart';

abstract class VerifyCodeController extends GetxController {
  checkOTPCode();
  goToSuccess();
}

class VerifyCodeControllerImpl extends VerifyCodeController {
  late String verifyCode;
  @override
  checkOTPCode() {}

  @override
  goToSuccess() {
    Get.offNamed(AppRoutes.successSignUp);
  }
}
