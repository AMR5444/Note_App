import 'package:flutter/material.dart';
import 'package:test/views/Custom_Bottom.dart';
import 'package:test/views/Widget/Custom_Serch_Icon.dart';
import 'package:test/views/Widget/Custom_Text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 16),
          CustomTextField(hintText: 'content', maxlength: 5),
          SizedBox(height: 40),
          CustomButtom(text: 'Add'),
        ],
      ),
    );
  }
}
