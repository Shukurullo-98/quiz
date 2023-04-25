import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/style.dart';

class MyCustomInput extends StatelessWidget {
  const MyCustomInput(
      {Key? key,
      required this.textController,
      required this.focusNode,
      required this.hintText, required this.keyType})
      : super(key: key);

  final TextEditingController textController;
  final FocusNode focusNode;
  final String hintText;
  final TextInputType keyType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyType,
      controller: textController,
      focusNode: focusNode,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: MyTextStyle.interLight300.copyWith(
          fontSize: 14,
          color: MyColors.black.withOpacity(0.3),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.C_E5E5E5),
        ),
      ),
      onChanged: (value) {
        if (value.length == 13) {
          focusNode.unfocus();
        }
      },
    );
  }
}
