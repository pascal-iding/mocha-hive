
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SecondaryButton extends StatefulWidget {
  final String iconPath;

  const SecondaryButton({
    super.key,
    required this.iconPath,
  });

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 45,
      child: FilledButton(
        onPressed: () {}, 
        style: FilledButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
        child: SvgPicture.asset(
          widget.iconPath,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      )
    );
  }
}