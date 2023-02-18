import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';

import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  List<Color> colors = const [
    Color(0xffffffff),
    Color(0xffCDE9D6),
    Color(0xffE3B505),
    Color(0xffD76A03),
    Color(0xffDD1C1A),
    Color(0xff67E071),
    Color(0xff56a3a6),
    Color(0xff2B784C),
    Color(0xff084A5E),
    Color(0xff801A86),
  ];
  int currentIndex = 0;
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: GestureDetector(
              onTap: () {
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              )),
        ),
      ),
    );
  }
}
