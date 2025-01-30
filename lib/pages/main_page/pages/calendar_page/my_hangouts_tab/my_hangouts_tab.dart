
import 'package:flutter/material.dart';

import 'package:mocha_hive/stores/mutations/floating_action_button.dart';
import 'package:mocha_hive/stores/mutations/search_bar.dart';
import 'package:mocha_hive/components/dropdown_list/dropdown_list.dart';


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
    SetOnFloatingActionButtonClicked(() => print('FloatingActionButton clicked'));
    SetOnSearchBarChanged(() => print('Search bar changed'));

    return Padding(
      padding: const EdgeInsets.only(top: 17.0),
      child: DropdownList(
        dropdownGroups: [
          DropdownGroup(
            headerTitle: 'Von mir erstellt',
            headerIcon: 'assets/icons/eye_icon.svg',
            items: [
              DropdownItem(
                title: 'Fußball spielen', 
                additionalInfo: 'Erstellt am 12.09.2021', 
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/test_profile_picture.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              DropdownItem(
                title: 'Fußball spielen', 
                additionalInfo: 'Erstellt am 12.09.2021', 
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/test_profile_picture.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
          DropdownGroup(
            headerTitle: 'Von mir markiert',
            headerIcon: 'assets/icons/heart_icon.svg',
            items: [
              DropdownItem(
                title: 'Fußball spielen', 
                additionalInfo: 'Erstellt am 12.09.2021', 
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/test_profile_picture.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              DropdownItem(
                title: 'Fußball spielen', 
                additionalInfo: 'Erstellt am 12.09.2021', 
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/test_profile_picture.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}