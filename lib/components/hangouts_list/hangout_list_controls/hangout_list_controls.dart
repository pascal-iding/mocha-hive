
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/form_elements/secondary_button.dart';


class HangoutListControls extends StatefulWidget {
  const HangoutListControls({super.key});

  @override
  State<HangoutListControls> createState() => _HangoutListControlsState();
}


class _HangoutListControlsState extends State<HangoutListControls> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/default_profile_picture.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              '@sara_123',
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ]
        ),
        Row(
          children: [
            SecondaryButton(
              iconPath: 'assets/icons/corner_down_left.svg',
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            SecondaryButton(
              iconPath: 'assets/icons/corner_down_right.svg',
              onPressed: () {},
            ),
            const SizedBox(width: 10),
            SecondaryButton(
              iconPath: 'assets/icons/heart_icon.svg',
              borderColor: Theme.of(context).colorScheme.tertiary,
              onPressed: () {},
            ),
          ]
        )
      ]
    );
  }
}