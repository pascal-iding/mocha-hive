
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/main_page_layout/main_page_layout.dart';
import 'package:mocha_hive/pages/main_page/pages/calendar_page/my_calendar_tab/my_calendar_tab.dart';
import 'package:mocha_hive/pages/main_page/pages/calendar_page/my_hangouts_tab/my_hangouts_tab.dart';


class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return MainPageLayout(
      tabBarLength: 2,
      tabBarTitles: const ['Mein Kalender', 'Meine Hangouts'],
      children: const [
        MyCalendarPage(),
        MyHangoutsPage(),
      ],
    );
  }
}
