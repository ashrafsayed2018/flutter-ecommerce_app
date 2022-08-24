import 'package:ecommerce_wael/controller/onboarding_controller.dart';
import 'package:ecommerce_wael/view/widget/onboarding/custombutton.dart';
import 'package:ecommerce_wael/view/widget/onboarding/dotscontroller.dart';
import 'package:ecommerce_wael/view/widget/onboarding/slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put<OnBoardingControllerImpl>(OnBoardingControllerImpl());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: OnBoardingSlider(),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  DotsController(),
                  SizedBox(height: 20),
                  CustomButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
