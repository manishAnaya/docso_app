import 'package:flutter/material.dart';

extension IntExtension on int {
  SizedBox get h => SizedBox(height: toDouble());
  SizedBox get w => SizedBox(width: toDouble());
}

extension DoubleExtension on double {
  SizedBox get h => SizedBox(height: toDouble());
  SizedBox get w => SizedBox(width: toDouble());
}

extension HexColor on String {
  Color toColor() {
    String hex = replaceFirst('#', '');
    if (hex.length == 6) {
      hex = '0xFF$hex';
    }
    return Color(int.parse(hex));
  }
}
