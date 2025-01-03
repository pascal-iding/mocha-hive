
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/form_elements/primary_button.dart';
import 'package:mocha_hive/components/form_elements/text_input.dart';


class ProfileForm extends StatefulWidget {
  final Function onContinueButtonPressed;

  const ProfileForm({super.key, required this.onContinueButtonPressed});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dein Profil 🤖',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 9),
        TextInput(
          label: 'Nutzername',
          hint: 'some_name_123',
        ),
        const SizedBox(height: 9),
        TextInput(
          label: 'Vorname',
          hint: 'Jerry',
          additionalInfo: ['Dein Vorname wird nur deinen Freunden angezeigt'],
        ),
        const SizedBox(height: 9),
        PrimaryButton(
          label: 'Weiter',
          onPressed: widget.onContinueButtonPressed,
        ),
      ]
    );
  }
}