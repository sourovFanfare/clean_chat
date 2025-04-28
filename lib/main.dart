import 'package:clean_chat/core/theme/app_theme.dart';
import 'package:clean_chat/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/injection_container.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(CleanChatApp());
}

class CleanChatApp extends StatelessWidget {
  CleanChatApp({super.key});

  final _lightTheme = AppLightThemeData();
  final _darkTheme = AppDarkThemeData();

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      darkTheme: _darkTheme,
      lightTheme: _lightTheme,
      child: MaterialApp.router(
        title: Constant.appName,
        theme: _lightTheme.materialThemeData,
        darkTheme: _darkTheme.materialThemeData,
        routerConfig: getIt<AppRouter>().router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
