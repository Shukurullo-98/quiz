import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ExpandableWidget extends StatelessWidget {
  const ExpandableWidget({
    Key? key,
    required this.dataLength,
    required this.expendableValue,
  }) : super(key: key);

  final int dataLength;
  final int expendableValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 30),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade400, width: 1.5),
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  height: 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: expendableValue,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColors.C_FCA82F,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: dataLength - expendableValue,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 6,

              ),
              Text("$expendableValue/$dataLength"),
            ],
          ),
        ),
      ),
    );
  }
}
