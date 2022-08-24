import 'package:ecommerce_wael/core/class/status_request.dart';
import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/core/function/error_dialog.dart';
import 'package:ecommerce_wael/data/datasource/remote/auth/verify_code_signup.dart';
import 'package:get/get.dart';

import '../../core/function/handling_data.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  goToSuccessSignUp(String code);
}

class VerifyCodeSignUpControllerImpl extends VerifyCodeSignUpController {
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());
  String? email;
  StatusRequest? statusRequest;

  @override
  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  goToSuccessSignUp(String code) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await verifyCodeSignUpData.verify(
      email!,
      code,
    );

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoutes.successSignUp);
      }
      update();
    } else if (statusRequest == StatusRequest.serverFailure) {
      errorDialog(StatusRequest.serverFailure);
      update();
    }
  }
}
