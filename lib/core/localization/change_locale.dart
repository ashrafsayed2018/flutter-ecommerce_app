import 'package:ecommerce_wael/core/constant/app_theme.dart';
import 'package:ecommerce_wael/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find<MyServices>();

  ThemeData apptheme = themeEnglish;
  changeLaguage(String lang) {
    Locale locale = Locale(lang);
    myServices.sharedPreferences.setString('language', lang);
    apptheme = lang == 'en' ? themeEnglish : themeArabic;
    Get.changeTheme(apptheme);
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
        apptheme = themeArabic;
      } else {
        language = const Locale('en');
        apptheme = themeEnglish;
      }
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      if (language!.languageCode == 'ar') {
        apptheme = themeArabic;
      } else {
        apptheme = themeEnglish;
      }
    }
  }
}
