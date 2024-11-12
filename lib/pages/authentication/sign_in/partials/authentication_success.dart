
import 'package:flutter/material.dart';

class AuthenticationSuccess extends StatelessWidget {
  const AuthenticationSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Bitte überprüfe deine E-Mails, um den Anmeldeprozess abzuschließen.',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium,
      )
    );
  }
}