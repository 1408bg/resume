import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  Brightness _themeMode;

  ThemeNotifier(this._themeMode);

  Brightness get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode = _themeMode == Brightness.light ? Brightness.dark : Brightness.light;
    notifyListeners();
  }
}