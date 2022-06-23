import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/custom_body_text_auth.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_title_text_auth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ForegetPasswordControllerImpl registerController =
    //     Get.put(ForegetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "verification code".tr,
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
                title: "check email ",
                titleStyle: Theme.of(context).textTheme.headline1!.copyWith(
                      color: AppColor.grey,
                      fontWeight: FontWeight.w500,
                    )),
            const CustomBodyTextAuth(text: "sign up body"),
            const SizedBox(
              height: 25,
            ),
            // CustomTextFormAuth(
            //   controller: registerController.emailController,
            //   hintText: 'enter your email'.tr,
            //   labelText: 'email'.tr,
            //   icon: Icons.email_outlined,
            // ),
            const SizedBox(
              height: 10,
            ),
            CustomButtonAuth(
              onPressed: () {},
              text: "check",
            ),
          ],
        ),
      ),
    );
  }
}
