import 'package:ecommerce_wael/controller/home_screen_controller.dart';
import 'package:ecommerce_wael/view/widget/home/custom_bottom_appbar_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImpl());
    return GetBuilder<HomeScreenControllerImpl>(
      builder: (controller) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.shopping_basket_outlined),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: controller.listPage.elementAt(controller.currentPage),
          bottomNavigationBar: const CustomBottmAppbarHome(),
        );
      },
    );
  }
}
