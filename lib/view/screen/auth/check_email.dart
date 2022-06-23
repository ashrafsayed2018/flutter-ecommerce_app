import 'package:ecommerce_wael/controller/auth/check_email_controller.dart';
import 'package:ecommerce_wael/view/widget/auth/custom_title_text_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../widget/auth/custom_body_text_auth.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_form_auth.dart';

class CheckEamil extends StatelessWidget {
  const CheckEamil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEamilContorllerImpl checkEmailController =
        Get.put(CheckEamilContorllerImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "register check email".tr,
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
                title: "registration success",
                titleStyle: Theme.of(context).textTheme.headline1!.copyWith(
                      color: AppColor.grey,
                      fontWeight: FontWeight.w500,
                    )),
            const CustomBodyTextAuth(text: "forget password body"),
            const SizedBox(
              height: 25,
            ),
            CustomTextFormAuth(
              controller: checkEmailController.emailController,
              hintText: 'enter your email'.tr,
              labelText: 'email'.tr,
              icon: Icons.email_outlined,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButtonAuth(
              onPressed: () {
                checkEmailController.goToSuccessRegister();
              },
              text: "check",
            ),
          ],
        ),
      ),
    );
  }
}
