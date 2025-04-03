import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';

class InputDecorationThemeMode {
  InputDecorationThemeMode._();
  static InputDecorationTheme light = InputDecorationTheme(
    isDense: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
      borderSide: BorderSide(color: AppColors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
      borderSide: BorderSide(color: AppColors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
      borderSide: BorderSide(color: AppColors.primary),
    ),
  );

  static InputDecorationTheme dark = InputDecorationTheme(
    isDense: true,
    filled: true,
    fillColor: AppColors.jetBlack,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
    ),
  );
}
