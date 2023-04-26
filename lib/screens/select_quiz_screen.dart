import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/utils/icons.dart';

import '../utils/colors.dart';
import '../utils/style.dart';

class SelectQuizType extends StatefulWidget {
  const SelectQuizType({Key? key}) : super(key: key);

  @override
  State<SelectQuizType> createState() => _SelectQuizTypeState();
}

class _SelectQuizTypeState extends State<SelectQuizType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: MyColors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: MyColors.white,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: Image.asset(MyIcons.logo2)
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             
          ],
        ),
      ),
    );
  }
}
