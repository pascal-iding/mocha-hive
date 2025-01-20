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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HangoutListControls(),
        const SizedBox(height: 10),
        Text(
          '${_currentHangoutIndex + 1}/${_hangouts.length}',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 10),
        Stack(
          children: [
            // If user swipes to the right, show the previous hangout
            Opacity(
              opacity: _position.dx > 0 ? 1 : 0,
              child: _hangouts[_currentHangoutIndex == 0 ? _hangouts.length - 1: _currentHangoutIndex - 1],
            ),
            // If user swipes to the left, show the next hangout
            Opacity(
              opacity: _position.dx < 0 ? 1 : 0,
              child: _hangouts[_currentHangoutIndex + 1 >= _hangouts.length ? 0 : _currentHangoutIndex + 1],
            ),
            _getHangout(),
          ],
        )
      ],
    );
  }

  Widget _getHangout() {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          _position = Offset((_position.dx + details.primaryDelta!).clamp(-100.0, 100.0), 0);
        });
      },
      onHorizontalDragEnd: (details) {
        final dx = details.primaryVelocity!;
        
        if (_position.dx.abs() < 100){
          setState(() {
            _position = const Offset(0, 0);
          });
          return;
        }

        if (dx > 0) {
          print('Swipe right');
          setState(() {
            _currentHangoutIndex = _currentHangoutIndex - 1 < 0 
              ? _hangouts.length - 1 
              : _currentHangoutIndex - 1;
            _position = Offset(0, 0);
          });
        } else {
          setState(() {
            _currentHangoutIndex = _currentHangoutIndex + 1 >= _hangouts.length 
              ? 0
              : _currentHangoutIndex + 1;
            _position = Offset(0, 0);
          });
        }
      },
      child: Transform.translate(
        offset: _position,
        child: Transform.rotate(
          angle: (_position.dx / 100.0) * (pi / 8),
          child: _hangouts[_currentHangoutIndex],
        ),
      ),
    );
  }
}