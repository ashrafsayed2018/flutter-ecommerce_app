import 'package:ecommerce_wael/controller/onboarding_controller.dart';
import 'package:ecommerce_wael/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static/static.dart';

class OnBoardingSlider extends GetView<OnBoardingControllerImpl> {
  const OnBoardingSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      itemCount: onboardingList.length,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemBuilder: ((context, index) {
        return Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              onboardingList[index].title!,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              onboardingList[index].image!,
              fit: BoxFit.cover,
              height: 150,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(20),
              child: Text(
                onboardingList[index].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: AppColor.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
