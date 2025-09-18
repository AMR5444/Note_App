import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/Widget/Constants.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModels>(knotesBox);
      var notes = notesBox.values.toList();
      emit(NotesSuccsess(notes));
    } catch (e) {
      emit(NotesFaliure(e.toString()));
    }
  }
}
