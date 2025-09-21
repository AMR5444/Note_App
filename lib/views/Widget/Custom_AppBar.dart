import 'package:flutter/material.dart';
import 'package:test/views/Widget/Custom_Serch_Icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        Spacer(),
        customSerchIcon(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
