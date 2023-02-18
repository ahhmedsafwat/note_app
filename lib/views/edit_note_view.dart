import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/edit_note.dart';

class EditNote extends StatelessWidget {
  const EditNote({
    super.key,
    required this.note,
  });
  static String id = 'EditNote';
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteView(note: note),
    );
  }
}
