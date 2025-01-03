
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DefaultAppBar extends StatelessWidget {
  final bool showBackButton;
  final String title;

  const DefaultAppBar({
    super.key,
    this.showBackButton = false,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double topPadding = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: 25 + topPadding, left: 25, right: 25, bottom: 25),
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/test_profile_picture.png',
                  width: 45,
                  height: 45,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'm_c_pi',
                style: Theme.of(context).textTheme.labelMedium
              )
            ]
          ),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  if (showBackButton)
                    SvgPicture.asset(
                      'assets/icons/chevron_left_icon.svg',
                      width: 24
                    ),
                  if (showBackButton)
                    const SizedBox(width: 12),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge
                  ),
                ]
              ),
              SvgPicture.asset(
                'assets/icons/menu_icon.svg',
                width: 24
              )
            ]
          ),
        ],
      )
    );
  }
}