import 'package:ecommerce_wael/core/class/status_request.dart';
import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/data/datasource/remote/foregetPassword/send_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/function/error_dialog.dart';
import '../../core/function/handling_data.dart';

abstract class ForegetPasswordController extends GetxController {
  checkEmail();
}

class ForegetPasswordControllerImpl extends ForegetPasswordController {
  late TextEditingController emailController;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  SendResetPasswordEmailData sendResetPasswordEmailData =
      SendResetPasswordEmailData(Get.find());

  StatusRequest? statusRequest;

  @override
  checkEmail() async {
    var formdata = formstate.currentState;

    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();

      var response = await sendResetPasswordEmailData.sendResetEmail(
        emailController.text,
      );

      statusRequest = handlingData(response);

      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          Get.offNamed(AppRoutes.verifyCode,
              arguments: {"email": emailController.text});
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
}
