import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'views/home_view.dart';

void main(List<String> args) {
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
