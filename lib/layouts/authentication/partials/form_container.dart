
import 'package:flutter/material.dart';


class FormContainer extends StatelessWidget {
  final Widget child;

  const FormContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(57.0),
        child: IntrinsicHeight(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(29.0),
              child: child,
            )
          )
        )
      )
    );
  }
}