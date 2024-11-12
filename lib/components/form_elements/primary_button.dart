
import 'package:flutter/material.dart';


class PrimaryButton extends StatefulWidget {
  final String label;

  const PrimaryButton({
    super.key, 
    required this.label
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.tertiary,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
            padding: const EdgeInsets.all(0),
            side: const BorderSide(
              color: Colors.transparent, 
              width: 1
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: Text(
            widget.label,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        )
      )
    );
  }
}