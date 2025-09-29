import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';

class QuraanListBuilder extends StatelessWidget {
  const QuraanListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Placeholder();
      },
      separatorBuilder: (_, _) {
        return const Divider(color: AppColors.white, indent: 60, endIndent: 60);
      },
      itemCount: 10,
    );
  }
}
