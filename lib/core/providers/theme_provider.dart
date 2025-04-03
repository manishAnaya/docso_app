import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _selectedTheme = ThemeMode.light;

  ThemeMode get selectedTheme => _selectedTheme;

  void toggleTheme() {
    if (_selectedTheme == ThemeMode.light) {
      _selectedTheme = ThemeMode.dark;
    } else {
      _selectedTheme = ThemeMode.light;
    }
    notifyListeners();
  }
}
