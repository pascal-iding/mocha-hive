
import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

import 'package:mocha_hive/pages/main_page/pages/calendar_page/calendar_page.dart';
import 'package:mocha_hive/pages/main_page/pages/friends_page/friends_page.dart';
import 'package:mocha_hive/pages/main_page/pages/hangouts_page/hangouts_page.dart';
import 'package:mocha_hive/pages/main_page/sidebar/sidebar.dart';
import 'package:mocha_hive/pages/main_page/bottom_navigation_bar/bottom_navigation_bar.dart' as mocha_hive;
import 'package:mocha_hive/stores/main_page_store.dart';
import 'package:mocha_hive/components/DynamicFloatingActionButton.dart';
import 'package:mocha_hive/stores/mutations/floating_action_button.dart';


/// The main page is responsible for the 3 main sections of the app:
/// - Calendar
/// - Hangouts
/// - Friends
/// Each of those pages is a separate widget that is displayed in a PageView.
/// Those pages should use a main_page_layout as root layout.
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController();
  late List<Widget> _pagesList;

  @override
  void initState() {
    super.initState();
    _pagesList = <Widget>[
      CalendarPage(),
      HangoutsPage(),
      FriendsPage(),
    ];
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [SetOnFloatingActionButtonClicked]);
    MainPageStore store = VxState.store as MainPageStore;

    return Scaffold(
      endDrawer: const Sidebar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _pageController,
              children: _pagesList,
            ),
          ),
        ],
      ),
      floatingActionButton: store.onFloatingActionButtonClicked != null 
        ? DynamicFloatingActionButton(
            onPressed: store.onFloatingActionButtonClicked!,
        )
        : null,
      bottomNavigationBar: mocha_hive.BottomNavigationBar(
        onItemTapped: (int index) => _onItemTapped(index),
      ),
    );
  }
}