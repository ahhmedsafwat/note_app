import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.done,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Edit Content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
