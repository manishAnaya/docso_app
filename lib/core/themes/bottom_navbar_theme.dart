import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class BottomNavbarThemeMode {
  BottomNavbarThemeMode._();

  static BottomNavigationBarThemeData light = BottomNavigationBarThemeData(
    backgroundColor: AppColors.white,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.black,
  );

  static BottomNavigationBarThemeData dark = BottomNavigationBarThemeData(
    backgroundColor: AppColors.jetBlack,
    selectedItemColor: AppColors.primary,
    unselectedItemColor: AppColors.white,
  );
}
