import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

import 'package:note_app/views/edit_note_view.dart';
import 'views/home_view.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  await Hive.openBox(KNoteBox);
  Hive.registerAdapter(NotemodelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeView.id: (context) => const HomeView(),
        EditNote.id: (context) => const EditNote()
      },
      initialRoute: 'HomeView',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
    );
  }
}
