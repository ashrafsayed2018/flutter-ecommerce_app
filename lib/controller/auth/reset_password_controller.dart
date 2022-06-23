import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController passwordController;
  late TextEditingController confiramtionPasswordController;

  @override
  resetPassword() {}

  @override
  void onInit() {
    passwordController = TextEditingController();
    confiramtionPasswordController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    passwordController.dispose();
    confiramtionPasswordController.dispose();

    super.dispose();
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoutes.successRestPassword);
  }
}
