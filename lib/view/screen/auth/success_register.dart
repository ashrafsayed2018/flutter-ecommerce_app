import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/view/widget/auth/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessRegister extends StatelessWidget {
  const SuccessRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text(
            "success register",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const Icon(
            Icons.check_circle_outline_outlined,
            size: 160,
            color: Colors.green,
          ),
          const Text("you are successfully registerd "),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 2 / 3,
            child: CustomButtonAuth(
                text: "go to home",
                onPressed: () {
                  Get.offNamed(AppRoutes.home);
                }),
          )
        ]),
      ),
    );
  }
}
