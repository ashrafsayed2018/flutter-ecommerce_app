import 'package:ecommerce_wael/controller/password/verify_code_controller.dart';
import 'package:ecommerce_wael/core/constant/imageasset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/class/status_request.dart';
import '../../widget/auth/custom_body_text_auth.dart';
import '../../widget/auth/custom_title_text_auth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: GetBuilder<VerifyCodeControllerImpl>(
        builder: (verifyCodeController) => verifyCodeController.statusRequest ==
                StatusRequest.loading
            ? Center(
                child: Lottie.asset(AppImageAsset.loading),
              )
            : Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: ListView(
                  children: [
                    CustomTitleTextAuth(
                        title: "check email ",
                        titleStyle:
                            Theme.of(context).textTheme.headline1!.copyWith(
                                  color: AppColor.grey,
                                  fontWeight: FontWeight.w500,
                                )),
                    const CustomBodyTextAuth(text: "verify code body"),
                    const SizedBox(
                      height: 25,
                    ),
                    OtpTextField(
                      fieldWidth: 50,
                      borderRadius: BorderRadius.circular(10),
                      numberOfFields: 5,
                      borderColor: const Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        verifyCodeController
                            .gotoResetPassword(verificationCode);
                      }, // end onSubmit
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
