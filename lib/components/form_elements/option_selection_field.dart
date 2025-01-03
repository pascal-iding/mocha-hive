
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/form_elements/secondary_button.dart';


class OptionSelectionField extends StatefulWidget {
  final Function(int) onIndexChanged;

  const OptionSelectionField({
    super.key,
    required this.onIndexChanged,
  });

  @override
  State<OptionSelectionField> createState() => _OptionSelectionFieldState();
}

class _OptionSelectionFieldState extends State<OptionSelectionField> {
  int _selectedIndex = 0;

  void _onIndexChanged(int index) {
    setState(() => _selectedIndex = index);
    widget.onIndexChanged(index);
  }

  String _getText() {
    switch (_selectedIndex) {
      case 0:
        return 'Von mir markierte Hangouts';
      case 1:
        return 'Von mir erstellte Hangouts';
      default:
        throw Exception('Invalid index');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SecondaryButton(
          iconPath: 'assets/icons/heart_icon.svg',
          borderColor: _selectedIndex == 0
            ? Theme.of(context).colorScheme.secondary
            : null,
          onPressed: () => _onIndexChanged(0),
        ),
        const SizedBox(width: 10),
        SecondaryButton(
          iconPath: 'assets/icons/eye_icon.svg',
          borderColor: _selectedIndex == 1
            ? Theme.of(context).colorScheme.secondary
            : null,
          onPressed: () => _onIndexChanged(1),
        ),
        const SizedBox(width: 10),
        Text(
          _getText(),
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ]
    );
  }
}