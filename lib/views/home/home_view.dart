import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/core/custom_app_bar.dart';
import 'package:islamy/views/home/models/quraan_model.dart';
import 'package:islamy/views/home/selected_icon.dart';
import 'package:islamy/views/home/tabs/hadith_tab.dart';
import 'package:islamy/views/home/tabs/quraan_tab/quraan_tab.dart';
import 'package:islamy/views/home/tabs/radio_tab.dart';
import 'package:islamy/views/home/tabs/sebha_tab.dart';
import 'package:islamy/views/home/tabs/time_tab.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentTab = 0;
  final List<Widget> tabs = const [
    QuraanTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  @override
  void initState() {
    QuraanModel.getSura();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context),
      body: tabs[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.gold,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.black,
        selectedLabelStyle: const TextStyle(fontFamily: 'Janna', fontSize: 14),
        showUnselectedLabels: false,
        onTap: (index) {
          _currentTab = index;
          setState(() {});
        },
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(
            icon: _buildIcon(0, Assets.assetsIconsIcQuran),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(1, Assets.assetsIconsIcHadeth),

            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(2, Assets.assetsIconsIcSebha),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(3, Assets.assetsIconsIcRadio),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(4, Assets.assetsIconsIcTime),
            label: 'Time',
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(int index, String image) {
    return _currentTab == index
        ? SelectedIcon(image: image)
        : ImageIcon(AssetImage(image));
  }
}
