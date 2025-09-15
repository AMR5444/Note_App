import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({Key? key, this.onTap, required this.text}) : super(key: key);

  final String text;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Color(0xff62FCD7), fontSize: 14),
          ),
        ),
      ),
    );
  }
}
