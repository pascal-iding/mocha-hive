
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/calendar_field/calendar_field.dart';


class MyCalendarTab extends StatefulWidget {
  const MyCalendarTab({super.key});

  @override
  State<MyCalendarTab> createState() => _MyCalendarTabState();
}

class _MyCalendarTabState extends State<MyCalendarTab> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: CalendarField(),
      ),
    );
  }
}