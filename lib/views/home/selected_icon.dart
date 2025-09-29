import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';

class SelectedIcon extends StatelessWidget {
  const SelectedIcon({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.black.withAlpha(100),
        borderRadius: BorderRadius.circular(66),
      ),
      child: ImageIcon(AssetImage(image)),
    );
  }
}
