
import 'package:flutter/material.dart';


class AuthenticationLayout extends StatefulWidget {
  final Widget child;

  const AuthenticationLayout({super.key, required this.child});

  @override
  State<AuthenticationLayout> createState() => _AuthenticationLayoutState();
}


class _AuthenticationLayoutState extends State<AuthenticationLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(57.0),
          child: IntrinsicHeight(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHigh,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(29.0),
                child: widget.child,
              )
            )
          )
        )
      ),
    );
  }
}
