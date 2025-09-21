import 'package:flutter/material.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/Widget/Eidt_View_Body.dart';

class EidtNotepage extends StatelessWidget {
  const EidtNotepage({super.key, required this.note});

  final NoteModels note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EidtViewBody(
      note: note,
    ));
  }
}
