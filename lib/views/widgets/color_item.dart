import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, this.isActive = false, required this.color});
  final bool isActive;
  final color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 30,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 30,
          );
  }
}
