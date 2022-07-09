import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomSignUpSignInText extends StatelessWidget {
  final String haveAccount;
  final String text;
  final String goTo;
  const CustomSignUpSignInText({
    Key? key,
    required this.haveAccount,
    required this.text,
    required this.goTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(haveAccount.tr),
        const SizedBox(
          width: 15,
        ),
        GestureDetector(
          onTap: () {
            Get.offNamed(goTo);
          },
          child: Text(
            text.tr,
            style: TextStyle(
              color: Colors.blue[600],
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
