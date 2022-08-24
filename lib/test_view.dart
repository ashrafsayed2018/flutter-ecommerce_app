import 'package:ecommerce_wael/controller/test_controller.dart';
import 'package:ecommerce_wael/core/class/handling_data_request.dart';
import 'package:ecommerce_wael/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: const Text('Test'),
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        return HandlingDataRequest(
          statusRequest: controller.statusRequest,
          widget: ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.data[index]['email']),
              );
            },
          ),
        );
      }),
    );
  }
}



      // if (controller.statusRequest == StatusRequest.loading) {
      //     return Center(
      //       child: Lottie.asset(AppImageAsset.loading),
      //     );
      //   } else if (controller.statusRequest == StatusRequest.offlineFailure) {
      //     return Center(
      //       child: Lottie.asset(AppImageAsset.offline),
      //     );
      //   } else if (controller.statusRequest == StatusRequest.serverFailure) {
      //     return Center(
      //       child: Lottie.asset(AppImageAsset.server),
      //     );
      //   } else if (controller.statusRequest == StatusRequest.error) {
      //     return Center(
      //       child: Lottie.asset(AppImageAsset.nodata),
      //     );
      //   } else {
      //     return ListView.builder(
      //       itemCount: controller.data.length,
      //       itemBuilder: (context, index) {
      //         return ListTile(
      //           title: Text(controller.data[index]['email']),
      //         );
      //       },
      //     );
      //   }
