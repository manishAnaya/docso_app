import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class AppBarThemeData {
  AppBarThemeData._();

  static AppBarTheme light = AppBarTheme(
    backgroundColor: AppColors.offWhite,
    surfaceTintColor: AppColors.offWhite,
  );

  static AppBarTheme dark = AppBarTheme(
    backgroundColor: AppColors.black,
    surfaceTintColor: AppColors.black,
  );
}
