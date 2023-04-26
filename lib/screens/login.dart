import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/global_widgets/my_button.dart';
import 'package:quiz/screens/sms_code_screen.dart';
import 'package:quiz/utils/icons.dart';
import 'package:quiz/utils/utility_functions.dart';

import '../global_widgets/appbar.dart';
import '../global_widgets/my_custom_input.dart';
import '../utils/colors.dart';
import '../utils/style.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController textController = TextEditingController();
  late final FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: 'Login',
      ),
      backgroundColor: MyColors.white,
      body: Column(children: [
        Lottie.asset(MyIcons.loginLottie),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: MyCustomInput(
            textController: textController,
            focusNode: focusNode,
            hintText: "Enter your mobile number",
            keyType: TextInputType.phone, isPassword: false,
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: MyButton(
            buttonText: "Login",
            onTap: () {
              if (textController.text == '+998901234567') {
                UtilityFunctions.getMyToast(message: "Enter SMS code");
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return SMSCodeScreen();
                    },
                  ),
                );
              } else {
                UtilityFunctions.getMyToast(message: "Error phone number");
              }
            },
          ),
        ),
        Expanded(
          child: SizedBox(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: Text(
            "Term's and conditons apply POWERED BY - sparrowdewops.com ",
            textAlign: TextAlign.center,
            style: MyTextStyle.interRegular400.copyWith(
                fontSize: 16.sp, color: MyColors.black.withOpacity(0.5)),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
