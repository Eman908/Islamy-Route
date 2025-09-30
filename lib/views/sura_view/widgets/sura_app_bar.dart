import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';

AppBar suraAppBar(String title) {
  return AppBar(
    toolbarHeight: 80,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    iconTheme: const IconThemeData(color: AppColors.gold),
    title: Text(title, style: const TextStyle(color: AppColors.gold)),
  );
}
