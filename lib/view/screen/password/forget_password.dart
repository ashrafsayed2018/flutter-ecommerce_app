import 'package:ecommerce_wael/controller/password/forget_password_controller.dart';
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

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForegetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "forget password".tr,
          style: Theme.of(context).textTheme.headline2!.copyWith(
                color: AppColor.grey,
              ),
        ),
      ),
      body: GetBuilder<ForegetPasswordControllerImpl>(
        builder: (forgetPasswordController) => forgetPasswordController
                    .statusRequest ==
                StatusRequest.loading
            ? Center(
                child: Lottie.asset(AppImageAsset.loading),
              )
            : Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Form(
                  key: forgetPasswordController.formstate,
                  child: ListView(
                    children: [
                      CustomTitleTextAuth(
                          title: "check email ",
                          titleStyle:
                              Theme.of(context).textTheme.headline1!.copyWith(
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w500,
                                  )),
                      const CustomBodyTextAuth(text: "forget password body"),
                      const SizedBox(
                        height: 25,
                      ),
                      CustomTextFormAuth(
                        valid: (val) {
                          return validateInput(val!, min, max, "email");
                        },
                        controller: forgetPasswordController.emailController,
                        hintText: 'enter your email'.tr,
                        labelText: 'email'.tr,
                        icon: Icons.email_outlined,
                        isNumber: false,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomButtonAuth(
                        onPressed: () {
                          forgetPasswordController.checkEmail();
                        },
                        text: "check",
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
