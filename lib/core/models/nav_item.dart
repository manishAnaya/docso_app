import 'package:flutter/material.dart';

class NavItem {
  final int id;
  final String label;
  final IconData icon;
  final String route;

  NavItem({
    required this.id,
    required this.label,
    required this.icon,
    required this.route,
  });
}
