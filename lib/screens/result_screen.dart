import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/utils/colors.dart';
import 'package:quiz/utils/icons.dart';
import 'package:quiz/utils/style.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(
      {Key? key, required this.questionCount, required this.trueQuestionCount})
      : super(key: key);

  final int questionCount;

  final int trueQuestionCount;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: Center(
        child: Column(
          children: [
            Lottie.asset(MyIcons.congratulation),
            Expanded(
              child: Text(
                "Congratulatio, true answers count: ${widget.trueQuestionCount} ",
                style: MyTextStyle.interSemiBold600
                    .copyWith(fontSize: 20, color: MyColors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
