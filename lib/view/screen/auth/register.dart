import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/register_controller.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/custom_body_text_auth.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_sign_up_sign_in_text.dart';
import '../../widget/auth/custom_text_form_auth.dart';
import '../../widget/auth/custom_title_text_auth.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RegisterControllerImpl registerController =
        Get.put(RegisterControllerImpl());
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
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
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
              controller: registerController.usernameController,
              hintText: 'enter your username'.tr,
              labelText: 'username'.tr,
              icon: Icons.person_outline,
            ),
            CustomTextFormAuth(
              controller: registerController.emailController,
              hintText: 'enter your email'.tr,
              labelText: 'email'.tr,
              icon: Icons.email_outlined,
            ),
            CustomTextFormAuth(
              controller: registerController.phoneController,
              hintText: 'enter your phone number'.tr,
              labelText: 'phone number'.tr,
              icon: Icons.phone_outlined,
            ),
            CustomTextFormAuth(
              controller: registerController.passwordController,
              hintText: 'enter your password'.tr,
              labelText: 'password'.tr,
              icon: Icons.lock_outline,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButtonAuth(
              onPressed: () {},
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
    );
  }
}
