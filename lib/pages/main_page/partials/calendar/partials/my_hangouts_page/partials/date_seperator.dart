
import 'package:flutter/material.dart';


class DateSeperator extends StatefulWidget {
  final DateTime date;

  const DateSeperator({
    super.key,
    required this.date,
  });

  @override
  State<DateSeperator> createState() => _DateSeperatorState();
}


class _DateSeperatorState extends State<DateSeperator> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 22.0,
          width: 120,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 1.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainer,
            borderRadius: BorderRadius.circular(22.0),
            border: Border.all(
              color: Theme.of(context).colorScheme.outline,
              width: 1.0,
            ),
          ),
          child: Text(
            '${widget.date.day}.${widget.date.month}.${widget.date.year}',
            style: Theme.of(context).textTheme.bodyMedium,
            overflow: TextOverflow.ellipsis,
          )
        )
      ]
    );
  }
}