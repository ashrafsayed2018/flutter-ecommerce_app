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
  @override
  next() {
    currentPage++;
    if (currentPage >= onboardingListLength) {
      Get.offAllNamed(AppRoutes.language);
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
