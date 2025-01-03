import 'package:flutter/material.dart';

class DynamicFloatingActionButton extends StatefulWidget {
  final Function onPressed;

  const DynamicFloatingActionButton({required this.onPressed, super.key});

  @override
  State<DynamicFloatingActionButton> createState() => _DynamicFloatingActionButtonState();
}

class _DynamicFloatingActionButtonState extends State<DynamicFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.0,
      height: 70.0,
      child: FloatingActionButton(
        onPressed: () {
          widget.onPressed();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}