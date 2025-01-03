
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/form_elements/image_picker.dart';
import 'package:mocha_hive/components/form_elements/primary_button.dart';


class ProfilePictureForm extends StatefulWidget {
  final Function onContinueButtonPressed;

  const ProfilePictureForm({super.key, required this.onContinueButtonPressed});

  @override
  State<ProfilePictureForm> createState() => _ProfilePictureFormState();
}

class _ProfilePictureFormState extends State<ProfilePictureForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dein Profilbild 📷',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 9),
        const ImagePicker(),
        const SizedBox(height: 9),
        Text(
          '• Dein Profilbild wird nur deinen Freunden angezeigt.',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 9),
        PrimaryButton(
          label: 'Fertig', 
          onPressed: widget.onContinueButtonPressed
        ),
      ]
    );
  }
}