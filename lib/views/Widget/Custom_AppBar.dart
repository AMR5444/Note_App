import 'package:flutter/material.dart';
import 'package:test/views/Widget/Custom_Serch_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes', style: TextStyle(fontSize: 28)),
        Spacer(),
        customSerchIcon(),
      ],
    );
  }
}
