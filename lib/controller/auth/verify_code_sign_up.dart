import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkEmail();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImpl extends VerifyCodeSignUpController {
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
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successSignUp);
  }
}
