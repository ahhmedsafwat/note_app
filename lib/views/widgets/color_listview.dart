import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  List<Color> colors = const [
    Color(0xff080b0c),
    Color(0xffE3B505),
    Color(0xffD76A03),
    Color(0xffDD1C1A),
    Color(0xff67E071),
    Color(0xff56a3a6),
    Color(0xff2B784C),
    Color(0xff084A5E),
    Color(0xff801A86),
    Color(0xff730377),
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
