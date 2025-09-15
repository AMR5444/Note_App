import 'package:flutter/material.dart';
import 'package:test/views/Widget/Custom_Note_Aitem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: NoteAItem(),
        );
      },
    );
  }
}
