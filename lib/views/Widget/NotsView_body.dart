import 'package:flutter/material.dart';
import 'package:test/views/Widget/Custom_AppBar.dart';
import 'package:test/views/Widget/Custom_Note_ListView.dart';

class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          const CustomAppBar(),
          SizedBox(height: 50),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
