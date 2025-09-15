import 'package:flutter/material.dart';
import 'package:test/views/Widget/Custom_AppBar.dart';
import 'package:test/views/Widget/Custom_Text_feild.dart';

class EidtViewBody extends StatelessWidget {
  const EidtViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          SizedBox(height: 10),
          CustomAppBar(title: ('Eidt Note'), icon: Icons.check),
          SizedBox(height: 50),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 16),
          CustomTextField(hintText: 'contant', maxLiens: 5),
        ],
      ),
    );
  }
}
