import 'package:flutter/material.dart';
import 'package:wallpaperx/core/route/app_route.dart';
import 'package:wallpaperx/core/route/app_route_name.dart';
import 'package:wallpaperx/core/theme/app_theme.dart';
import 'package:wallpaperx/main_module.dart';

void main() {
  MainModule.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Photo Editor App",
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,
      initialRoute: AppRouteName.getStarted,
      onGenerateRoute: AppRoute.generate,
    );
  }
}
