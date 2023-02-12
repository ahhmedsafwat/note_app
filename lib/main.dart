import 'package:flutter/material.dart';
import 'package:note_app/screens/home_page.dart';

void main(List<String> args) {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {HomePage.id: (context) => const HomePage()},
      initialRoute: 'HomePage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
