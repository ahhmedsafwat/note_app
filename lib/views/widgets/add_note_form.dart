import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:intl/intl.dart";
import "package:note_app/cubit/add_note_cubit/add_note_cubit.dart";
import "package:note_app/models/note_model.dart";

import 'custom_button.dart';
import "custom_text_field.dart";

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                var currentDate = DateTime.now();
                var formattedCurrentDate =
                    DateFormat('EE,dd-MM-yy hh:mm ').format(currentDate);
                formKey.currentState!.save();
                var noteModel = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    color: Colors.blue.value,
                    date: formattedCurrentDate);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
