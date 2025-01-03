
import 'package:flutter/material.dart';

import 'package:mocha_hive/layouts/authentication/authentication_layout.dart';
import 'package:mocha_hive/pages/profile/profile_form/profile_form.dart';
import 'package:mocha_hive/pages/profile/profile_picture_form/profile_picture_form.dart';
import 'package:mocha_hive/constants/profile_creation_state.dart';


class ProfileCreationPage extends StatefulWidget {
  const ProfileCreationPage({super.key});

  @override
  State<ProfileCreationPage> createState() => _ProfileCreationPageState();
}

class _ProfileCreationPageState extends State<ProfileCreationPage> {
  ProfileCreationState _state = ProfileCreationState.basicInfo;

  void _onContinueButtonPressed() {
    if (_state == ProfileCreationState.basicInfo) {
      setState(() {
        _state = ProfileCreationState.profilePicture;
      });
    } else {

    }
  }

  @override
  Widget build(BuildContext context) {
    return AuthenticationLayout(
      child: _state == ProfileCreationState.basicInfo
        ? ProfileForm(
            onContinueButtonPressed: _onContinueButtonPressed
          )
        : ProfilePictureForm(
            onContinueButtonPressed: _onContinueButtonPressed
          ),
    );
  }
}