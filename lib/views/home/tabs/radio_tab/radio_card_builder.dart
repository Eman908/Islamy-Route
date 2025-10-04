import 'package:flutter/material.dart';
import 'package:islamy/views/home/tabs/radio_tab/radio_card.dart';

class RadioCardBuilder extends StatelessWidget {
  const RadioCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return RadioCard(key: ValueKey(index));
        },
      ),
    );
  }
}
