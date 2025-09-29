import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/home/home_view.dart';
import 'package:islamy/views/intro/intro_widget.dart';
import 'package:islamy/views/intro/pagination_builder.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  int _currentPage = 0;
  final List<Widget> _pages = const [
    IntroWidget(
      image: Assets.assetsImagesWelcome,
      title: 'Welcome To Islmi App',
      subTitle: '',
    ),
    IntroWidget(
      image: Assets.assetsImagesKabba,
      title: 'Welcome To Islami',
      subTitle: 'We Are Very Excited To Have You In Our Community',
    ),
    IntroWidget(
      image: Assets.assetsImagesWelcome2,
      title: 'Reading the Quran',

      subTitle: 'Read, and your Lord is the Most Generous',
    ),
    IntroWidget(
      image: Assets.assetsImagesBearish,
      title: 'Bearish',

      subTitle: 'Praise the name of your Lord, the Most High',
    ),
    IntroWidget(
      image: Assets.assetsImagesRadio,
      title: 'Holy Quran Radio',

      subTitle:
          'You can listen to the Holy Quran Radio through the application for free and easily',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.sizeOf(context).height * .2),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(Assets.assetsImagesMosque01, fit: BoxFit.cover),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Islamy',
                    style: TextStyle(
                      fontFamily: 'Kamali',
                      color: AppColors.gold,
                      fontSize: 70,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _pages[_currentPage],
            ),
          ),
          _buildNavigation(),
        ],
      ),
    );
  }

  Widget _buildNavigation() {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _currentPage > 0
              ? TextButton(
                onPressed:
                    _currentPage > 0
                        ? () => setState(() => _currentPage--)
                        : null,
                child: const Text(
                  'Back',
                  style: TextStyle(
                    color: AppColors.gold,
                    fontFamily: 'Janna',
                    fontSize: 18,
                  ),
                ),
              )
              : TextButton(onPressed: () {}, child: const Text('')),
          PaginationBuilder(currentPage: _currentPage, length: _pages.length),

          TextButton(
            onPressed: () {
              _currentPage < _pages.length - 1
                  ? setState(() => _currentPage++)
                  : Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomeView();
                      },
                    ),
                  );
            },
            child: Text(
              _currentPage == _pages.length - 1 ? 'Finish' : 'Next',
              style: const TextStyle(
                color: AppColors.gold,
                fontFamily: 'Janna',
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
