
import 'package:flutter/material.dart';

import './dropdown_group/dropdown_group.dart';
import './dropdown_group/dropdown_header.dart';
import './dropdown_group/dropdown_item.dart';

export './dropdown_group/dropdown_group.dart';
export './dropdown_group/dropdown_header.dart';
export './dropdown_group/dropdown_item.dart';


class DropdownList extends StatefulWidget {
  final List<DropdownGroup> dropdownGroups;

  const DropdownList({required this.dropdownGroups, super.key});

  @override
  State<DropdownList> createState() => _DropdownListState();
}


class _DropdownListState extends State<DropdownList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final group in widget.dropdownGroups) group,
      ],
    );
  }
}