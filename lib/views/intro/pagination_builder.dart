import 'package:flutter/material.dart';
import 'package:islamy/views/intro/active_inactive_pagination.dart';

class PaginationBuilder extends StatelessWidget {
  const PaginationBuilder({
    super.key,
    required this.currentPage,
    required this.length,
  });
  final int currentPage, length;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(length, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: ActiveInactivePagination(isActive: index == currentPage),
        );
      }),
    );
  }
}
