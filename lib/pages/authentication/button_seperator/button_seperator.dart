
import 'package:flutter/material.dart';


class ButtonSeperator extends StatelessWidget {
  const ButtonSeperator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            height: 1,
          )
        ),
        const SizedBox(width: 9),
        Text(
          'Oder',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(width: 9),
        Expanded(
          child: Divider(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            height: 1,
          )
        ),
      ],
    );
  }
}