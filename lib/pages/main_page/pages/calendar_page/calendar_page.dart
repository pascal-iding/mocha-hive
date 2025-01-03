
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/main_page_layout/main_page_layout.dart';
import 'package:mocha_hive/pages/main_page/pages/calendar_page/my_calendar_tab/my_calendar_tab.dart';
import 'package:mocha_hive/pages/main_page/pages/calendar_page/my_hangouts_tab/my_hangouts_tab.dart';


class CalendarPage extends StatefulWidget {
  final Function(Widget?) onFloatingActionButtonChanged;

  const CalendarPage({required this.onFloatingActionButtonChanged, super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  bool _showSearchBar = false;

  void _onTabIndexChanged(int index) {
    setState(() {
      _showSearchBar = index == 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.onFloatingActionButtonChanged(null);

    return MainPageLayout(
      tabBarLength: 2,
      tabBarTitles: const ['Mein Kalender', 'Meine Hangouts'],
      showSearch: _showSearchBar,
      onTabIndexChanged: _onTabIndexChanged,
      children: const [
        MyCalendarPage(),
        MyHangoutsPage(),
      ],
    );
  }
}
