import 'package:docso_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CardThemeMode {
  CardThemeMode._();

  static CardTheme light = CardTheme(
    margin: EdgeInsets.zero,
    color: AppColors.white,
    elevation: 0.2,
  );

  static CardTheme dark = CardTheme(
    margin: EdgeInsets.zero,
    color: AppColors.jetBlack,
    elevation: 0.2,
  );
}
