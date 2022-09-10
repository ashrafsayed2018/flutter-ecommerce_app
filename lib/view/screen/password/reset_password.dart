import 'package:ecommerce_wael/controller/password/reset_password_controller.dart';
import 'package:ecommerce_wael/core/class/status_request.dart';
import 'package:ecommerce_wael/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../core/constant/app_color.dart';
import '../../../../core/function/validate_input.dart';
import '../../widget/auth/custom_body_text_auth.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_form_auth.dart';
import '../../widget/auth/custom_title_text_auth.dart';

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
      body: GetBuilder<ResetPasswordControllerImpl>(
          builder: (resetpasswordController) {
        return resetPasswordController.statusRequest == StatusRequest.loading
            ? Center(
                child: Lottie.asset(AppImageAsset.loading),
              )
            : Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Form(
                  key: resetpasswordController.formstate,
                  child: ListView(
                    children: [
                      CustomTitleTextAuth(
                          title: "reset your password",
                          titleStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
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
                        obscureText: resetPasswordController.isshowPassword,
                        ontTapIcon: () {
                          resetPasswordController.toggleShowPassword();
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextFormAuth(
                        valid: (val) {
                          return validateInput(val!, min, max, "password");
                        },
                        controller: resetPasswordController
                            .confiramtionPasswordController,
                        hintText: 'confirm the new password'.tr,
                        labelText: 'password'.tr,
                        icon: Icons.lock_outline,
                        isNumber: false,
                        obscureText: resetPasswordController.isshowPassword,
                        ontTapIcon: () {
                          resetPasswordController.toggleShowPassword();
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomButtonAuth(
                        onPressed: () {
                          // String email = Get.arguments['email'];

                          resetPasswordController.goToSuccessResetPassword();
                        },
                        text: "save",
                      ),
                    ],
                  ),
                ),
              );
      }),
    );
  }
}
