import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomTitleTextAuth extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  const CustomTitleTextAuth({
    Key? key,
    required this.title,
    this.titleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Text(
        title.tr,
        textAlign: TextAlign.center,
        style: titleStyle,
      ),
    );
  }
}
