import 'package:flutter/material.dart';
import 'package:get/get.dart';

errorDialog(error) {
  return Get.defaultDialog(
    title: "خطأ",
    content: Text(error),
    actions: [
      ElevatedButton(
        child: const Text("حسنا"),
        onPressed: () {
          Get.back();
        },
      ),
    ],
  );
}
