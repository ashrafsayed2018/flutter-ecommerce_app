import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RegisterController extends GetxController {
  register();
}

class RegisterControllerImpl extends RegisterController {
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  bool isshowPassword = true;

  // toggle show password
  void toggleShowPassword() {
    isshowPassword = !isshowPassword;
    update();
  }

  @override
  register() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRoutes.verifyCode);
    }
  }

  @override
  void onInit() {
    usernameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();

    super.dispose();
  }
}
