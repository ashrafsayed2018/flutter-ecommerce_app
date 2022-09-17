import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  initalData();
  changeSelectedCat(val) {}
}

class ItemsControllerImpl extends ItemsController {
  List categories = [];
  int? selectedCat;
  @override
  initalData() {
    categories = Get.arguments["categories"];
    selectedCat = Get.arguments['selectedCat'];
    // implementation of the method
  }

  @override
  changeSelectedCat(val) {
    selectedCat = val;
    update();
  }

  @override
  void onInit() {
    initalData();
    super.onInit();
  }
}
