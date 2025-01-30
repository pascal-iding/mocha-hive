import 'dart:math';

import 'package:flutter/material.dart';

import './hangout/hangout.dart';
import './hangout_list_controls/hangout_list_controls.dart';

class HangoutsList extends StatefulWidget {
  const HangoutsList({super.key});

  @override
  State<HangoutsList> createState() => _HangoutsListState();
}

class _HangoutsListState extends State<HangoutsList> {
  List<Hangout> _hangouts = [
    Hangout(
      title: 'Ins Kino gehen', 
      description: 'Hab gehört Gestiefelter Kater soll lustig sein :)',
      date: '12.12.2021',
      groupSize: '5',
      meetingPoint: 'Kino am Bahnhof',
      category: 'assets/images/categories/popcorn.jpg',
    ),
    Hangout(
      title: 'Kaffee trinken', 
      description: 'Kaffee trinken und quatschen',
      date: '12.12.2021',
      groupSize: '5',
      meetingPoint: 'Café am Marktplatz',
      category: 'assets/images/categories/museum.jpg',
    ),
    Hangout(
      title: 'Spazieren gehen', 
      description: 'Spazieren gehen und quatschen',
      date: '12.12.2021',
      groupSize: '5',
      meetingPoint: 'Park am Fluss',
      category: 'assets/images/categories/sport.jpg',
    ),
  ];
  int _currentHangoutIndex = 0;
  Offset _position = Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // HangoutListControls(),
        // const SizedBox(height: 10),
        Expanded(
          child: PageView(
            children: [
              for (var hangout in _hangouts)
                hangout
            ],
          ),
        )
      ],
    );
  }
}