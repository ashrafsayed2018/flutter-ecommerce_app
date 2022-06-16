import 'package:ecommerce_wael/controller/onboarding_controller.dart';
import 'package:ecommerce_wael/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';

class DotsController extends StatelessWidget {
  const DotsController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImpl>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(onboardingList.length, (index) {
            return AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(milliseconds: 800),
              width: controller.currentPage == index ? 10 : 5,
              height: controller.currentPage == index ? 10 : 5,
              decoration: BoxDecoration(
                color: controller.currentPage == index
                    ? AppColor.primary
                    : AppColor.grey,
                shape: BoxShape.circle,
              ),
            );
          })
        ],
      );
    });
  }
}
