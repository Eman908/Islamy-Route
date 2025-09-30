import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';

class QuraanListBuilder extends StatelessWidget {
  const QuraanListBuilder({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
  });
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: itemBuilder,
      separatorBuilder: (_, _) {
        return const Divider(color: AppColors.white, indent: 40, endIndent: 40);
      },
      itemCount: itemCount,
    );
  }
}
