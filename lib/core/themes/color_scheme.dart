import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class ColorSchemeData {
  ColorSchemeData._();

  static ColorScheme light = ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    primary: AppColors.primary,
    primaryContainer: AppColors.white,
    surfaceDim: AppColors.lightBlack,
    onSurface: AppColors.darkGrey,
  );

  static ColorScheme dark = ColorScheme.dark(
    primary: AppColors.primary.withValues(alpha: 0.1),
    secondary: AppColors.white,
    primaryContainer: AppColors.jetBlack,
    surfaceContainerLowest: AppColors.black,
    onSurface: AppColors.grey,
  );
}
