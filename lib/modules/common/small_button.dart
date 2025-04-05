import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  const SmallButton({super.key, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: FilledButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
