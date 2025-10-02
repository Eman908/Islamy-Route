import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/home/tabs/sebha_tab/sebha_counter.dart';

class SebhaTabBody extends StatelessWidget {
  const SebhaTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: MediaQuery.sizeOf(context).height * .23),
          const Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.offWhite, fontSize: 36),
          ),
          const SizedBox(height: 16),
          Image.asset(
            Assets.assetsImagesSebhahead,
            width: MediaQuery.sizeOf(context).width * .1,
            height: MediaQuery.sizeOf(context).height * .1,
          ),
          const SebhaCounter(),
        ],
      ),
    );
  }
}
