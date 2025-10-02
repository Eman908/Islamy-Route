import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HadithCardBuilder extends StatelessWidget {
  const HadithCardBuilder({super.key, this.items});
  final List<Widget>? items;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        height: double.infinity,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
      ),
    );
  }
}
