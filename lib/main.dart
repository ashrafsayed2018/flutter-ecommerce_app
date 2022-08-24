import 'package:ecommerce_wael/binding.dart';
import 'package:ecommerce_wael/core/localization/change_locale.dart';
import 'package:ecommerce_wael/core/localization/translation.dart';
import 'package:ecommerce_wael/core/services/services.dart';
import 'package:ecommerce_wael/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: localeController.language,
      debugShowCheckedModeBanner: false,
      title: 'مشروع فلاتر',
      theme: localeController.apptheme,
      initialBinding: MyBinding(),
      getPages: routes,
    );
  }
}
