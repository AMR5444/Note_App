import 'package:flutter/material.dart';
import 'package:test/views/Add_Note_Bottom_Sheet.dart';
import 'package:test/views/Widget/NotsView_body.dart';

class NotspageView extends StatelessWidget {
  const NotspageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: NotsViewBody(),
    );
  }
}
