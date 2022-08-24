import 'package:ecommerce_wael/controller/auth/success_reset_password_controller.dart';
import 'package:ecommerce_wael/view/widget/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessRestPassword extends StatelessWidget {
  const SuccessRestPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImpl successResetPasswordController =
        Get.put(SuccessResetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(title: const Text("success reset password")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Icon(
            Icons.check_circle_outline_outlined,
            size: 160,
            color: Colors.green,
          ),
          const Text("you are successfully reset password "),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 2 / 3,
            child: CustomButtonAuth(
                text: "go to login",
                onPressed: () {
                  successResetPasswordController.goToLogin();
                }),
          )
        ]),
      ),
    );
  }
}
