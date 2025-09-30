import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/core/custom_border.dart';

class QuraanSearchBar extends StatelessWidget {
  const QuraanSearchBar({super.key, required this.onChanged});
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      onChanged: onChanged,
      style: const TextStyle(color: AppColors.white, fontSize: 16),
      decoration: InputDecoration(
        hintText: 'Sura Name',
        hintStyle: const TextStyle(color: AppColors.offWhite, fontSize: 16),
        filled: true,
        fillColor: AppColors.black.withAlpha(120),
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
