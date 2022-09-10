import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/core/function/error_dialog.dart';
import 'package:ecommerce_wael/data/datasource/remote/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/function/handling_data.dart';

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

  RegisterData registerData = RegisterData(Get.find());

  StatusRequest? statusRequest;
  List data = [];

  // toggle show password
  void toggleShowPassword() {
    isshowPassword = !isshowPassword;
    update();
  }

  @override
  register() async {
    var formdata = formstate.currentState;

    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await registerData.register(
        usernameController.text,
        emailController.text,
        passwordController.text,
        phoneController.text,
      );
      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoutes.verifyCodeSignUp, arguments: {
            'email': emailController.text,
          });
        }

        update();
      } else {
        errorDialog("خطا");
        update();
      }
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
