import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:test/models/note_model.dart';
import 'package:test/views/Widget/Constants.dart';
part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModels>(knotesBox);

    // ignore: unused_local_variable
    List<NoteModels>? notes;

    notes = notesBox.values.toList();
  }
}
