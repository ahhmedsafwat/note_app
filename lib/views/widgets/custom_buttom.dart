import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: KPrimaryColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(
              color: KTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
