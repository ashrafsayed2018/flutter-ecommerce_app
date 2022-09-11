import 'package:ecommerce_wael/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  const CustomTitle({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 18, color: AppColor.primary, fontWeight: FontWeight.bold),
      ),
    );
  }
}
