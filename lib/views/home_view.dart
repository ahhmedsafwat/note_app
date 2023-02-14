import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

import '../widgets/add_note_botton_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const AddNoteButtonSheet();
                });
          },
          child: const Icon(Icons.add)),
      body: const NotesViewBody(),
    );
  }
}
