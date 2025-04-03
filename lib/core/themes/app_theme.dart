import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:docso_app/constants/app_colors.dart';
import 'package:docso_app/core/themes/bottom_navbar_theme.dart';
import 'package:docso_app/core/themes/icon_button_theme.dart';
import 'app_bar_theme.dart';
import 'card_theme.dart';
import 'check_box_theme.dart';
import 'color_scheme.dart';
import 'filled_button_theme.dart';
import 'input_decoration_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    cardTheme: CardThemeMode.light,
    textTheme: GoogleFonts.nunitoTextTheme(),
    appBarTheme: AppBarThemeData.light,
    colorScheme: ColorSchemeData.light,
    filledButtonTheme: FilledButtonThemeMode.light,
    scaffoldBackgroundColor: AppColors.offWhite,
    checkboxTheme: CheckBoxThemeMode.checkboxTheme,
    inputDecorationTheme: InputDecorationThemeMode.light,
    iconButtonTheme: IconButtonThemeMode.light,
    bottomNavigationBarTheme: BottomNavbarThemeMode.light,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    cardTheme: CardThemeMode.dark,
    appBarTheme: AppBarThemeData.dark,
    colorScheme: ColorSchemeData.dark,
    filledButtonTheme: FilledButtonThemeMode.dark,
    checkboxTheme: CheckBoxThemeMode.checkboxTheme,
    inputDecorationTheme: InputDecorationThemeMode.dark,
    iconButtonTheme: IconButtonThemeMode.dark,
    toggleButtonsTheme: ToggleButtonsThemeData(selectedColor: AppColors.white),
    bottomNavigationBarTheme: BottomNavbarThemeMode.dark,
  );
}
