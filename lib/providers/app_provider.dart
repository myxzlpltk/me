import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool get isLightTheme => themeMode == ThemeMode.light;
  bool get isDarkTheme => themeMode == ThemeMode.dark;
  void toggleTheme() {
    if (isDarkTheme) {
      themeMode = ThemeMode.light;
    } else {
      themeMode = ThemeMode.dark;
    }
    notifyListeners();
  }
}
