import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/cubits/add_notes_cubit/nots_cubit/notes_cubit_cubit.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/Widget/Custom_Note_Aitem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModels> notes =
            BlocProvider.of<NotesCubit>(context).fetchAllNotes() ?? [];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: NoteAItem(),
              );
            },
          ),
        );
      },
    );
  }
}
