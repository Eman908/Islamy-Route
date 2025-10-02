import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, subTitle, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            image,
            width: MediaQuery.sizeOf(context).width * .9,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.gold,
              fontFamily: 'Janna',
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColors.gold,
              fontFamily: 'Janna',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
