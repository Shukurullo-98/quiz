import 'package:flutter/material.dart';
import 'package:quiz/utils/colors.dart';
import 'package:quiz/utils/icons.dart';
import 'package:quiz/utils/style.dart';

class VariantItem extends StatelessWidget {
  const VariantItem({
    Key? key,
    required this.variantText,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final String variantText;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: MyColors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              spreadRadius: 4,
              color: Colors.grey.shade300,
              offset: Offset(1, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                variantText,
                style: MyTextStyle.interMedium500
                    .copyWith(fontSize: 16, color: MyColors.black ),
              maxLines: 100,
              ),

            ),
            isSelected ? Image.asset(MyIcons.selected) : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
