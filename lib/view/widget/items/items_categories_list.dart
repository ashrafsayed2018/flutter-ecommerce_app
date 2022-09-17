import 'package:ecommerce_wael/controller/items_controller.dart';
import 'package:ecommerce_wael/core/constant/app_color.dart';
import 'package:ecommerce_wael/data/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsCategoriesList extends GetView<ItemsControllerImpl> {
  const ItemsCategoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(
      () => ItemsControllerImpl(),
    );
    return SizedBox(
      width: 100,
      height: 120,
      child: ListView.separated(
        separatorBuilder: ((context, index) {
          return const SizedBox(
            width: 20,
          );
        }),
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Categories(
            selectedCat: index,
            categoryModel: CategoryModel.fromJson(controller.categories[index]),
          );
        },
      ),
    );
  }
}

class Categories extends GetView<ItemsControllerImpl> {
  final CategoryModel categoryModel;
  final int selectedCat;
  const Categories(
      {required this.categoryModel, required this.selectedCat, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeSelectedCat(selectedCat);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GetBuilder<ItemsControllerImpl>(builder: (controller) {
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                      color: controller.selectedCat == selectedCat
                          ? Colors.red
                          : Colors.transparent,
                      width: 2),
                ),
              ),
              child: Text(
                categoryModel.arName!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColor.grey2,
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
