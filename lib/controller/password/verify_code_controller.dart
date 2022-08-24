import 'package:ecommerce_wael/core/class/status_request.dart';
import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:get/get.dart';

import '../../core/function/error_dialog.dart';
import '../../core/function/handling_data.dart';
import '../../data/datasource/remote/foregetPassword/check_code.dart';

abstract class VerifyCodeController extends GetxController {
  checkEmail();
  gotoResetPassword(String code);
}

class VerifyCodeControllerImpl extends VerifyCodeController {
  CheckCodeData checkCodeData = CheckCodeData(Get.find());

  StatusRequest? statusRequest;
  String? email;

  @override
  checkEmail() {}

  @override
  void onInit() {
    email = Get.arguments['email'];

    super.onInit();
  }

  @override
  gotoResetPassword(String code) async {
    statusRequest = StatusRequest.loading;

    update();

    var response = await checkCodeData.chekCode(
      code,
    );

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoutes.resetPassword, arguments: {"email": email});
      }
      update();
    } else if (statusRequest == StatusRequest.error) {
      errorDialog(response['message']);
      update();
    }
  }
}
