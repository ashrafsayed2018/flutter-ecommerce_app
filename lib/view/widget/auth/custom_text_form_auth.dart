import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData icon;
  final bool isNumber;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? valid;
  final void Function()? ontTapIcon;
  const CustomTextFormAuth({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.controller,
    required this.valid,
    required this.isNumber,
    this.ontTapIcon,
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false ? false : true,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        controller: controller,
        validator: valid,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          suffixIcon: InkWell(
            onTap: ontTapIcon,
            child: Icon(
              icon,
              color: AppColor.grey,
            ),
          ),
          hintText: hintText.tr,
          hintStyle: const TextStyle(color: AppColor.grey, fontSize: 14),
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              child: Text(
                labelText.tr,
                style: TextStyle(color: Colors.grey[600]),
              )),
          labelStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.grey[500],
              ),
        ),
      ),
    );
  }
}
