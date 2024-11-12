
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SecondaryButton extends StatefulWidget {
  final String label;
  final String? iconPath;

  const SecondaryButton({
    super.key,
    this.iconPath,
    required this.label
  });

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: OutlinedButton(
        onPressed: () {}, 
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 15
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.iconPath != null)
              SvgPicture.asset(
                widget.iconPath!,
                width: 24,
                height: 24,
              ),
            const SizedBox(width: 9),
            Text(
              widget.label,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ]
        )
      )
    );
  }
}