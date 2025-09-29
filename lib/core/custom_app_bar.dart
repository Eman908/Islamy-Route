import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';

PreferredSize customAppBar(BuildContext context) {
  return PreferredSize(
    preferredSize: Size.fromHeight(MediaQuery.sizeOf(context).height * .2),
    child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(Assets.assetsImagesMosque01, fit: BoxFit.cover),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                    colors: [Color(0xffC0A37C), Color(0xffFFD482)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcIn,
                child: const Text(
                  'Islamy',
                  style: TextStyle(
                    fontFamily: 'Kamali',
                    color: AppColors.gold,
                    fontSize: 70,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
