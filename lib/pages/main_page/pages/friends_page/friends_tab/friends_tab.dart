import 'package:flutter/material.dart';

import 'package:mocha_hive/pages/main_page/pages/friends_page/friends_tab/friend_tile/friend_tile.dart';
import 'add_friend_modal/add_friend_modal.dart';
import 'package:mocha_hive/stores/mutations/floating_action_button.dart';
import 'package:mocha_hive/stores/mutations/search_bar.dart';


class FriendsTab extends StatefulWidget {
  const FriendsTab({super.key});

  @override
  State<FriendsTab> createState() => _FriendsTabState();
}

class _FriendsTabState extends State<FriendsTab> {
  final List<Map<String, String>> _friends = [
    {
      'name': 'Alice',
      'username': 'alice123'
    },
    {
      'name': 'Bob',
      'username': 'bob123'
    },
    {
      'name': 'Charlie',
      'username': 'charlie123'
    },
    {
      'name': 'David',
      'username': 'david123'
    },
    {
      'name': 'Eve',
      'username': 'eve123'
    },
    {
      'name': 'Frank',
      'username': 'frank123'
    },
    {
      'name': 'Grace',
      'username': 'grace123'
    },
  ];

  @override
  void initState() {
    super.initState();
    SetOnFloatingActionButtonClicked(() => showModal(context));
    SetOnSearchBarChanged(() => print('Search bar changed'));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 17.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: _friends.length,
      itemBuilder: (context, index) {
        return FriendTile(
          friend: _friends[index]
        );
      },
    );
  }

  void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AddFriendModal();
      },
    );
  }
}