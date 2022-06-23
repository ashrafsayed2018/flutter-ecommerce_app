import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEamilContorller extends GetxController {
  checkEmail();
  goToSuccessRegister();
}

class CheckEamilContorllerImpl extends CheckEamilContorller {
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
  goToSuccessRegister() {
    Get.offNamed(AppRoutes.successRegister);
  }
}
