import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';

class CustomButton extends GetView<OnBoardingControllerImpl> {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColor.primary,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      onPressed: () {
        controller.next();
      },
      child: const Text(
        "continue",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
