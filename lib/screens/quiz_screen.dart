import 'package:flutter/material.dart';
import 'package:quiz/utils/colors.dart';

class MyQuizScreen extends StatefulWidget {
  const MyQuizScreen({Key? key}) : super(key: key);

  @override
  State<MyQuizScreen> createState() => _MyQuizScreenState();
}

class _MyQuizScreenState extends State<MyQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        title: Text("Quiz Screen"),

      ),
    );
  }
}
