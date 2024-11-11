import 'package:flutter/material.dart';

import 'package:mocha_hive/themes/default_theme.dart';

import 'package:mocha_hive/pages/authentication/sign_in.dart';


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
      theme: theme.dark(),
      themeMode: ThemeMode.dark,
      home: const SignIn(),
    );
  }
}
