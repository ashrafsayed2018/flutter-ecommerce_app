import 'package:ecommerce_wael/view/widget/language/custom_button.dart';
import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "choose your language",
              style: Theme.of(context).textTheme.headline1,
            ),
            CustomButton(
              text: 'عربي',
              onPressed: () {},
            ),
            CustomButton(
              text: 'English',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
