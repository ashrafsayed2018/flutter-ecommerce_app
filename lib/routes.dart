import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/view/screen/auth/forget_password.dart';
import 'package:ecommerce_wael/view/screen/auth/register.dart';
import 'package:ecommerce_wael/view/screen/auth/reset_password.dart';
import 'package:ecommerce_wael/view/screen/auth/verify_code.dart';
import 'package:ecommerce_wael/view/screen/language.dart';
import 'package:flutter/material.dart';

import 'view/screen/auth/login.dart';
import 'view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // on boarding
  AppRoutes.home: (context) => const OnBoarding(),

  // auth routes
  AppRoutes.login: (context) => const Login(),
  AppRoutes.register: (context) => const Register(),
  AppRoutes.forgetPassword: (context) => const ForgetPassword(),
  AppRoutes.verifyCode: (context) => const VerifyCode(),
  AppRoutes.resetPassword: (context) => const ResetPassword(),
  // language route
  AppRoutes.language: (context) => const Language(),

  //
};
