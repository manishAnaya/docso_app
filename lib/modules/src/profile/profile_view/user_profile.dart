import 'package:docso_app/core/utils/app_extensions.dart';
import 'package:flutter/material.dart';
import 'profile_cards.dart';
import 'profile_data.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: Column(
        children: [
          ProfileData(),
          16.h,
          ProfileCards(),
        ],
      ),
    );
  }
}
