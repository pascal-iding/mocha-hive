
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/form_elements/secondary_button.dart';


class LikeList extends StatefulWidget {
  const LikeList({super.key});

  @override
  State<LikeList> createState() => _LikeListState();
}

class _LikeListState extends State<LikeList> {
  List<String> _likes = [
    'assets/images/default_profile_picture.jpg',
    'assets/images/default_profile_picture.jpg',
    'assets/images/default_profile_picture.jpg',
    'assets/images/default_profile_picture.jpg',
    'assets/images/default_profile_picture.jpg',
    'assets/images/default_profile_picture.jpg',
    'assets/images/default_profile_picture.jpg',
    'assets/images/default_profile_picture.jpg',
    'assets/images/default_profile_picture.jpg',
    'assets/images/default_profile_picture.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _getLikes(),
        ),
      ],
    );
  }

  Widget _getLikes() {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        SecondaryButton(
          iconPath: 'assets/icons/heart_icon.svg',
          borderColor: Theme.of(context).colorScheme.tertiary,
          onPressed: () {},
        ),
        ..._likes.map((like) => _getLikeImage(like)),
      ],
    );
  }

  Widget _getLikeImage(String imagePath) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}