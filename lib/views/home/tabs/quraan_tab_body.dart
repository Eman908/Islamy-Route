import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/core/custom_border.dart';

class QuraanTabBody extends StatelessWidget {
  const QuraanTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          style: const TextStyle(color: AppColors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.black.withAlpha(70),
            prefixIcon: const ImageIcon(
              AssetImage(Assets.assetsIconsIcQuran),
              color: AppColors.gold,
            ),
            focusedBorder: customBorder(),
            enabledBorder: customBorder(),
            border: customBorder(),
          ),
        ),
      ],
    );
  }
}
