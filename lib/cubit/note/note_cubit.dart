import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchAllNotes(note) {
    emit(NoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(KNoteBox);
      emit(
        NoteSuccess(
          notesBox.values.toList(),
        ),
      );
    } catch (e) {
      emit(NoteFailure(
        e.toString(),
      ));
    }
  }
}
