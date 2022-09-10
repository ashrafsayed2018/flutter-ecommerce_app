import 'package:ecommerce_wael/core/constant/app_color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayFairDisplay",
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
        fontSize: 16,
        height: 1.5,
        color: AppColor.grey,
        fontWeight: FontWeight.w500),
  ),
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
        fontSize: 16,
        height: 1.5,
        color: AppColor.grey,
        fontWeight: FontWeight.w500),
  ),
);
