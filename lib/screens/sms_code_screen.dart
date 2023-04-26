import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/screens/registration_screen.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../global_widgets/appbar.dart';
import '../global_widgets/my_button.dart';
import '../utils/colors.dart';
import '../utils/icons.dart';
import '../utils/style.dart';
import '../utils/utility_functions.dart';

class SMSCodeScreen extends StatefulWidget {
  const SMSCodeScreen({Key? key}) : super(key: key);

  @override
  State<SMSCodeScreen> createState() => _SMSCodeScreenState();
}

class _SMSCodeScreenState extends State<SMSCodeScreen> {
  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: 'Otp',
      ),
      backgroundColor: MyColors.white,
      body: Column(children: [
        SizedBox(
          height: 60.h,
        ),
        Image.asset(MyIcons.logo),
        SizedBox(
          height: 130.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: Text(
            "Enter your 6 digit here",
            textAlign: TextAlign.center,
            style: MyTextStyle.interRegular400.copyWith(
                fontSize: 20.sp, color: MyColors.black.withOpacity(0.5)),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 85),
          child: PinFieldAutoFill(
            controller: textController,
            decoration: UnderlineDecoration(
              textStyle: MyTextStyle.interBold700
                  .copyWith(fontSize: 25, color: Colors.black.withOpacity(0.5)),
              colorBuilder: FixedColorBuilder(
                Colors.black,
              ),
            ),
            onCodeSubmitted: (value) {},
            onCodeChanged: (value) {},
            codeLength: 6,
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
              if (textController.text == "123456") {
                UtilityFunctions.getMyToast(message: "Enter personal info");
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const RegistrationScreen();
                    },
                  ),
                );
              } else {
                UtilityFunctions.getMyToast(message: "Invalid SMS code");
              }
            },
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: Text(
            "Login with social media",
            textAlign: TextAlign.center,
            style: MyTextStyle.interRegular400.copyWith(
                fontSize: 20.sp, color: MyColors.black.withOpacity(0.5)),
          ),
        ),
        Expanded(child: SizedBox()),
        Image.asset(
          MyIcons.otp,
          width: 200,
          height: 200,
        )
      ]),
    );
  }
}
