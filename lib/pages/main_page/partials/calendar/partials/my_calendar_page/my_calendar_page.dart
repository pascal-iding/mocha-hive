
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/calendar_field/calendar_field.dart';


class MyCalendarPage extends StatefulWidget {
  const MyCalendarPage({super.key});

  @override
  State<MyCalendarPage> createState() => _MyCalendarPageState();
}

class _MyCalendarPageState extends State<MyCalendarPage> {
  
  @override
  Widget build(BuildContext context) {
    return const CalendarField();
  }
}