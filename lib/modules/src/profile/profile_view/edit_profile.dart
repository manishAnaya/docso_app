import 'package:docso_app/modules/src/profile/profile_view/profile_avtar.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Profile')),
      body: const Column(
        children: [
          ProfileAvatar(),
        ],
      ),
    );
  }
}
