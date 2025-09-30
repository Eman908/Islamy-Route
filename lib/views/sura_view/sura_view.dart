import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/home/models/quraan_model.dart';
import 'package:islamy/views/sura_view/widgets/sura_app_bar.dart';
import 'package:islamy/views/sura_view/widgets/sura_title.dart';

class SuraView extends StatefulWidget {
  const SuraView({super.key});

  @override
  State<SuraView> createState() => _SuraViewState();
}

class _SuraViewState extends State<SuraView> {
  String? content;

  @override
  Widget build(BuildContext context) {
    var sura = ModalRoute.of(context)!.settings.arguments as QuraanModel;
    if (content == null) {
      loadSuraContent(sura.suraNo.toString());
    }
    return Scaffold(
      appBar: suraAppBar(sura.suraEn),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SuraTitle(title: sura.suraAr),
          Expanded(
            child:
                content == null
                    ? const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.offWhite,
                      ),
                    )
                    : SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          content!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            height: 3,
                            color: AppColors.gold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
          ),
          Image.asset(Assets.assetsImagesMosque02),
        ],
      ),
    );
  }

  Future<void> loadSuraContent(String suraNumber) async {
    String suraContent = await rootBundle.loadString(
      'assets/files/Suras/$suraNumber.txt',
    );
    List<String> suraPattern = suraContent.trim().split("\n");

    StringBuffer buffer = StringBuffer();
    for (int i = 0; i < suraPattern.length; i++) {
      buffer.write("[${i + 1}] ${suraPattern[i].trim()}");
    }
    content = buffer.toString();
    setState(() {});
  }
}
