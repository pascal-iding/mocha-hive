
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/main_page_layout/main_page_layout_sticky_scroll.dart';
import 'package:mocha_hive/pages/main_page/pages/friends_page/friends_tab/friends_tab.dart';
import 'package:mocha_hive/pages/main_page/pages/friends_page/groups_tab/group_tab.dart';


class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return MainPageLayoutStickyScroll(
      tabBarLength: 2,
      tabBarTitles: const ['Freunde', 'Gruppen'],
      children: [
        FriendsTab(),
        GroupTab(),
      ],
    );
  }
}
