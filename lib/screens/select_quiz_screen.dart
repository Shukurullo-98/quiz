import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/global_widgets/select_test_items.dart';
import 'package:quiz/screens/quiz_screen.dart';
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
      backgroundColor: MyColors.white,
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: MyColors.C_4047C1,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.C_4047C1,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.light,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                MyIcons.user,
                width: 40,
                height: 40,
              ),
              Image.asset(
                MyIcons.logo2,
                height: 40,
              ),
              Image.asset(
                MyIcons.wallet,
                width: 40,
                height: 40,
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SelectTestItems(
                gradientColors: MyColors.redBar,
                text: 'English',
                questionCount: '10',
                iconPath: MyIcons.book,
                direction: 1,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return MyQuizScreen();
                      },
                    ),
                  );
                },
              ),
              SelectTestItems(
                gradientColors: MyColors.blueBar,
                text: 'English',
                questionCount: '10',
                iconPath: MyIcons.book,
                direction: 2,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return MyQuizScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
