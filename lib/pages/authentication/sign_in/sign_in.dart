
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/authentication_layout.dart';
import 'package:mocha_hive/pages/authentication/sign_in/partials/login_form.dart';
import 'package:mocha_hive/constants/authentication_state.dart';
import 'package:mocha_hive/pages/authentication/sign_in/partials/authentication_success.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}


class _SignInState extends State<SignIn> {
  AuthenticationState _state = AuthenticationState.auth;

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      child: _state == AuthenticationState.auth
        ? const LoginForm()
        : const AuthenticationSuccess(),
    );
  }
}
