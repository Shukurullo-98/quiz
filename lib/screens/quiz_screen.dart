import 'package:flutter/material.dart';
import 'package:quiz/data/quiz_repo.dart';
import 'package:quiz/utils/colors.dart';

import '../model/quiz_data.dart';

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
        backgroundColor: MyColors.C_4047C1,
        title: Text("Quiz Screen"),

      ),
    );
  }
}
