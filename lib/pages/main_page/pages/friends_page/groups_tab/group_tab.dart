
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/dropdown_list/dropdown_list.dart';


class GroupTab extends StatefulWidget {
  const GroupTab({super.key});

  @override
  State<GroupTab> createState() => _GroupTabState();
}


class _GroupTabState extends State<GroupTab> {
  @override
  Widget build(BuildContext context) {
    return DropdownList(
      dropdownGroups: [
        DropdownGroup(
          items: [
            DropdownItem(
              title: 'Alle', 
              additionalInfo: 'Mitglieder: 12', 
              child: Center(
                child: Text(
                  'A',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                  ),
                ),
              )
            ),
            
          ],
        ),
      ],
    );
  }
}