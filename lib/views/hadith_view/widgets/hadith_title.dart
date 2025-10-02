import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';

class HadithTitle extends StatelessWidget {
  const HadithTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Image.asset(Assets.assetsImagesImgLeftCorner),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.gold, fontSize: 24),
            ),
          ),
          Transform.scale(
            scaleX: -1,
            child: Image.asset(Assets.assetsImagesImgLeftCorner),
          ),
        ],
      ),
    );
  }
}
