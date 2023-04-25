import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

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
  get textController => null;

  get focusNode => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: 'Otp',
      ),
      backgroundColor: MyColors.white,
      body: Column(children: [
        SizedBox(height: 60.h,),
        Image.asset(MyIcons.logo),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: TextFormField(
            keyboardType: TextInputType.phone,
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
            onChanged: (value){
              if(value == '+998901234567'){
                UtilityFunctions.getMyToast(message: "Enter SMS code");
              }
            },
          ),
        ),
        SizedBox(
          height: 50.h,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: MyButton(
            buttonText: "Login",
            onTap: () {},
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
