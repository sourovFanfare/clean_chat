import 'package:clean_chat/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme textTheme = const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 14,
      color: AppColor.darkTeal900,
    ),
    headlineMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: AppColor.darkTeal900,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColor.darkTeal900,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      color: AppColor.darkTeal900,
    ),
  );
}
