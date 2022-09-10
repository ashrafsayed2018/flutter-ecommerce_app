import 'package:ecommerce_wael/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/constant/app_routes.dart';
import '../data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  // page controller for slider
  late PageController pageController;
  // next page
  next();
  // on page change
  onPageChanged(int index);
}

// class to implement from OnBoardingController
class OnBoardingControllerImpl extends OnBoardingController {
  // onboarding list length
  int get onboardingListLength => onboardingList.length;

  int currentPage = 0;
  MyServices myServices = Get.find();
  @override
  next() {
    currentPage++;
    if (currentPage >= onboardingListLength - 1) {
      Get.offAllNamed(AppRoutes.login);
      myServices.sharedPreferences.setString("step", "1");
    }
    pageController.animateToPage(currentPage,
        duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
