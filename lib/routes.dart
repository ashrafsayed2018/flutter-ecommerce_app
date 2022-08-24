import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/view/screen/auth/register.dart';
import 'package:ecommerce_wael/view/screen/auth/success_register.dart';
import 'package:ecommerce_wael/view/screen/home.dart';
import 'package:ecommerce_wael/view/screen/language.dart';
import 'package:ecommerce_wael/view/screen/password/forget_password.dart';
import 'package:ecommerce_wael/view/screen/password/reset_password.dart';
import 'package:ecommerce_wael/view/screen/password/success_reset_passsword.dart';
import 'package:ecommerce_wael/view/screen/password/verify_code.dart';
import 'package:get/get.dart';
import 'core/middleware/mymiddleware.dart';
import 'view/screen/auth/login.dart';
import 'view/screen/auth/verify_code_sign_up.dart';
import 'view/screen/onboarding.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language(), middlewares: [
    Mymiddleware(),
  ]),
  // GetPage(name: "/", page: () => const TestView()),
  GetPage(name: AppRoutes.register, page: () => const Register()),
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.home, page: () => const Home()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(
    name: AppRoutes.successRestPassword,
    page: () => const SuccessRestPassword(),
  ),
  GetPage(name: AppRoutes.successSignUp, page: () => const SuccessRegister()),
  GetPage(
      name: AppRoutes.verifyCodeSignUp, page: () => const VerifyCodeSignUp()),
  GetPage(name: AppRoutes.language, page: () => const Language()),
  GetPage(name: AppRoutes.onboarding, page: () => const OnBoarding()),
];
