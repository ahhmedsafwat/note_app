import "package:flutter/material.dart";
import "package:note_app/constants.dart";

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(color: KPrimaryColor),
        border: buildBorder(
          Colors.white,
        ),
        enabledBorder: buildBorder(Colors.white),
        focusedBorder: buildBorder(
          KPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
