import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class IconButtonThemeMode {
  IconButtonThemeMode._();
  static IconButtonThemeData light = IconButtonThemeData(
    style: IconButton.styleFrom(
      minimumSize: const Size(20, 20),
      iconSize: 20,
      foregroundColor: AppColors.black,
    ),
  );

  static IconButtonThemeData dark = IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: AppColors.black,
      minimumSize: const Size(20, 20),
      iconSize: 20,
      foregroundColor: AppColors.white,
    ),
  );
}
