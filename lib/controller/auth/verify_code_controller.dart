import 'package:get/get.dart';

import '../../core/constant/app_routes.dart';

abstract class VerifyCodeController extends GetxController {
  checkOTPCode();
  goToResetPassword();
}

class VerifyCodeControllerImpl extends VerifyCodeController {
  late String verifyCode;
  @override
  checkOTPCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetPassword);
  }
}
