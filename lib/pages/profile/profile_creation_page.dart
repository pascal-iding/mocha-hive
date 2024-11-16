
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/authentication/authentication_layout.dart';
import 'package:mocha_hive/pages/profile/partials/profile_form.dart';


class ProfileCreationPage extends StatefulWidget {
  const ProfileCreationPage({super.key});

  @override
  State<ProfileCreationPage> createState() => _ProfileCreationPageState();
}

class _ProfileCreationPageState extends State<ProfileCreationPage> {
  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      child: ProfileForm(),
    );
  }
}