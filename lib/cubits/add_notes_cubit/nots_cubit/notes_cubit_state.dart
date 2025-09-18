part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesLoding extends NotesCubitState {}

final class NotesSuccsess extends NotesCubitState {
  final List<NoteModels> notes;

  NotesSuccsess(this.notes);
}

final class NotesFaliure extends NotesCubitState {
  final String errorMessage;

  NotesFaliure(this.errorMessage);
}
