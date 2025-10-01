import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';

OutlineInputBorder customBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: AppColors.gold),
  );
}
