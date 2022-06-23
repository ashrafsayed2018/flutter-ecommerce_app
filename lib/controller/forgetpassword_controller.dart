import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForegetPasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();
}

class ForegetPasswordControllerImpl extends ForegetPasswordController {
  late TextEditingController emailController;

  @override
  checkEmail() {}

  @override
  void onInit() {
    emailController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  goToVerifyCode() {
    Get.offNamed(AppRoutes.verifyCode);
  }
}
