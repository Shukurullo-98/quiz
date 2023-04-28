import 'package:flutter/material.dart';
import 'package:quiz/global_widgets/my_button.dart';
import 'package:quiz/global_widgets/variant_items.dart';
import 'package:quiz/screens/result_screen.dart';
import 'package:quiz/utils/colors.dart';
import 'package:quiz/utils/style.dart';
import 'package:quiz/utils/utility_functions.dart';
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
  int currentQuestionIndex = 0;
  String selectedVariant = '';
  int trueAnswerCount = 0;

  // List<String> selectedAnswersSet = [];
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
      body: Padding(
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
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: [
                  Text(
                    "Question-$expendableValue",
                    style: MyTextStyle.interBold700
                        .copyWith(fontSize: 24, color: MyColors.C_4047C1),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.quizList[currentQuestionIndex].questionText,
                    style: MyTextStyle.interBold700
                        .copyWith(fontSize: 20, color: MyColors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VariantItem(
                    isSelected: selectedVariant == "A",
                    onTap: () {
                      setState(() {
                        selectedVariant = "A";
                      });
                    },
                    variantText:
                        widget.quizList[currentQuestionIndex].variantText1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VariantItem(
                    isSelected: selectedVariant == "B",
                    onTap: () {
                      setState(() {
                        selectedVariant = "B";
                      });
                    },
                    variantText:
                        widget.quizList[currentQuestionIndex].variantText2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VariantItem(
                    isSelected: selectedVariant == "C",
                    onTap: () {
                      setState(() {
                        selectedVariant = "C";
                      });
                    },
                    variantText:
                        widget.quizList[currentQuestionIndex].variantText3,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  VariantItem(
                    isSelected: selectedVariant == "D",
                    onTap: () {
                      setState(() {
                        selectedVariant = "D";
                      });
                    },
                    variantText:
                        widget.quizList[currentQuestionIndex].variantText4,
                  ),
                ],
              ),
            ),
            MyButton(
                buttonText: "Next",
                onTap: () {
                  setState(() {
                    if (selectedVariant.isNotEmpty) {
                      if (currentQuestionIndex + 1 <= widget.quizList.length) {
                        if (selectedVariant ==
                            widget.quizList[currentQuestionIndex].trueAnswer) {
                          trueAnswerCount++;
                        }
                        if (currentQuestionIndex + 1 !=
                            widget.quizList.length) {
                          currentQuestionIndex++;
                        } else if (currentQuestionIndex + 1 ==
                            widget.quizList.length) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return ResultScreen(
                                  questionCount: trueAnswerCount,
                                  trueQuestionCount: widget.quizList.length,
                                );
                              },
                            ),
                          );
                        }
                        expendableValue++;
                        selectedVariant = "";
                      }
                    } else {
                      UtilityFunctions.getMyToast(message: "Variant tanlang");
                    }
                  });
                }),
          ],
        ),
      ),
    );
  }
}
