import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceIn),
    );
    _animationController.forward;
    // Navigator.of(context).pushReplacementNamed(AppRoutes.introRoute1);
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (_, _) {
          return Transform.scale(
            scale: _animation.value,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.assetsImagesLogo),
                const Spacer(),
                Image.asset(Assets.assetsImagesRoutegold),
                const Text(
                  'Supervised by Mohamed Nabil',
                  style: TextStyle(color: AppColors.brown, fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
