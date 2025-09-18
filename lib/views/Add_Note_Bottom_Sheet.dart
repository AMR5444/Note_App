import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/cubits/cubit/add_notes_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:test/views/Widget/add_note_form_sheet.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<NotesCubit, NotesState>(
          listener: (context, state) {
            if (state is NotesFaliure) {
              print('filier ${state.errorMessage}');
            }
            if (state is NotesSuccsess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is NotesLoding ? true : false,
                child: SingleChildScrollView(child: AddNoteForm()));
          },
        ),
      ),
    );
  }
}
