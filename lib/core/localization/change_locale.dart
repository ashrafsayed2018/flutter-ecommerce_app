import 'package:ecommerce_wael/core/services/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find<MyServices>();
  changeLaguage(String lang) {
    Locale locale = Locale(lang);
    myServices.sharedPreferences.setString('language', lang);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    super.onInit();
    String? shardPrefLanguage =
        myServices.sharedPreferences.getString('language');
    if (shardPrefLanguage != null) {
      if (shardPrefLanguage == 'ar') {
        language = const Locale('ar');
      } else {
        language = const Locale('en');
      }
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
  }
}
