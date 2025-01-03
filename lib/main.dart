
import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

import 'package:mocha_hive/themes/default_theme.dart';
import 'package:mocha_hive/pages/main_page/main_page.dart';
import 'package:mocha_hive/stores/main_page_store.dart';


// This is the starting point of the application.
void main() {
  const theme = DefaultTheme();
  runApp(
    VxState(
      store: MainPageStore(),
      child: const MainApp(theme: theme),
    ),
  );
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
