import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToForgetPassword();
}

class LoginControllerImpl extends LoginController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  bool isshowPassword = true;

  // toggle show password
  void toggleShowPassword() {
    isshowPassword = !isshowPassword;
    update();
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRoutes.verifyCode);
    }
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }
}
