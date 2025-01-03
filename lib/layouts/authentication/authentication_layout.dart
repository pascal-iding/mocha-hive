
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/authentication/background_image/background_image.dart';
import 'package:mocha_hive/layouts/authentication/blur_effect/blur_effect.dart';
import 'package:mocha_hive/layouts/authentication/form_container/form_container.dart';


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
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BackgroundImage(),
          const BlurEffect(),
          FormContainer(child: widget.child),
        ]
      )
    );
  }
}
