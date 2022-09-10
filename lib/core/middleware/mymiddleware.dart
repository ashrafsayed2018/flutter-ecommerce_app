import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mymiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: AppRoutes.home);
    }
    if (myServices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoutes.login);
    }

    return const RouteSettings(name: AppRoutes.onboarding);
  }
}
