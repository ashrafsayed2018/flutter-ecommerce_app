import 'package:ecommerce_wael/controller/home_screen_controller.dart';
import 'package:ecommerce_wael/view/widget/home/custom_appbar_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottmAppbarHome extends StatelessWidget {
  const CustomBottmAppbarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImpl>(builder: (controller) {
      return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          children: [
            ...List.generate(
              controller.listPage.length + 1,
              (index) {
                int i = index > 2 ? index - 1 : index;
                return index == 2
                    ? const Spacer()
                    : CustomAppbarButton(
                        onPressed: () {
                          controller.changePage(i);
                        },
                        icon: controller.titleBottomAppbar[i][1],
                        title: controller.titleBottomAppbar[i][0],
                        isActive: controller.currentPage == i,
                      );
              },
            )
          ],
        ),
      );
    });
  }
}
