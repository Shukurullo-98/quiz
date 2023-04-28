import 'package:flutter/material.dart';
import 'package:quiz/data/quiz_repo.dart';
import 'package:quiz/utils/colors.dart';
import 'package:quiz/utils/style.dart';

import '../global_widgets/expandble_widget.dart';
import '../model/quiz_data.dart';

class MyQuizScreen extends StatefulWidget {
  const MyQuizScreen({
    Key? key,
    required this.quizList,
    required this.quizName,
  }) : super(key: key);

  final List<QuizData> quizList;
  final String quizName;

  @override
  State<MyQuizScreen> createState() => _MyQuizScreenState();
}

class _MyQuizScreenState extends State<MyQuizScreen> {
  int expendableValue = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.C_4047C1,
        title: Text("Quiz Screen"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.quizName,
                style: MyTextStyle.interBold700
                    .copyWith(fontSize: 25, color: MyColors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              ExpandableWidget(
                dataLength: widget.quizList.length,
                expendableValue: expendableValue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
