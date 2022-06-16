import 'package:ecommerce_wael/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static/static.dart';

class OnBoardingSlider extends GetView<OnBoardingControllerImpl> {
  const OnBoardingSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onboardingList.length,
      itemBuilder: ((context, index) {
        return Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              onboardingList[index].title!,
              style: Theme.of(context).textTheme.headline1,
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
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        );
      }),
    );
  }
}
