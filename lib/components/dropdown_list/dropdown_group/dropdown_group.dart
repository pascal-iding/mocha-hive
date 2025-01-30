
import 'package:flutter/material.dart';

import './dropdown_header.dart';
import './dropdown_item.dart';


class DropdownGroup extends StatefulWidget {
  final String? headerTitle;
  final String? headerIcon;
  final List<DropdownItem> items;
  final bool isExpandedInitially;

  const DropdownGroup({
    super.key, 
    this.headerTitle, 
    required this.items,
    this.isExpandedInitially = true,
    this.headerIcon,
  });

  @override
  State<DropdownGroup> createState() => _DropdownGroupState();
}


class _DropdownGroupState extends State<DropdownGroup> {
  bool _showItems = true;

  @override
  void initState() {
    super.initState();
    _showItems = widget.isExpandedInitially;
  }

  void onHeaderTap() {
    setState(() {
      _showItems = !_showItems;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (widget.headerTitle != null && widget.headerIcon != null) 
          Column(
            children: [
              DropdownHeader(
                icon: widget.headerIcon!, 
                title: widget.headerTitle!,
                isExpandedInitially: widget.isExpandedInitially,
                onTap: onHeaderTap,
              ),
              const SizedBox(height: 10),
            ],
          ),
        if (_showItems)
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(0),
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  widget.items[index],
                  const SizedBox(height: 10),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    thickness: 1,
                    height: 0,
                  ),
                  const SizedBox(height: 10),
                ],
              );
            },
          )
      ],
    );
  }
}
