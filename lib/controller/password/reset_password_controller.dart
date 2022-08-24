import 'package:ecommerce_wael/core/class/status_request.dart';
import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/data/datasource/remote/foregetPassword/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/function/error_dialog.dart';
import '../../core/function/handling_data.dart';

abstract class ResetPasswordController extends GetxController {
  goToSuccessResetPassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController passwordController;
  late TextEditingController confiramtionPasswordController;
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest? statusRequest;
  String? email;

  bool isshowPassword = true;

  // toggle show password
  void toggleShowPassword() {
    isshowPassword = !isshowPassword;
    update();
  }

  @override
  void onInit() {
    passwordController = TextEditingController();
    confiramtionPasswordController = TextEditingController();
    email = Get.arguments['email'];

    super.onInit();
  }

  @override
  void dispose() {
    passwordController.dispose();
    confiramtionPasswordController.dispose();

    super.dispose();
  }

  @override
  goToSuccessResetPassword() async {
    if (passwordController.text != confiramtionPasswordController.text) {
      return Get.defaultDialog(
          title: "خطاء", content: const Text("كلمة المرور غير متطابقه"));
    }
    var formdata = formstate.currentState;

    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await resetPasswordData.resetPassword(
        passwordController.text,
        confiramtionPasswordController.text,
        email!,
      );

      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoutes.successRestPassword);
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
