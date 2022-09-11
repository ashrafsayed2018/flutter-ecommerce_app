import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String hintText;
  final void Function()? onPressedNotification;
  final void Function()? onPressedSearch;
  const CustomAppbar({
    required this.hintText,
    required this.onPressedNotification,
    required this.onPressedSearch,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.only(top: 10),
      child: Row(children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                ),
                onPressed: onPressedSearch,
              ),
              hintText: hintText,
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
            onPressed: onPressedNotification,
            icon: Icon(
              Icons.notifications_active_outlined,
              size: 30,
              color: Colors.grey.shade600,
            ),
          ),
        )
      ]),
    );
  }
}
