import 'package:ecommerce_wael/controller/auth/login_controller.dart';
import 'package:ecommerce_wael/controller/auth/password/forget_password_controller.dart';
import 'package:ecommerce_wael/controller/auth/register_controller.dart';
import 'package:ecommerce_wael/controller/auth/success_signup_controller.dart';
import 'package:get/get.dart';

import 'controller/auth/password/verify_code_controller.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginControllerImpl(), fenix: true);
    Get.lazyPut(() => RegisterControllerImpl(), fenix: true);
    Get.lazyPut(() => VerifyCodeControllerImpl(), fenix: true);
    Get.lazyPut(() => SuccessSignUpControllerImpl(), fenix: true);
    Get.lazyPut(() => ForegetPasswordControllerImpl());
  }
}
