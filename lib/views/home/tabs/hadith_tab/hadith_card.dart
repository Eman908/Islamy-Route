import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/home/tabs/hadith_tab/hadith_card_title.dart';

class HadithCard extends StatelessWidget {
  const HadithCard({super.key, required this.title, required this.content});
  final String title, content;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black12, BlendMode.modulate),
          image: AssetImage(Assets.assetsImagesWelcome2),
        ),
      ),
      child: Column(
        children: [
          HadithCardTitle(title: title),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                content,
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColors.black, fontSize: 16),
              ),
            ),
          ),
          Image.asset(Assets.assetsImagesMosque02),
        ],
      ),
    );
  }
}
