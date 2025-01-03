
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/form_elements/option_selection_field.dart';
import 'package:mocha_hive/pages/main_page/pages/calendar_page/my_hangouts_tab/hangout_field/hangout_field.dart';
import 'package:mocha_hive/pages/main_page/pages/calendar_page/my_hangouts_tab/date_seperator/date_seperator.dart';


class MyHangoutsPage extends StatefulWidget {
  const MyHangoutsPage({super.key});

  @override
  State<MyHangoutsPage> createState() => _MyHangoutsPageState();
}


class _MyHangoutsPageState extends State<MyHangoutsPage> {
  
  void _onIndexChanged(int index) {
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17.0),
      child: Column(
        children: [
          OptionSelectionField(
            onIndexChanged: _onIndexChanged,
          ),
          const SizedBox(height: 17.0),
          DateSeperator(date: DateTime.now()),
          const SizedBox(height: 17.0),
          HangoutField(
            profilePicture: 'assets/images/test_profile_picture.png',
            title: 'Kaffee trinken',
          )
        ]
      )
    );
  }
}