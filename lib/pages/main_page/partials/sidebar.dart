
import 'package:flutter/material.dart';


class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      color: Theme.of(context).colorScheme.surfaceContainerHigh,
      child: Column(
        children: [

        ]
      ),
    );
  }
}