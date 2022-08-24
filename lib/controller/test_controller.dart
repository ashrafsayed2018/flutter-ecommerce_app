import 'package:ecommerce_wael/core/class/status_request.dart';
import 'package:ecommerce_wael/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

import '../core/function/handling_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];
  late StatusRequest statusRequest;

  // get data from remote
  void getData() async {
    statusRequest = StatusRequest.loading;

    var response = await testData.getData();

    statusRequest = handlingData(response);

    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      }

      update();
    } else {
      update();
    }
  }

  @override
  void onInit() {
    super.onInit();
    getData();
  }
}
