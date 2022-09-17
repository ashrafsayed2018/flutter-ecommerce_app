import 'package:ecommerce_wael/controller/home_controller.dart';
import 'package:ecommerce_wael/view/widget/custom_appbar.dart';
import 'package:ecommerce_wael/view/widget/items/items_categories_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeControllerImpl>(
        builder: (homeController) => Container(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              CustomAppbar(
                hintText: "ابحث عن منتج",
                onPressedNotification: () {},
                onPressedSearch: () {},
              ),
              const ItemsCategoriesList()
            ],
          ),
        ),
      ),
    );
  }
}
