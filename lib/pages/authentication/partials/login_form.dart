
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/form_elements/text_input.dart';
import 'package:mocha_hive/components/form_elements/primary_button.dart';
import 'package:mocha_hive/components/form_elements/secondary_button.dart';
import 'package:mocha_hive/pages/authentication/partials/button_seperator.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Willkommen 👋',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 9),
        TextInput(
          label: 'Email',
          hint: 'deine@email.com',
          isEmail: true,
          additionalInfo: [
            'Mit der Anmeldung stimmst du unseren AGBs zu.',
          ],
        ),
        const SizedBox(height: 9),
        PrimaryButton(label: 'Anmelden'),
        const SizedBox(height: 9),
        ButtonSeperator(),
        const SizedBox(height: 9),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SecondaryButton(
              iconPath: 'assets/icons/google_icon.svg',
            ),
            const SizedBox(width: 9),
            SecondaryButton(
              iconPath: 'assets/icons/discord_icon.svg',
            ),
          ]
        )
      ]
    );
  }
}