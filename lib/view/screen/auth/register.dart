import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/register_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/function/validate_input.dart';
import '../../widget/auth/custom_body_text_auth.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_sign_up_sign_in_text.dart';
import '../../widget/auth/custom_text_form_auth.dart';
import '../../widget/auth/custom_title_text_auth.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "sign up".tr,
          style: Theme.of(context).textTheme.headline2!.copyWith(
                color: AppColor.grey,
              ),
        ),
      ),
      body: GetBuilder<RegisterControllerImpl>(
        builder: (registerController) => Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: Form(
            key: registerController.formstate,
            child: ListView(
              children: [
                CustomTitleTextAuth(
                    title: "welcome",
                    titleStyle: Theme.of(context).textTheme.headline1!.copyWith(
                          color: AppColor.grey,
                          fontWeight: FontWeight.w500,
                        )),
                const CustomBodyTextAuth(text: "sign up body"),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFormAuth(
                  valid: (val) {
                    return validateInput(val!, min, max, "username");
                  },
                  controller: registerController.usernameController,
                  hintText: 'enter your username'.tr,
                  labelText: 'username'.tr,
                  icon: Icons.person_outline,
                  isNumber: false,
                ),
                CustomTextFormAuth(
                  valid: (val) {
                    return validateInput(val!, min, max, "email");
                  },
                  controller: registerController.emailController,
                  hintText: 'enter your email'.tr,
                  labelText: 'email'.tr,
                  icon: Icons.email_outlined,
                  isNumber: false,
                ),
                CustomTextFormAuth(
                  valid: (val) {
                    return validateInput(val!, min, max, "phone");
                  },
                  controller: registerController.phoneController,
                  hintText: 'enter your phone number'.tr,
                  labelText: 'phone number'.tr,
                  icon: Icons.phone_outlined,
                  isNumber: true,
                ),
                CustomTextFormAuth(
                  valid: (val) {
                    return validateInput(val!, min, max, "password");
                  },
                  controller: registerController.passwordController,
                  hintText: 'enter your password'.tr,
                  labelText: 'password'.tr,
                  icon: Icons.lock_outline,
                  isNumber: false,
                  obscureText: registerController.isshowPassword,
                  ontTapIcon: () {
                    registerController.toggleShowPassword();
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButtonAuth(
                  onPressed: () {
                    registerController.register();
                  },
                  text: "sign up",
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomSignUpSignInText(
                  haveAccount: "already have an account?",
                  text: "sign in",
                  goTo: '/login',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
