
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SecondaryButton extends StatefulWidget {
  final String iconPath;
  final Color? borderColor;
  final Function onPressed;

  const SecondaryButton({
    super.key,
    required this.iconPath,
    this.borderColor,
    required this.onPressed,
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
        onPressed: () => widget.onPressed(), 
        style: FilledButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
          padding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          side: BorderSide(
            color: widget.borderColor != null
              ? widget.borderColor!
              : Theme.of(context).colorScheme.outline,
            width: 1,
          ),
        ),
        child: SvgPicture.asset(
          widget.iconPath,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
          colorFilter: ColorFilter.mode(
            widget.borderColor != null
              ? widget.borderColor!
              : Theme.of(context).colorScheme.onSurface,
            BlendMode.srcIn,
          ),
        ),
      )
    );
  }
}