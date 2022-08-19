import 'package:flutter/material.dart';

class AppSettingProvider extends ChangeNotifier {
  bool _isBlackTheme = false;

  Brightness get currentTheme =>
      _isBlackTheme ? Brightness.dark : Brightness.light;

  bool get currentThemeIsBlack => _isBlackTheme;

  void updateTheme(bool isBlack) {
    _isBlackTheme = isBlack;
    notifyListeners();
  }
}
