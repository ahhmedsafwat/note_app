import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 16,
      ),
      decoration: BoxDecoration(
          color: const Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: Text(
            'Flutter Tips',
            style: TextStyle(
              color: mainColor,
              fontSize: 26,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Build your career with tharwt samy',
              style: TextStyle(
                color: secondaryColor,
                fontSize: 18,
              ),
            ),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.trash,
                color: mainColor,
                size: 26,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            'May21 , 2023',
            style: TextStyle(color: secondaryColor, fontSize: 14),
          ),
        )
      ]),
    );
  }
}
