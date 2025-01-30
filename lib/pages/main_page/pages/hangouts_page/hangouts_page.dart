
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/main_page_layout/main_page_layout.dart';
import 'package:mocha_hive/stores/mutations/search_bar.dart';
import 'package:mocha_hive/stores/mutations/floating_action_button.dart';
import 'package:mocha_hive/components/hangouts_list/hangouts_list.dart';


class HangoutsPage extends StatefulWidget {
  const HangoutsPage({super.key});

  @override
  State<HangoutsPage> createState() => _HangoutsPageState();
}

class _HangoutsPageState extends State<HangoutsPage> {
  @override
  void initState() {
    super.initState();
    SetOnFloatingActionButtonClicked(null);
  }

  @override
  Widget build(BuildContext context) {
    SetOnSearchBarChanged(null);

    return const MainPageLayout(
      tabBarLength: 0,
      hideAppbar: true,
      padding: EdgeInsets.only(left: 0, right: 0, bottom: 0),
      children: [
        HangoutsList()
      ],
    );
  }
}