import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/home/models/quraan_model.dart';

class QuraanSuraCard extends StatelessWidget {
  const QuraanSuraCard({super.key, required this.item});
  final QuraanModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.transparent,
          backgroundImage: const AssetImage(
            Assets.assetsImagesImgSurNumberFrame,
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              item.suraNo.toString(),
              style: const TextStyle(
                color: AppColors.white,
                fontFamily: 'Janna',
                fontSize: 12,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text(
              item.suraEn,
              style: const TextStyle(
                color: AppColors.white,
                fontFamily: 'Janna',
                fontSize: 20,
              ),
            ),
            subtitle: Text(
              item.ayaNo.toString(),
              style: const TextStyle(
                color: AppColors.white,
                fontFamily: 'Janna',
                fontSize: 14,
              ),
            ),
            trailing: Text(
              item.suraAr,
              style: const TextStyle(
                color: AppColors.white,
                fontFamily: 'Janna',
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
