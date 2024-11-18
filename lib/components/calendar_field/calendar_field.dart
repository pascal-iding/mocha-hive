
import 'dart:math';

import 'package:flutter/material.dart';


class CalendarField extends StatefulWidget {
  const CalendarField({super.key});

  @override
  State<CalendarField> createState() => _CalendarFieldState();
}

class _CalendarFieldState extends State<CalendarField> {
  final ScrollController _horizontalScrollController = ScrollController();
  List<DateTime> _dateRange = [];
  List<List<List<bool>>> _selectedTimes = [
    List.generate(15, (i) => List.generate(15, (j) => (i + j) % 2 == 0)),
    List.generate(15, (i) => List.generate(15, (j) => (i + j) % 3 == 0)),
    List.generate(15, (i) => List.generate(15, (j) => (i + j) % 5 == 0)),
  ];

  @override
  void initState() {
    super.initState();
    _getDateRange();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _horizontalScrollController.position.isScrollingNotifier.addListener(() { 
        if(!_horizontalScrollController.position.isScrollingNotifier.value) {
          _adjustScrollPosition();
        }
      });
    });
  }

  @override
  void dispose() {
    _horizontalScrollController.position.isScrollingNotifier.removeListener(() {});
    _horizontalScrollController.dispose();
    super.dispose();
  }

  void _adjustScrollPosition() {
    double currentScrollPosition = _horizontalScrollController.position.pixels;
    double newScrollPosition = (currentScrollPosition / 63).round() * 63;
    _horizontalScrollController.jumpTo(newScrollPosition);
  }

  void _getDateRange() {
    DateTime today = DateTime.now();
    List<DateTime> dateRange = [];

    for (int i = 0; i <= 14; i++) {
      dateRange.add(today.add(Duration(days: i)));
    }

    if (!mounted) return;

    setState(() {
      _dateRange = dateRange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 63,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).primaryColor.withOpacity(0.3),
          ),
          child: Column(
            children: [
              const SizedBox(height: 63),
              for (int i = 9; i < 24; i++)
                Container(
                  width: 63,
                  height: 63,
                  alignment: Alignment.center,
                  child: Text(
                    '${i.toString().padLeft(2, '0')}:00',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            controller: _horizontalScrollController,
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _getDateField(),
                _getTimeSelectionField(),
              ]
            )
          )
        )
      ],
    );
  }

  Widget _getTimeSelectionField() {
    return Row(
      children: [
        for (int i = 0; i < 15; i++)
          _getTrack(i),
      ]
    );
  }

  Widget _getTimeSlotContainer(int rowIndex, int columnIndex) {
    int userNumber = _selectedTimes.length;
    int totalUsers = 0;

    for (List<List<bool>> user in _selectedTimes) {
      if (user[rowIndex][columnIndex]) {
        totalUsers++;
      }
    }

    double opacity = totalUsers / userNumber;

    return SizedBox(
      width: 63 - 6,
      height: 63,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(opacity),
        ),
      ),
    );
  }

  Widget _getTrack(int rowIndex) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 63,
            height: 63 * 15,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 3, right: 3),
            child: Column(
              children: [
                for (int i = 0; i < 15; i++)
                  _getTimeSlotContainer(rowIndex, i),
              ],
            ),
          ),
        ),
        Container(
          width: 63,
          height: 63 * 15,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 63/2, bottom: 63/2),
          child: Container(
            width: 1,
            color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.3),
          ),
        ),
        Container(
          width: 63,
          height: 63 * 15,
          alignment: Alignment.center,
          child: Column(
            children: [
              for (int i = 0; i < 15; i++)
              SizedBox(
                width: 63,
                height: 63,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              )
            ]
          )
        )
      ]
    );
  }

  Widget _getDateField() {
    return Row(
      children: [
        for (DateTime date in _dateRange)
          Container(
            width: 63,
            height: 63,
            alignment: Alignment.center,
            child: Text(
              '${_getShortMonthName(date.month)}/${date.day.toString()}',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            )
          ),
        Container(
          width: 63,
          height: 63,
        )
      ]
    );
  }

  String _getShortMonthName(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mär';
      case 4:
        return 'Apr';
      case 5:
        return 'Mai';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Okt';
      case 11:
        return 'Nov';
      case 12:
        return 'Dez';
      default:
        throw Exception('Invalid month');
    }
  }
}