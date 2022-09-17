import 'package:ecommerce_wael/api_links.dart';
import 'package:ecommerce_wael/controller/home_controller.dart';
import 'package:ecommerce_wael/data/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesList extends StatelessWidget {
  final HomeControllerImpl homeController;
  const CategoriesList({required this.homeController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        itemCount: homeController.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Categories(
            selectedCat: index,
            categoryModel:
                CategoryModel.fromJson(homeController.categories[index]),
          );
        },
      ),
    );
  }
}

class Categories extends GetView<HomeControllerImpl> {
  final CategoryModel categoryModel;
  final int selectedCat;
  const Categories(
      {required this.categoryModel, required this.selectedCat, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToItems(controller.categories, selectedCat);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image.network(
                "${AppLink.categoryImage}/${categoryModel.id}",
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
            ),
          ),
          Text(
            categoryModel.arName!,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
