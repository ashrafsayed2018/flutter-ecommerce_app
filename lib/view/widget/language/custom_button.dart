import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Container(
      width: deviceSize.width * .6,
      margin: EdgeInsets.symmetric(horizontal: deviceSize.width * .3),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5.0,
        height: 40,
        onPressed: onPressed,
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        child: Text(
          text!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
