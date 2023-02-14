import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/edit_note_view.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});
  static String id = 'EditNote';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteView(),
    );
  }
}
