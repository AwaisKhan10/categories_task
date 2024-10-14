import 'package:code_structure/core/constants/colors.dart';
import 'package:code_structure/core/constants/text_style.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  String? number;
  String? img;
  String? text;
  Categories({
    required this.img,
    required this.text,
    required this.number,
  }) : super(key: ValueKey(text));

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      // height: 139,
      width: 106,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0),
          color: pinkLightColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: pinkDarkColor,
              child: Text(
                "$number",
                style: style14,
              ),
            ),
          ),
          Image.asset(
            img!,
            scale: 4,
          ),
          Text(
            "$text",
            style: style16,
          ),
        ],
      ),
    );
  }
}
