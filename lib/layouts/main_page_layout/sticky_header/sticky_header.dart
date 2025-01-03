
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/main_page_layout/sticky_header/sliver_appbar_delegate/sliver_appbar_delegate.dart';
import 'package:mocha_hive/components/form_elements/text_input.dart';


class StickyHeader extends StatefulWidget {
  final List<String> tabBarTitles;
  final Function(int) onTabChange;
  final bool showSearch;

  const StickyHeader({
    super.key,
    required this.tabBarTitles,
    required this.onTabChange,
    this.showSearch = true,
  });

  @override
  State<StickyHeader> createState() => _StickyHeaderState();
}

class _StickyHeaderState extends State<StickyHeader> {
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      floating: true,
      delegate: SliverAppBarDelegate(
        minHeight: widget.showSearch? 45 + 45 + 17 + 17: 45 + 17,
        maxHeight: widget.showSearch? 45 + 45 + 17 + 17: 45 + 17,
        child: Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
          child: Column(
            children: [
              SizedBox(
                height: 45,
                child: TabBar(
                  padding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  labelPadding: EdgeInsets.zero,
                  dividerColor: Theme.of(context).colorScheme.onSurfaceVariant,
                  onTap: (index) => widget.onTabChange(index),
                  tabs: widget.tabBarTitles.map((title) => _getTab(title)).toList(),
                ),
              ),
              if (widget.showSearch!)
                const SizedBox(height: 17),
              if (widget.showSearch!)
                const TextInput(
                  hint: 'Suche ...',
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getTab(String title) {
    return Tab(
      child: Row(
        children: [
          Expanded(
            child: Text(
              title, 
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            )
          )
        ],
      )
    );
  }
}