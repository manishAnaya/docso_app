import 'package:flutter/material.dart';

class ProfileTile {
  final String label;
  final IconData icon;
  final void Function() onTap;

  ProfileTile({
    required this.label,
    required this.icon,
    required this.onTap,
  });
}
