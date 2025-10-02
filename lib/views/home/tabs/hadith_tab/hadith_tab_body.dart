import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/core/app_routes.dart';
import 'package:islamy/views/home/models/hadith_model.dart';
import 'package:islamy/views/home/tabs/hadith_tab/hadith_card.dart';
import 'package:islamy/views/home/tabs/hadith_tab/hadith_card_builder.dart';

class HadithTabBody extends StatefulWidget {
  const HadithTabBody({super.key});

  @override
  State<HadithTabBody> createState() => _HadithTabBodyState();
}

class _HadithTabBodyState extends State<HadithTabBody> {
  List<HadithModel> hadit = [];
  @override
  void initState() {
    loadHadith();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * .2),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: HadithCardBuilder(
              items:
                  hadit
                      .map(
                        (e) => InkWell(
                          onTap: () {
                            Navigator.of(
                              context,
                            ).pushNamed(AppRoutes.hadithRoute, arguments: e);
                          },
                          child: HadithCard(title: e.title, content: e.content),
                        ),
                      )
                      .toList(),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> loadHadith() async {
    hadit = [];
    for (int i = 1; i <= 50; i++) {
      await getHadith(i);
    }
    setState(() {});
  }

  Future<void> getHadith(int number) async {
    String content = await rootBundle.loadString(
      'assets/files/Hadeeth/h$number.txt',
    );
    List<String> hadithPattern = content.trim().split('\n');
    if (hadithPattern.isNotEmpty) {
      String title = hadithPattern[0].trim();
      content = hadithPattern.sublist(1).join(" ").trim();
      hadit.add(HadithModel(title: title, content: content));
    }
  }
}
