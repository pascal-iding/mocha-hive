
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
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: FilledButton(
        onPressed: () {}, 
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          widget.label,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      )
    );
  }
}