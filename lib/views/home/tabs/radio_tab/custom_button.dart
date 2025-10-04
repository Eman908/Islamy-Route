import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.isSelected,
    required this.title,
    this.onTap, required this.index,
  });
  final int isSelected;
  final String title;
  final void Function()? onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected == index ? AppColors.gold : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: isSelected == index ? AppColors.black : AppColors.offWhite,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
