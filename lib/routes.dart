import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/test.dart';
import 'package:ecommerce_wael/view/screen/auth/forget_password.dart';
import 'package:ecommerce_wael/view/screen/auth/register.dart';
import 'package:ecommerce_wael/view/screen/auth/reset_password.dart';
import 'package:ecommerce_wael/view/screen/auth/success_reset_passsword.dart';
import 'package:ecommerce_wael/view/screen/auth/verify_code.dart';
import 'package:ecommerce_wael/view/screen/language.dart';
import 'package:flutter/material.dart';

import 'view/screen/auth/login.dart';
import 'view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // test page
  AppRoutes.test: (context) => const Test(),
  // on boarding
  AppRoutes.home: (context) => const OnBoarding(),

  // auth routes
  AppRoutes.login: (context) => const Login(),
  AppRoutes.register: (context) => const Register(),
  AppRoutes.forgetPassword: (context) => const ForgetPassword(),
  AppRoutes.verifyCode: (context) => const VerifyCode(),
  AppRoutes.resetPassword: (context) => const ResetPassword(),
  AppRoutes.successRestPassword: (context) => const SuccessRestPassword(),

  // language route
  AppRoutes.language: (context) => const Language(),

  //
};
