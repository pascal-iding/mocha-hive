
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class BottomNavigationBar extends StatefulWidget {
  final Function(int) onItemTapped;

  const BottomNavigationBar({
    super.key,
    required this.onItemTapped,
  });

  @override
  State<BottomNavigationBar> createState() => _BottomNavigationBarState();
}


class _BottomNavigationBarState extends State<BottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/calendar_icon.svg', 
              width: 24
            ),
            onPressed: () => widget.onItemTapped(0),
          ),
          const SizedBox(width: 26),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/heart_icon.svg', 
              width: 24
            ),
            onPressed: () => widget.onItemTapped(1),
          ),
          const SizedBox(width: 26),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/users_icon.svg', 
              width: 24
            ),
            onPressed: () => widget.onItemTapped(2),
          ),
        ],
      ),
    );
  }
}