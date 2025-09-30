import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/home/models/quraan_model.dart';
import 'package:islamy/views/home/tabs/quraan_tab/quraan_list_builder.dart';
import 'package:islamy/views/home/tabs/quraan_tab/quraan_search_bar.dart';
import 'package:islamy/views/home/tabs/quraan_tab/quraan_sura_card.dart';

class QuraanTabBody extends StatefulWidget {
  const QuraanTabBody({super.key});

  @override
  State<QuraanTabBody> createState() => _QuraanTabBodyState();
}

class _QuraanTabBodyState extends State<QuraanTabBody> {
  List<QuraanModel> searchResultList = [];

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
          QuraanSearchBar(
            onChanged: (value) {
              _searchResult(value);
            },
          ),
          const Text(
            'Suras List',
            style: TextStyle(
              color: AppColors.white,
              fontFamily: 'Janna',
              fontSize: 16,
            ),
          ),
          Expanded(
            child:
                searchResultList.isEmpty
                    ? QuraanListBuilder(
                      itemBuilder: (_, index) {
                        return QuraanSuraCard(item: QuraanModel.sura[index]);
                      },
                      itemCount: QuraanModel.sura.length,
                    )
                    : QuraanListBuilder(
                      itemBuilder: (_, index) {
                        return QuraanSuraCard(item: searchResultList[index]);
                      },
                      itemCount: searchResultList.length,
                    ),
          ),
        ],
      ),
    );
  }

  void _searchResult(String value) {
    if (value.isEmpty) {
      searchResultList = [];
    } else {
      searchResultList =
          QuraanModel.sura
              .where(
                (e) =>
                    e.suraAr.contains(value) ||
                    e.suraEn.toLowerCase().contains(value.toLowerCase()),
              )
              .toList();
    }
    setState(() {});
  }
}
