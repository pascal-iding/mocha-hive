
import 'package:flutter/material.dart';


class DropdownItem extends StatefulWidget {
  final String title;
  final String additionalInfo;
  final Widget child;

  const DropdownItem({
    super.key, 
    required this.title, 
    required this.additionalInfo, 
    required this.child
  });

  @override
  State<DropdownItem> createState() => _DropdownItemState();
}


class _DropdownItemState extends State<DropdownItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.tertiary,
          ),
          child: widget.child,
        ),
        const SizedBox(width: 25),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              widget.additionalInfo,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}