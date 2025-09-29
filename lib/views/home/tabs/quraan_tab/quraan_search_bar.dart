import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/core/custom_border.dart';

class QuraanSearchBar extends StatelessWidget {
  const QuraanSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: AppColors.white, fontSize: 16),
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
    );
  }
}
