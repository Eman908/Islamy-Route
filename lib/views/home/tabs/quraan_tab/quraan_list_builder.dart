import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/home/models/quraan_model.dart';
import 'package:islamy/views/home/tabs/quraan_tab/quraan_sura_card.dart';

class QuraanListBuilder extends StatelessWidget {
  const QuraanListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return QuraanSuraCard(item: QuraanModel.sura[index]);
      },
      separatorBuilder: (_, _) {
        return const Divider(color: AppColors.white, indent: 60, endIndent: 60);
      },
      itemCount: QuraanModel.sura.length,
    );
  }
}
