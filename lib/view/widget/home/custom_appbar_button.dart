import 'package:ecommerce_wael/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class CustomAppbarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData? icon;
  final String title;
  final bool? isActive;
  const CustomAppbarButton(
      {required this.onPressed,
      required this.icon,
      required this.title,
      this.isActive = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isActive == true ? AppColor.primary : Colors.black,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: isActive == true ? 14 : 12,
                fontWeight:
                    isActive == true ? FontWeight.bold : FontWeight.normal,
                color: isActive == true ? AppColor.primary : Colors.black),
          ),
        ],
      ),
    );
  }
}
