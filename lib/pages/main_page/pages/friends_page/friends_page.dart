
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/main_page_layout/main_page_layout.dart';
import 'package:mocha_hive/pages/main_page/pages/friends_page/friends_tab/friends_tab.dart';


class FriendsPage extends StatefulWidget {
  final Function(Widget?) onFloatingActionButtonChanged;

  const FriendsPage({required this.onFloatingActionButtonChanged, super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  bool _showSearchBar = true;

  void _onTabIndexChanged(int index) {
    setState(() {
      _showSearchBar = index == 1;
    });
  }

  void _onFloatingActionButtonChanged(Widget? fab) {
    widget.onFloatingActionButtonChanged(fab);
  }

  @override
  Widget build(BuildContext context) {
    return MainPageLayout(
      tabBarLength: 2,
      tabBarTitles: const ['Freunde', 'Gruppen'],
      showSearch: _showSearchBar,
      onTabIndexChanged: _onTabIndexChanged,
      children: [
        FriendsTab(onFloatingActionButtonChanged: (fab) {
          _onFloatingActionButtonChanged(fab);
        }),
        Center(child: Text('MyGroups')),
      ],
    );
  }
}
