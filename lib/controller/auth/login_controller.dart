import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/core/function/error_dialog.dart';
import 'package:ecommerce_wael/data/datasource/remote/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/function/handling_data.dart';

abstract class LoginController extends GetxController {
  login();
  goToForgetPassword();
}

class LoginControllerImpl extends LoginController {
  LoginData loginData = LoginData(Get.find());
  late TextEditingController emailController;
  late TextEditingController passwordController;

  StatusRequest? statusRequest;

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  bool isshowPassword = true;

  // toggle show password
  void toggleShowPassword() {
    isshowPassword = !isshowPassword;
    update();
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      var formdata = formstate.currentState;

      if (formdata!.validate()) {
        statusRequest = StatusRequest.loading;
        update();

        var response = await loginData.login(
          emailController.text,
          passwordController.text,
        );

        statusRequest = handlingData(response);

        if (statusRequest == StatusRequest.success) {
          if (response['status'] == "success") {
            Get.offNamed(AppRoutes.home);
          }

          update();
        } else if (statusRequest == StatusRequest.error) {
          errorDialog(response['message']);

          update();
        } else {
          update();
        }
      }
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
