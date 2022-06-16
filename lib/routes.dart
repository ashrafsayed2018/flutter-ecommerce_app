import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/view/screen/auth/register.dart';
import 'package:flutter/material.dart';

import 'view/screen/auth/login.dart';
import 'view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.home: (context) => const OnBoarding(),
  AppRoutes.login: (context) => const Login(),
  AppRoutes.register: (context) => const Register(),
};
