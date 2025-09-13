import 'package:flutter/material.dart';
import 'package:test/views/Widget/Custom_AppBar.dart';
import 'package:test/views/Widget/Custom_Note_Aitem.dart';

class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [const CustomAppBar(), SizedBox(height: 15), NotAitem()],
      ),
    );
  }
}
