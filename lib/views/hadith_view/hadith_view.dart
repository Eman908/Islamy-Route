import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/hadith_view/widgets/hadith_title.dart';
import 'package:islamy/views/home/models/hadith_model.dart';

class HadithView extends StatelessWidget {
  const HadithView({super.key});

  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments as HadithModel;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.gold),
        title: const Text(
          'Hadith Details',
          style: TextStyle(color: AppColors.gold, fontSize: 24),
        ),
      ),
      body: Column(
        children: [
          HadithTitle(title: item.title),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),

              child: Text(
                item.content,
                textAlign: TextAlign.center,

                style: const TextStyle(
                  height: 2,
                  color: AppColors.gold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Image.asset(Assets.assetsImagesMosque02),
        ],
      ),
    );
  }
}
