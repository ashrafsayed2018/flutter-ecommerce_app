import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomBodyTextAuth extends StatelessWidget {
  final String text;
  const CustomBodyTextAuth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 40, left: 40),
      child: Text(
        text.tr,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: Colors.grey[600],
              fontSize: 13,
            ),
      ),
    );
  }
}
