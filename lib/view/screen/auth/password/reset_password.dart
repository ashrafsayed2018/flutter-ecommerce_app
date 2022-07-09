import 'package:ecommerce_wael/controller/auth/password/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/function/validate_input.dart';
import '../../../widget/auth/custom_body_text_auth.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_form_auth.dart';
import '../../../widget/auth/custom_title_text_auth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl resetPasswordController =
        Get.put(ResetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Reset password".tr,
          style: Theme.of(context).textTheme.headline2!.copyWith(
                color: AppColor.grey,
              ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            CustomTitleTextAuth(
                title: "reset your password",
                titleStyle: Theme.of(context).textTheme.headline1!.copyWith(
                      color: AppColor.grey,
                      fontWeight: FontWeight.w500,
                    )),
            const CustomBodyTextAuth(text: "reset password body"),
            const SizedBox(
              height: 25,
            ),
            CustomTextFormAuth(
              valid: (val) {
                return validateInput(val!, min, max, "password");
              },
              controller: resetPasswordController.passwordController,
              hintText: 'enter new password'.tr,
              labelText: 'password'.tr,
              icon: Icons.lock_outline,
              isNumber: false,
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextFormAuth(
              valid: (val) {
                return validateInput(val!, min, max, "password");
              },
              controller:
                  resetPasswordController.confiramtionPasswordController,
              hintText: 'confirm the new password'.tr,
              labelText: 'password'.tr,
              icon: Icons.lock_outline,
              isNumber: false,
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButtonAuth(
              onPressed: () {
                resetPasswordController.goToSuccessResetPassword();
              },
              text: "save",
            ),
          ],
        ),
      ),
    );
  }
}
