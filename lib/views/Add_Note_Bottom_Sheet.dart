import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:test/cubits/add_notes_cubit/nots_cubit/notes_cubit_cubit.dart';

import 'package:test/views/Widget/add_note_form_sheet.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, NotesState>(
        listener: (context, state) {
          if (state is NotesFaliure) {}
          if (state is NotesSuccsess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is NotesLoding ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  right: 16,
                  left: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: addNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
