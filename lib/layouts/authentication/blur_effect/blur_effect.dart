
import 'dart:ui';
import 'package:flutter/material.dart';


class BlurEffect extends StatelessWidget {
  const BlurEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        color: Colors.black.withOpacity(0),
      ),
    );
  }
}