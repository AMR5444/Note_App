import 'package:flutter/material.dart';

class customSerchIcon extends StatelessWidget {
  const customSerchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.04),
      ),
      width: 45,
      height: 45,

      child: Center(child: Icon(Icons.search, size: 32)),
    );
  }
}
