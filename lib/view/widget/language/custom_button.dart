import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: MaterialButton(
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
