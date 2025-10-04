import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/views/home/tabs/radio_tab/custom_button.dart';
import 'package:islamy/views/home/tabs/radio_tab/radio_card_builder.dart';
import 'package:islamy/views/home/tabs/radio_tab/reciters_builder.dart';

class RadioTabBody extends StatefulWidget {
  const RadioTabBody({super.key});

  @override
  State<RadioTabBody> createState() => _RadioTabBodyState();
}

class _RadioTabBodyState extends State<RadioTabBody> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * .23),
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.black.withAlpha(150),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              CustomButton(
                onTap: () {
                  _selectedIndex = 0;
                  setState(() {});
                },
                title: 'Radio',
                isSelected: _selectedIndex,
                index: 0,
              ),
              CustomButton(
                onTap: () {
                  _selectedIndex = 1;
                  setState(() {});
                },
                title: 'Reciters',
                isSelected: _selectedIndex,
                index: 1,
              ),
            ],
          ),
        ),
        _selectedIndex == 0
            ? const RadioCardBuilder()
            : const RecitersBuilder(),
      ],
    );
  }
}
