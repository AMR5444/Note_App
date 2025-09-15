import 'package:flutter/material.dart';
import 'package:test/views/Widget/Custom_Bottom.dart';
import 'package:test/views/Widget/Custom_Text_feild.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hintText: 'content', maxLiens: 5),
            SizedBox(height: 32),
            CustomButtom(text: 'Add'),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
