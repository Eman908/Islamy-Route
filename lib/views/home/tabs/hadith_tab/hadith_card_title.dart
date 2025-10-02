import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';

class HadithCardTitle extends StatelessWidget {
  const HadithCardTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.assetsImagesImgLeftCorner, color: AppColors.black),
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.black, fontSize: 20),
          ),
        ),
        Transform.scale(
          scaleX: -1,
          child: Image.asset(
            Assets.assetsImagesImgLeftCorner,
            color: AppColors.black,
          ),
        ),
      ],
    );
  }
}
