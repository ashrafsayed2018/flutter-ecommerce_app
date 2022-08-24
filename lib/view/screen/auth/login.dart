import 'package:ecommerce_wael/controller/auth/login_controller.dart';
import 'package:ecommerce_wael/core/constant/color.dart';
import 'package:ecommerce_wael/core/function/validate_input.dart';
import 'package:ecommerce_wael/view/widget/auth/custom_sign_up_sign_in_text.dart';
import 'package:ecommerce_wael/view/widget/auth/custom_body_text_auth.dart';
import 'package:ecommerce_wael/view/widget/auth/custom_button_auth.dart';
import 'package:ecommerce_wael/view/widget/auth/custom_title_text_auth.dart';
import 'package:ecommerce_wael/view/widget/auth/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/custom_sign_up_sign_in_text.dart';
import '../../widget/auth/custom_text_form_auth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "login".tr,
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.grey[600],
              ),
        ),
      ),
      body: GetBuilder<LoginControllerImpl>(
        builder: (loginController) => Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Form(
            key: loginController.formstate,
            child: ListView(
              children: [
                const LogoAuth(),
                const SizedBox(height: 30),
                CustomTitleTextAuth(
                  title: "welcome back",
                  titleStyle: Theme.of(context).textTheme.headline1!.copyWith(
                        color: AppColor.grey,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const CustomBodyTextAuth(text: "sign in body"),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFormAuth(
                  valid: (val) {
                    return validateInput(val!, min, max, "email");
                  },
                  controller: loginController.emailController,
                  hintText: 'enter your email'.tr,
                  labelText: 'email'.tr,
                  icon: Icons.email_outlined,
                  isNumber: false,
                ),
                GetBuilder<LoginControllerImpl>(
                  builder: (loginController) => CustomTextFormAuth(
                    valid: (val) {
                      return validateInput(val!, min, max, "password");
                    },
                    controller: loginController.passwordController,
                    hintText: 'enter your password'.tr,
                    labelText: 'password'.tr,
                    icon: Icons.lock_outline,
                    isNumber: false,
                    obscureText: loginController.isshowPassword,
                    ontTapIcon: () {
                      loginController.toggleShowPassword();
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    loginController.goToForgetPassword();
                  },
                  child: Text(
                    "forget password?".tr,
                    style: TextStyle(
                      color: Colors.blue[600],
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButtonAuth(
                  onPressed: () {
                    loginController.login();
                  },
                  text: "login",
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomSignUpSignInText(
                  haveAccount: "don't have an account?",
                  text: "sign up",
                  goTo: '/register',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
