import 'package:flutter/material.dart';

class SelectTestItems extends StatelessWidget {
  const SelectTestItems(
      {Key? key,
      required this.gradientColors,
      required this.text,
      required this.questionCount,
      required this.iconPath,
      required this.direction})
      : super(key: key);

  final List<Color> gradientColors;
  final String text;
  final String questionCount;
  final String iconPath;
  final int direction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: gradientColors),
      ),
    );
  }
}
