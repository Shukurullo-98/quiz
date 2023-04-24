import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz/global_widgets/my_button.dart';
import 'package:quiz/utils/icons.dart';

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
      appBar: AppBar(
        title: Text(
          "Login",
          style: MyTextStyle.interRegular400.copyWith(
            fontSize: 24.sp,
            color: MyColors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: MyColors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: MyColors.white,
        ),
      ),
      backgroundColor: MyColors.white,
      body: Column(children: [
        Lottie.asset(MyIcons.loginLottie),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: TextFormField(
            controller: textController,
            focusNode: focusNode,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: "Enter your mobile number",
              hintStyle: MyTextStyle.interLight300.copyWith(
                fontSize: 14,
                color: MyColors.black.withOpacity(0.3),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: MyColors.C_E5E5E5),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: MyButton(buttonText: "Login", onTap: () {  },),
        ),
      ]),
    );
  }
}
