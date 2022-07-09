// ignore_for_file: unnecessary_overrides

import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLogin();
}

class SuccessSignUpControllerImpl extends SuccessSignUpController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  goToLogin() {
    Get.offNamed(AppRoutes.login);
  }
}
