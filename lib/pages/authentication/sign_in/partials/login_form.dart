
import 'package:flutter/material.dart';

import 'package:mocha_hive/components/form_elements/text_input.dart';
import 'package:mocha_hive/components/form_elements/primary_button.dart';
import 'package:mocha_hive/components/form_elements/secondary_button.dart';
import 'package:mocha_hive/pages/authentication/sign_in/partials/button_seperator.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextInput(
          label: 'Email',
          hint: 'Email ...',
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
        SecondaryButton(
          label: 'Mit Google fortfahren',
          iconPath: 'assets/icons/google_icon.svg',
        ),
      ]
    );
  }
}