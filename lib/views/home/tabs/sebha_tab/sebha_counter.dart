import 'package:flutter/material.dart';
import 'package:islamy/core/app_assets.dart';
import 'package:islamy/core/app_colors.dart';

class SebhaCounter extends StatefulWidget {
  const SebhaCounter({super.key});

  @override
  State<SebhaCounter> createState() => _SebhaCounterState();
}

class _SebhaCounterState extends State<SebhaCounter> {
  int _counter = 0;
  int _round = 1;
  String sebha = '';
  double _rotationAngle = 0;
  @override
  void dispose() {
    _rotationAngle = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        counterLogic();
        setState(() {
          _rotationAngle += 0.1;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedRotation(
            duration: const Duration(milliseconds: 300),
            turns: _rotationAngle,
            child: Image.asset(
              Assets.assetsImagesSebhaBody1,
              fit: BoxFit.cover,
            ),
          ),

          Text(
            '$tsbeeh\n$_counter',
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.offWhite, fontSize: 36),
          ),
        ],
      ),
    );
  }

  String get tsbeeh {
    switch (_round) {
      case 1:
        return 'سبحان الله';
      case 2:
        return 'الحمدلله';
      case 3:
        return 'الله اكبر';
      default:
        return '';
    }
  }

  counterLogic() {
    if (_counter < 33) {
      _counter++;
    } else {
      _counter = 0;
      _round == 1
          ? _round++
          : _round == 2
          ? _round++
          : _round = 1;
    }
    setState(() {});
  }
}
