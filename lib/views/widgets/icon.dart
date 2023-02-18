// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
          child: IconButton(
        icon: Icon(
          icon,
          size: 26,
        ),
        onPressed: onPressed,
      )),
    );
  }
}
