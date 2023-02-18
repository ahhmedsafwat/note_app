part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoading extends NoteState {}

class NoteSuccess extends NoteState {
  final List<NoteModel> notes;
  NoteSuccess(this.notes);
}

class NOteFailure extends NoteState {
  final String errMessage;

  NOteFailure(this.errMessage);
}
