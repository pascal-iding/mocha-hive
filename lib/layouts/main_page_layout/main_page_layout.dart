
import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

import 'package:mocha_hive/layouts/main_page_layout/default_appbar/default_appbar.dart';
import 'package:mocha_hive/stores/main_page_store.dart';
import 'package:mocha_hive/stores/mutations/search_bar.dart';


class MainPageLayout extends StatefulWidget {
  // If tabBarLength is 0, then the first element in this list will be displayed.
  final List<Widget> children;
  // Set length to 0 if you don't want a tab bar.
  final int tabBarLength;
  final List<String> tabBarTitles;
  final bool? showBackButton;
  final Function? onTabIndexChanged;
  final bool hideAppbar;
  final EdgeInsets padding;

  const MainPageLayout({
    super.key, 
    required this.children,
    this.tabBarLength = 0,
    this.tabBarTitles = const [],
    this.showBackButton = false,
    this.onTabIndexChanged,
    this.hideAppbar = false,
    this.padding = const EdgeInsets.only(left: 25, right: 25, bottom: 25),
  });

  @override
  State<MainPageLayout> createState() => _MainPageLayoutState();
}


class _MainPageLayoutState extends State<MainPageLayout> {
  int _tabBarIndex = 0;

  void _onTabChange(int index) {
    setState(() => _tabBarIndex = index);
    if (widget.onTabIndexChanged != null) {
      widget.onTabIndexChanged!(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!widget.hideAppbar)
          const DefaultAppBar(
            title: 'MochaHive',
            showBackButton: false,
          ),

        Expanded(
          child: DefaultTabController(
            length: widget.tabBarLength,
            child: Container(
              padding: widget.padding,
              child: widget.children[_tabBarIndex],
            ),
          ),
        ),
      ]
    );
  }
}