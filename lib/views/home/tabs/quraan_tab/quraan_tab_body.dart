import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/home/tabs/quraan_tab/quraan_list_builder.dart';
import 'package:islamy/views/home/tabs/quraan_tab/quraan_search_bar.dart';

class QuraanTabBody extends StatelessWidget {
  const QuraanTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * .2),
          const QuraanSearchBar(),
          const Text(
            'Suras List',
            style: TextStyle(
              color: AppColors.white,
              fontFamily: 'Janna',
              fontSize: 16,
            ),
          ),
          const Expanded(child: QuraanListBuilder()),
        ],
      ),
    );
  }
}
