
import 'package:flutter/material.dart';


class HangoutField extends StatefulWidget {
  final String profilePicture;
  final String title;

  const HangoutField({
    super.key,
    required this.profilePicture,
    required this.title,
  });

  @override
  State<HangoutField> createState() => _HangoutFieldState();
}


class _HangoutFieldState extends State<HangoutField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            widget.profilePicture,
            width: 45.0,
            height: 45.0,
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Container(
            height: 45.0,
            padding: const EdgeInsets.only(left: 10.0),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Theme.of(context).colorScheme.outline,
                width: 1.0,
              ),
            ),
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.bodyMedium,
              overflow: TextOverflow.ellipsis,
            )
          )
        )
      ],
    );
  }
}