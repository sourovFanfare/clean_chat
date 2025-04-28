import 'package:flutter/material.dart';

class AppLightThemeData implements AppThemeData {
  @override
  ThemeData get materialThemeData => ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(),
      );
}

class AppDarkThemeData implements AppThemeData {
  @override
  ThemeData get materialThemeData =>
      ThemeData(brightness: Brightness.dark, appBarTheme: const AppBarTheme());
}

abstract class AppThemeData {
  ThemeData get materialThemeData;
}
