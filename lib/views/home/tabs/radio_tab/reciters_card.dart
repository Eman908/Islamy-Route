import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';

class RecitersCard extends StatefulWidget {
  const RecitersCard({super.key});

  @override
  State<RecitersCard> createState() => _RecitersCardState();
}

class _RecitersCardState extends State<RecitersCard> {
  bool _isPlaying = false;
  bool _volumnUp = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      margin: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.gold,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Image.asset(
              Assets.assetsImagesSoundWave1,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            spacing: 16,
            children: [
              const Text(
                'Radio Ibrahim Al-Akdar',
                style: TextStyle(fontSize: 20, color: AppColors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 16,
                children: [
                  InkWell(
                    onTap: () {
                      _isPlaying = !_isPlaying;
                      setState(() {});
                    },
                    child: Icon(
                      _isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 44,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _volumnUp = !_volumnUp;
                      setState(() {});
                    },
                    child: Icon(
                      _volumnUp ? Icons.volume_off : Icons.volume_up,
                      size: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ],
      ),
    );
  }
}
