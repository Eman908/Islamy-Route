import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/home/tabs/hadith_tab/hadith_tab_body.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(Assets.assetsImagesHadithBg, fit: BoxFit.cover),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.black.withAlpha(100), AppColors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const HadithTabBody(),
        ),
      ],
    );
  }
}
