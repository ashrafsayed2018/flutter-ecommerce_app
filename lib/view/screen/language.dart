import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/core/function/alert_exist.dart';
import 'package:ecommerce_wael/core/localization/change_locale.dart';
import 'package:ecommerce_wael/view/widget/language/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: alertExitApp,
      child: Scaffold(
        appBar: AppBar(
          title: Text("language".tr),
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "choose your language".tr,
                style: Theme.of(context).textTheme.headline1,
              ),
              CustomButton(
                text: 'عربي',
                onPressed: () {
                  controller.changeLaguage('ar');
                  Get.toNamed(AppRoutes.login);
                },
              ),
              CustomButton(
                text: 'English',
                onPressed: () {
                  controller.changeLaguage('en');
                  Get.toNamed(AppRoutes.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
