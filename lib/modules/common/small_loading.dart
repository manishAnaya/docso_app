import 'package:flutter/material.dart';

class SmallLoading extends StatelessWidget {
  final Color? color;
  const SmallLoading({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 25,
      child: CircularProgressIndicator(
        strokeWidth: 2.5,
        color: color,
      ),
    );
  }
}
