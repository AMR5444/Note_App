part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesLoaded extends NotesCubitState {
  final List<NoteModels> notes;

  NotesLoaded(this.notes);
}
