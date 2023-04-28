import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/global_widgets/my_custom_input.dart';
import 'package:quiz/screens/select_quiz_screen.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../global_widgets/appbar.dart';
import '../global_widgets/my_button.dart';
import '../utils/colors.dart';
import '../utils/icons.dart';
import '../utils/style.dart';
import '../utils/utility_functions.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController textController1 = TextEditingController();
  final TextEditingController textController2 = TextEditingController();
  final TextEditingController textController3 = TextEditingController();
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();

  @override
  void dispose() {
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: 'Register',
      ),
      backgroundColor: MyColors.white,
      body: Column(children: [
        SizedBox(
          height: 60.h,
        ),
        Image.asset(MyIcons.logo),
        SizedBox(
          height: 60.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40.h),
          child: Column(
            children: [
              MyCustomInput(
                textController: textController1,
                focusNode: focusNode1,
                hintText: "Enter your mobile number",
                keyType: TextInputType.phone,
                isPassword: false,
                valueChanged: (value) {
                  if (value.length == 13) {
                    focusNode1.unfocus();
                  }
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              MyCustomInput(
                textController: textController2,
                focusNode: focusNode2,
                hintText: "Password",
                keyType: TextInputType.text,
                isPassword: true,
                valueChanged: (value) {},
              ),
              SizedBox(
                height: 15.h,
              ),
              MyCustomInput(
                textController: textController3,
                focusNode: focusNode3,
                hintText: "Confirm Password",
                keyType: TextInputType.text,
                isPassword: true,
                valueChanged: (value) {},
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: MyButton(
            buttonText: "Register",
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return SelectQuizType(quizList: [],);
                  },
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: Text(
            "If you have already account click here",
            textAlign: TextAlign.center,
            style: MyTextStyle.interRegular400.copyWith(
                fontSize: 20.sp, color: MyColors.black.withOpacity(0.5)),
          ),
        ),
      ]),
    );
  }
}
