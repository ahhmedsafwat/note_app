part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoading extends NoteState {}

class NoteSuccess extends NoteState {
  final List<NoteModel> notes;
  NoteSuccess(this.notes);
}

class NoteFailure extends NoteState {
  final String errMessage;

  NoteFailure(this.errMessage);
}
