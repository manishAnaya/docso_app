import 'package:flutter/material.dart';
import '../../../../constants/app_style.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppStyle.mediumPadding,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search doctor, medicine...',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.document_scanner_outlined),
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
        ),
      ),
    );
  }
}
