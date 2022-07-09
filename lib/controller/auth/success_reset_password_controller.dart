import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToLogin();
}

class SuccessResetPasswordControllerImpl
    extends SuccessResetPasswordController {
  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void dispose() {
    super.dispose();
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
  }
}
