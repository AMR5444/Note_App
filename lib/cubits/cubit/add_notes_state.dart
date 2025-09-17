part of 'add_notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoding extends NotesState {}

final class NotesSuccsess extends NotesState {}

final class NotesFaliure extends NotesState {
  final String errorMessage;

  NotesFaliure(this.errorMessage);
}
