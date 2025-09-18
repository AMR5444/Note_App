import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/Widget/Constants.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<NotesState> {
  AddNotesCubit() : super(NotesInitial());
  addNote(NoteModels note) async {
    emit(NotesLoding());
    try {
      var notesBox = Hive.box<NoteModels>(knotesBox);

      await notesBox.add(note);
      emit(NotesSuccsess());
    } catch (e) {
      emit(NotesFaliure(e.toString()));
    }
  }
}
