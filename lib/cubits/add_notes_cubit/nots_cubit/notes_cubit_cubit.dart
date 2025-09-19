import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/Widget/Constants.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  void fetchAllNotes() {
    var notesBox = Hive.box<NoteModels>(knotesBox);
    List<NoteModels> notes = notesBox.values.toList();
    emit(NotesLoaded(notes));
  }
}
