import 'package:flutter/material.dart';

import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTap, this.isLoading = false});

  final void Function()? onTap;
  final bool isLoading;
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
          child: isLoading
              ? SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    color: KTextColor,
                  ),
                )
              : Text(
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
