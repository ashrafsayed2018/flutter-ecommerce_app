import 'package:ecommerce_wael/controller/home_controller.dart';
import 'package:ecommerce_wael/view/widget/home/categories_list.dart';
import 'package:ecommerce_wael/view/widget/home/custom_appbar.dart';
import 'package:ecommerce_wael/view/widget/home/custom_card.dart';
import 'package:ecommerce_wael/view/widget/home/custom_title.dart';
import 'package:ecommerce_wael/view/widget/home/items_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    Get.put(HomeControllerImpl());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GetBuilder<HomeControllerImpl>(
        builder: (homeController) {
          return SizedBox(
            child: ListView(
              children: [
                CustomAppbar(
                  hintText: "ابحث عن منتج",
                  onPressedNotification: () {},
                  onPressedSearch: () {},
                ),
                const CustomCard(
                  title: "عروض الصيف",
                  body: "% خصم 25",
                ),
                const CustomTitle(title: "الاقسام"),
                CategoriesList(
                  homeController: homeController,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTitle(title: "منتجات مقترحه لك"),
                ItemsList(homeController: homeController),
                const CustomTitle(title: "اخر العروض الحاليه"),
                ItemsList(homeController: homeController),
              ],
            ),
          );
        },
      ),
    );
  }
}
