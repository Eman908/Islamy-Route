import 'package:flutter/material.dart';
import 'package:islamy/views/home/tabs/radio_tab/reciters_card.dart';

class RecitersBuilder extends StatelessWidget {
  const RecitersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return RecitersCard(key: ValueKey(index));
        },
      ),
    );
  }
}
