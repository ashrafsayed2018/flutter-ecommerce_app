import 'package:ecommerce_wael/core/services/services.dart';
import 'package:ecommerce_wael/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(
            fontSize: 16,
            height: 2,
            color: AppColor.grey,
            fontWeight: FontWeight.w500),
      )),
      initialRoute: '/',
      routes: routes,
    );
  }
}
