
import 'package:flutter/material.dart';

import 'package:mocha_hive/themes/default_theme.dart';
import 'package:mocha_hive/pages/main_page/main_page.dart';


// This is the starting point of the application.
void main() {
  const theme = DefaultTheme();
  runApp(const MainApp(theme: theme));
}

class MainApp extends StatelessWidget {
  final DefaultTheme theme;

  const MainApp({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MochaHive',
      theme: theme.light(),
      themeMode: ThemeMode.light,
      home: const MainPage(),
    );
  }
}
