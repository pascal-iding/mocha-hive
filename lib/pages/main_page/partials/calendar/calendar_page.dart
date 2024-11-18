
import 'package:flutter/material.dart';

import 'package:mocha_hive/pages/main_page/partials/calendar/partials/my_calendar_tab.dart';


class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const SizedBox(height: 17),
            TabBar(
              labelPadding: const EdgeInsets.all(0),
              dividerColor: Theme.of(context).colorScheme.onSurfaceVariant,
              tabs: [
                _getTab('Mein Kalender'),
                _getTab('Meine Hangouts'),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 17),
                      MyCalendarTab(),
                    ],
                  ),
                  Center(child: Text('Content for Tab 2')),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget _getTab(String title) {
    return Tab(
      child: Row(
        children: [
          Expanded(
            child: Text(
              title, 
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            )
          )
        ],
      )
    );
  }
}

