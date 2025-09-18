import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/cubits/add_notes_cubit/nots_cubit/notes_cubit_cubit.dart';
import 'package:test/views/Add_Note_Bottom_Sheet.dart';
import 'package:test/views/Widget/NotsView_body.dart';

class NotspageView extends StatelessWidget {
  const NotspageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
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
      ),
    );
  }
}
