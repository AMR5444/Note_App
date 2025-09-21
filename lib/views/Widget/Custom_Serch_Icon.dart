import 'package:flutter/material.dart';

class customSerchIcon extends StatelessWidget {
  customSerchIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.04),
      ),
      width: 45,
      height: 45,
      child: Center(
          child: IconButton(onPressed: onPressed, icon: Icon(icon, size: 32))),
    );
  }
}
