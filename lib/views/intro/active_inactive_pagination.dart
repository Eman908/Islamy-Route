import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';

class ActiveInactivePagination extends StatelessWidget {
  const ActiveInactivePagination({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
          width: 18,
          height: 7,
          decoration: BoxDecoration(
            color: AppColors.gold,
            borderRadius: BorderRadius.circular(100),
          ),
        )
        : Container(
          width: 7,
          height: 7,
          decoration: const BoxDecoration(
            color: AppColors.gray,
            shape: BoxShape.circle,
          ),
        );
  }
}
