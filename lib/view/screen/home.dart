import 'dart:ui';

import 'package:ecommerce_wael/api_links.dart';
import 'package:ecommerce_wael/controller/home_controller.dart';
import 'package:ecommerce_wael/core/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    Get.put(HomeControllerImpl());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GetBuilder<HomeControllerImpl>(
        builder: (homeController) {
          return SizedBox(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin: const EdgeInsets.only(top: 10),
                  child: Row(children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: "ابحث عن منتج",
                          hintStyle: const TextStyle(
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_active_outlined,
                          size: 30,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    )
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 160,
                        decoration: BoxDecoration(
                          color: AppColor.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const ListTile(
                          title: Text(
                            "عروض الصيف ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            "% خصم 20",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            color: AppColor.secondaryColor,
                            borderRadius: BorderRadius.circular(160),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
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
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(70),
                              child: Image.network(
                                "${AppLink.categoryImage}/${homeController.categories[index]['id']}",
                                fit: BoxFit.cover,
                                width: 70,
                                height: 70,
                              ),
                            ),
                          ),
                          Text(
                            homeController.categories[index]['ar_name'],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // TODO: THIS IS MYBE IN THE WRONG PLACE LET'S SEE LATER
                const Text(
                  "منتجات مقترحه لك",
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColor.primary,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    separatorBuilder: ((context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    }),
                    scrollDirection: Axis.horizontal,
                    itemCount: homeController.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          SizedBox(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "${AppLink.itemImage}/${homeController.items[index]['id']}",
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
                              "${homeController.items[index]['ar_name']}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
