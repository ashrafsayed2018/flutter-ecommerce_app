import 'package:ecommerce_wael/api_links.dart';
import 'package:ecommerce_wael/controller/home_controller.dart';
import 'package:ecommerce_wael/data/model/item_model.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  final HomeControllerImpl homeController;
  const ItemsList({required this.homeController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.separated(
        separatorBuilder: ((context, index) {
          return const SizedBox(
            width: 10,
          );
        }),
        scrollDirection: Axis.horizontal,
        itemCount: homeController.items.length,
        itemBuilder: (BuildContext context, int index) {
          return Items(
              itemModel: ItemModel.fromJson(homeController.items[index]));
        },
      ),
    );
  }
}

class Items extends StatelessWidget {
  final ItemModel itemModel;
  const Items({required this.itemModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "${AppLink.itemImage}/${itemModel.id}",
              height: 100,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black.withOpacity(.3),
          ),
          height: 100,
          width: 150,
        ),
        Positioned(
          right: 10,
          child: Text(
            "${itemModel.arName}",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}
