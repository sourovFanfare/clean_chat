import 'package:clean_chat/core/utils/constant.dart';
import 'package:flutter/material.dart';

import 'app_text_theme.dart';

class AppLightThemeData implements AppThemeData {
  @override
  ThemeData get materialThemeData => ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(),
      textTheme: AppTextTheme.textTheme,
      fontFamily: Constant.fontFamily);
}

class AppDarkThemeData implements AppThemeData {
  @override
  ThemeData get materialThemeData => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(),
      textTheme: AppTextTheme.textTheme,
      fontFamily: Constant.fontFamily);
}

abstract class AppThemeData {
  ThemeData get materialThemeData;
}
