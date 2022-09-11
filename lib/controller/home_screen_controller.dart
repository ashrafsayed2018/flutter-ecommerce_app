import 'package:ecommerce_wael/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int index) {}
}

class HomeScreenControllerImpl extends HomeScreenController {
  int currentPage = 0;
  List<Widget> listPage = [
    const Home(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: Text("settings"),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: Text("profile"),
        ),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
          child: Text("favorite"),
        ),
      ],
    ),
  ];
  List titleBottomAppbar = [
    ["home", Icons.home_outlined],
    ["settings", Icons.settings_outlined],
    ["profile", Icons.person_outline_outlined],
    ["favorite", Icons.favorite_border_outlined]
  ];
  @override
  changePage(int index) {
    currentPage = index;
    update();
  }
}
