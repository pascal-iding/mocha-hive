
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:mocha_hive/pages/main_page/partials/default_appbar.dart';
import 'package:mocha_hive/pages/main_page/partials/calendar/calendar_page.dart';
import 'package:mocha_hive/pages/main_page/partials/sidebar.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    CalendarPage(),
    Text('Hangouts'),
    Text('Friends'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Sidebar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultAppBar(
            title: _selectedIndex == 0 
              ? 'Kalender' 
              : _selectedIndex == 1 
              ? 'Hangouts' : 'Freunde',
            showBackButton: false,
            showSearchInput: false
          ),
          Expanded(
            child: _widgetOptions.elementAt(_selectedIndex)
          )
        ],
      ),
      bottomNavigationBar: _getBottomNavBar(context)
    );
  }

  Widget _getBottomNavBar(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/calendar_icon.svg', 
              width: 24
            ),
            onPressed: () => _onItemTapped(0),
          ),
          const SizedBox(width: 26),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/heart_icon.svg', 
              width: 24
            ),
            onPressed: () => _onItemTapped(1),
          ),
          const SizedBox(width: 26),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/users_icon.svg', 
              width: 24
            ),
            onPressed: () => _onItemTapped(2),
          ),
        ],
      ),
    );
  }
}