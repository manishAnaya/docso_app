import 'package:docso_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FilledButtonThemeMode {
  FilledButtonThemeMode._();

  static FilledButtonThemeData light = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      disabledBackgroundColor: AppColors.primary.withValues(alpha: 0.8),
      foregroundColor: AppColors.white,
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static FilledButtonThemeData dark = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      foregroundColor: AppColors.white,
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
