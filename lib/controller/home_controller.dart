import 'package:ecommerce_wael/core/class/status_request.dart';
import 'package:ecommerce_wael/core/constant/app_routes.dart';
import 'package:ecommerce_wael/core/function/handling_data.dart';
import 'package:ecommerce_wael/core/services/services.dart';
import 'package:ecommerce_wael/data/datasource/remote/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initalData();
  getData();
  goToItems(List categories, int selectedCat);
}

class HomeControllerImpl extends HomeController {
  MyServices myServices = Get.find();
  HomeData homeData = HomeData(Get.find());
  String? username;
  String? email;
  StatusRequest? statusRequest;
  List categories = [];
  List items = [];

  @override
  initalData() {
    username = myServices.sharedPreferences.getString("name");
    email = myServices.sharedPreferences.getString("email");
  }

  @override
  void onInit() {
    super.onInit();
    initalData();
    getData();
  }

  @override
  getData() async {
    statusRequest = StatusRequest.loading;

    var response = await homeData.getData();
    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        categories.addAll(response['categories']);
        items.addAll(response['items']);
      }

      update();
    }
  }

  @override
  goToItems(List categories, int selectedCat) {
    Get.toNamed(AppRoutes.itemsScreen, arguments: {
      "categories": categories,
      "selectedCat": selectedCat,
    });
  }
}
