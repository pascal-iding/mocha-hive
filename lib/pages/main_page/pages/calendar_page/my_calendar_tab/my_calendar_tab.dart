
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/calendar_field/calendar_field.dart';
import 'package:mocha_hive/stores/mutations/floating_action_button.dart';


class MyCalendarPage extends StatefulWidget {
  const MyCalendarPage({super.key});

  @override
  State<MyCalendarPage> createState() => _MyCalendarPageState();
}

class _MyCalendarPageState extends State<MyCalendarPage> {
  
  @override
  Widget build(BuildContext context) {
    SetOnFloatingActionButtonClicked(null);

    return const CalendarField();
  }
}