
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/main_page_layout/default_appbar/default_appbar.dart';
import 'package:mocha_hive/layouts/main_page_layout/sticky_header/sticky_header.dart';


class MainPageLayout extends StatefulWidget {
  final List<Widget> children;
  final int tabBarLength;
  final List<String> tabBarTitles;
  final bool? showBackButton;
  final bool showSearch;
  final Function? onTabIndexChanged;

  const MainPageLayout({
    super.key, 
    required this.children,
    this.tabBarLength = 0,
    this.tabBarTitles = const [],
    this.showBackButton = false,
    this.showSearch = true,
    this.onTabIndexChanged,
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
        const DefaultAppBar(
          title: 'MochaHive',
          showBackButton: false,
        ),

        Expanded(
          child: DefaultTabController(
            length: widget.tabBarLength,
            child: CustomScrollView(
              slivers: [
                StickyHeader(
                  tabBarTitles: widget.tabBarTitles, 
                  onTabChange: _onTabChange,
                  showSearch: widget.showSearch,
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                        child: widget.children[_tabBarIndex],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]
    );
  }
}