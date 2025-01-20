
import 'package:flutter/material.dart';
import 'package:vxstate/vxstate.dart';

import 'package:mocha_hive/layouts/main_page_layout/default_appbar/default_appbar.dart';
import 'package:mocha_hive/layouts/main_page_layout/sticky_header/sticky_header.dart';
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
  final bool hideStickyHeader;

  const MainPageLayout({
    super.key, 
    required this.children,
    this.tabBarLength = 0,
    this.tabBarTitles = const [],
    this.showBackButton = false,
    this.onTabIndexChanged,
    this.hideStickyHeader = false,
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
    VxState.watch(context, on: [SetOnSearchBarChanged]);
    MainPageStore store = VxState.store as MainPageStore;

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
                if (!widget.hideStickyHeader)
                  StickyHeader(
                    tabBarTitles: widget.tabBarTitles, 
                    onTabChange: _onTabChange,
                    showSearch: store.onSearchBarChanged != null,
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