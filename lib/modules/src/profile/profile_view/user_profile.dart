import 'package:flutter/material.dart';
import 'profile_cards.dart';
import 'profile_data.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile")),
      body: const Column(
        children: [
          ProfileData(),
          ProfileCards(),
        ],
      ),
    );
  }
}
